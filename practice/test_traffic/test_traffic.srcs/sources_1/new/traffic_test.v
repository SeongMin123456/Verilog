`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/06 19:23:36
// Design Name: 
// Module Name: traffic_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module traffic_test(
    input crossing,
    input CLK,
    input RST,
    output reg WALK,
    output reg WAITING,
    output reg RED,
    output reg YELLOW,
    output reg GREEN,
    output CA,
    output reg [6:0] AN
    );

parameter CLK_FREQ = 125_000_000;   // 1 sec
parameter TRANSITION = 12_500_00;   // 0.01 s

reg [1:0] curr_state, next_state;
reg [26:0] sec_count;               // 1 sec counter
reg [3:0] red_count, green_count;   // 8 sec counter
wire [1:0] yellow_count;             // 2 sec counter
reg count_done;                     // state change
reg [26:0] ssec_count;              // 0.1 sec counter
reg [8:0] cross_count;              // 120 or 200
reg enable;                         // CA changer
reg [20:0] tick_count;              // 0.01 sec CA change count
reg [3:0] digit;                    // 7segment display

always @(posedge CLK) begin
    if(RST) begin
        tick_count <= 21'd0;
        enable <= 1'b0;
     end else begin
        if(tick_count == (TRANSITION - 1))  begin
            enable <= ~enable;
            tick_count <= 21'd0;
         end else   tick_count <= tick_count + 1;
     end
end

assign CA = enable;
assign yellow_count = cross_count/100;

// CA == 1, display
always @(posedge CLK) begin
    if(enable == 1'b1) begin
        if(curr_state == GREEN_LED)     digit <= 4'd1;
        else                            digit <= 4'd0;
    end else begin
        if(curr_state == GREEN_LED) begin
            digit <= 8 - green_count;
        end
        else if(curr_state == RED_LED) begin
            digit <= 8 - red_count;
        end    
        else if(curr_state == CROSS) begin
            //yellow_count <= cross_count / 100;
            if(red_count <= 2)      digit <= 4 - yellow_count;
            else if(red_count > 2)  digit <= 1 - yellow_count;
        end
        else begin
            digit <= 4'd0;
            //yellow_count <= 0;
        end
    end
end

// debouncing
reg cross_ff1, cross_ff2;
wire cross_pressed;

// Button debouncing
always @(posedge CLK) begin
    cross_ff1 <= crossing;
    cross_ff2 <= cross_ff1;
end

// riging edge detect
assign cross_pressed = cross_ff1 & ~cross_ff2;

localparam [1:0] YELLOW_LED = 2'b00,
                 RED_LED = 2'b01,
                 CROSS = 2'b10,
                 GREEN_LED = 2'b11;

always @(posedge CLK) begin
    if(RST)     curr_state <= YELLOW_LED;
    else        curr_state <= next_state;
end // FSM

//  main logic
always @(posedge CLK) begin
    case(curr_state)
        YELLOW_LED : begin
            if(sec_count == (CLK_FREQ-1)) begin
                sec_count <= 0;
                count_done <= 1'b1;
            end else begin
                sec_count <= sec_count + 1;
                red_count <= 0;
                green_count <= 0;
                YELLOW <= 1'b1;
                RED <= 1'b0;
                GREEN <= 1'b0;
                count_done <= 1'b0;
                WAITING <= 1'b1;
                WALK <= 1'b0;
            end
        end
        RED_LED : begin
            if(sec_count == (CLK_FREQ-1)) begin
                sec_count <= 0;
                red_count <= red_count + 1;
            end else begin
                sec_count <= sec_count + 1;
                YELLOW <= 1'b0;
                RED <= 1'b1;
                GREEN <= 1'b0;
                count_done <= 1'b0;
                WAITING <= 1'b1;
                WALK <= 1'b0;
                if(red_count == 4'd8) begin
                    red_count <= 0;
                    count_done <= 1'b1;
                end
            end
        end
        CROSS : begin
            sec_count <= 0;
            if(red_count <= 2) begin
                if(ssec_count == (TRANSITION -1)) begin
                    ssec_count <= 0;
                    cross_count <= cross_count + 1;
                    if(cross_count == 400) begin
                        count_done <= 1'b1;
                        cross_count <= 0;
                        red_count <= 0;
                    end
                end else begin
                    ssec_count <= ssec_count + 1;
                    count_done <= 1'b0;
                end
            end else if(red_count > 2) begin
                if(ssec_count == (TRANSITION -1)) begin
                    ssec_count <= 0;
                    cross_count <= cross_count + 1;
                    if(cross_count == 100) begin
                        count_done <= 1'b1;
                        cross_count <= 0;
                        red_count <= 0;
                    end
                end else begin
                    ssec_count <= ssec_count + 1;
                    count_done <= 1'b0;
                end
            end
            else begin
                ssec_count <= 0;
                cross_count <= 0;
            end
        end
        GREEN_LED : begin
            if(sec_count == (CLK_FREQ-1)) begin
                sec_count <= 0;
                green_count <= green_count + 1;
            end else begin
                sec_count <= sec_count + 1;
                YELLOW <= 1'b0;
                RED <= 1'b0;
                GREEN <= 1'b1;
                count_done <= 1'b0;
                WAITING <= 1'b0;
                WALK <= 1'b1;
                if(green_count == 4'd8) begin
                    green_count <= 0;
                    count_done <= 1'b1;
                end
            end
        end
    endcase
end


always @(curr_state, count_done, cross_pressed) begin
    case(curr_state)
        YELLOW_LED : begin
            if(count_done)             next_state <= RED_LED;
            else                       next_state <= YELLOW_LED;
        end
        RED_LED : begin
            if(count_done)             next_state <= GREEN_LED;
            else if(cross_pressed)     next_state <= CROSS;
            else                       next_state <= RED_LED;
        end
        CROSS : begin
            if(count_done)             next_state <= GREEN_LED;
            else                       next_state <= CROSS;
        end
        GREEN_LED : begin
            if(count_done)             next_state <= YELLOW_LED;
            else                       next_state <= GREEN_LED;
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

initial begin
    enable <= 1'b0;
end

endmodule