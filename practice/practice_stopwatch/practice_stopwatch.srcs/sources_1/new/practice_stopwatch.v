module practice_stopwatch(
    input CLK,
    input CLEAR,
    input BTN,
    output reg CA,
    output reg [6:0] AN
);
parameter CLK_FREQ = 125_000_000;   // 1 sec trigger
parameter tick = 1_250_000;         // 10ms trigger

// Internal registers
reg [26:0] count;                   // 1sec counter
reg [26:0] clear_cnt;               // display clear counter
reg [1:0] dis_clear;                // 2 sec counter for clear
reg clear_done;                     // display clear trigger
reg mode;                           // BTN1 = 1 : start / BTN1 = 0 : stop
reg [5:0] seconds;                  // 0-59 seconds
reg [20:0] ticker;                  // display refresh counter
reg [3:0] digit;                    // current digit to display
reg [1:0] curr_state, next_state;   //  FSM state
reg [5:0] document [3:0];           // stored time data = 6bit * 4 array
reg storage;                        // display set to storage
reg [2:0] array;                    // array store state
reg [1:0] display;                  // display from document[0]

localparam [1:0] standby = 2'b00,   // mode = 0, storage = 0
                 start = 2'b01,     // mode = 1
                 pause = 2'b10,     // mode = 0, storage = 1
                 store = 2'b11;     // clear_done = 1
                 
// Debounce registers
reg btn1_ff1, btn1_ff2, btn2_ff1, btn2_ff2;
wire btn_pressed, clear_pressed, clear_falling;

// Button debouncing
always @(posedge CLK) begin
    btn1_ff1 <= BTN;
    btn1_ff2 <= btn1_ff1;
    btn2_ff1 <= CLEAR;
    btn2_ff2 <= btn2_ff1;
end

// rising edge detect
assign btn_pressed = btn1_ff1 & ~btn1_ff2;
assign clear_pressed = btn2_ff1 & ~btn2_ff2;
// clear falling edge detect
assign clear_falling = ~btn2_ff1 & btn2_ff2;


// time capture and display document
always @(posedge CLK) begin
    case(curr_state)
        standby : begin
            storage <= 1'b0;
            array <= 3'b0;
            display <= 2'b0;
        end
        start : begin
            if(clear_pressed) begin
                if(array == 0) begin
                    document[array] <= seconds;
                    array <= array + 1;
                    storage <= 1'b1;
                end else if(array > 3) begin
                    document[0] <= document[1];
                    document[1] <= document[2];
                    document[2] <= document[3];
                    document[3] <= seconds;
                end else begin
                    document[array] <= seconds;
                    array <= array + 1;
                end
             end
          end
          store : begin
            if(clear_falling) begin
                display <= display + 1;
                if(display > 2'd3)   display <= 2'd0;
             end
             else display <= display;
          end
          pause : display <= 2'd0;
      endcase
end


// FSM logic
always @(posedge CLK) begin
    if(clear_done)      curr_state <= standby;
    else                curr_state <= next_state;
end
always @(curr_state, clear_pressed, clear_falling, btn_pressed, mode, storage, clear_done) begin
    case(curr_state)
        standby : begin
            if(btn_pressed && !mode)    next_state <= start;
            else                        next_state <= standby;
        end
        start : begin
            if(btn_pressed)         next_state <= pause;
            else if(clear_pressed)  next_state <= start;
            else                    next_state <= start;
        end
        pause : begin
            if(btn_pressed)                     next_state <= start;
            else if(storage && clear_falling)   next_state <= store;
            else if(clear_done)                 next_state <= standby;
            else                                next_state <= pause;
        end
        store : begin
            if(btn_pressed)         next_state <= pause;
            else if(clear_pressed)  next_state <= store;
            else                    next_state <= store;
        end
     endcase
end

// Mode control
always @(posedge CLK) begin
    if (btn_pressed)        mode <= ~mode;
    else if (clear_done)    mode <= 1'b0;
end 

// Counter and mode switching logic
always @(posedge CLK) begin
    case(curr_state)
        standby: begin
            seconds <= 6'd0;
            count <= 27'd0;
            clear_cnt <= 27'd0;
            dis_clear <= 2'd0;
            clear_done <= 1'b0;
        end
        start: begin
            if(count == CLK_FREQ - 1) begin
                count <= 27'd0;
                if(seconds == 6'd59)    seconds <= 6'd0;
                else                    seconds <= seconds + 1;
            end
            else count <= count + 1;
        end
        pause, store: begin
            if(btn2_ff2) begin
                clear_cnt <= clear_cnt + 1;
                if(clear_cnt == CLK_FREQ - 1) begin
                    clear_cnt <= 27'd0;
                    dis_clear <= dis_clear + 1;
                    if(dis_clear == 2)  clear_done <= 1'b1;
                end
            end
            else begin
                clear_cnt <= 27'd0;
                dis_clear <= 2'd0;
                clear_done <= 1'b0;
            end
        end
    endcase
end

// Display refresh control
always @(posedge CLK) begin
    ticker <= ticker + 1;
    if (ticker == tick - 1) begin
        CA <= ~CA;
        ticker <= 21'd0;
    end
end

// Digit selection logic
always @(posedge CLK) begin
    case(curr_state)
        store: begin
            if(CA == 1'b0)     digit <= document[display] % 10;
            else               digit <= document[display] / 10;
        end
        default: begin
            if(CA == 1'b0)     digit <= seconds % 10;
            else               digit <= seconds / 10;
        end
    endcase
end

// 7-segment decoder
always @(digit) begin
    case(digit)
        4'h0: AN = 7'b0111111;  // 0
        4'h1: AN = 7'b0000110;  // 1
        4'h2: AN = 7'b1011011;  // 2
        4'h3: AN = 7'b1001111;  // 3
        4'h4: AN = 7'b1100110;  // 4
        4'h5: AN = 7'b1101101;  // 5
        4'h6: AN = 7'b1111101;  // 6
        4'h7: AN = 7'b0000111;  // 7
        4'h8: AN = 7'b1111111;  // 8
        4'h9: AN = 7'b1101111;  // 9
        default: AN = 7'b0000000;
    endcase
end

// Initial values
initial begin
    mode = 1'b0;
    count = 27'd0;
    seconds = 6'd0;
    ticker = 21'd0;
    CA = 1'b0;
end

endmodule