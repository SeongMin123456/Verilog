`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 10:13:22
// Design Name: 
// Module Name: test_stopwatch
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
module test_stopwatch(
    input RST,
    input CLK,
    input BTN0,
    output CA,
    output [6:0] AN
    );

parameter CLK_FREQ = 125_000_000;   // 1 sec
parameter TICK_FREQ = CLK_FREQ/100; // 10 ms

// debouncing_btn0
reg BTN0_ff1, BTN0_ff2;
wire BTN0_pressed;
always @(posedge CLK) begin
    BTN0_ff1 <= BTN0;
    BTN0_ff2 <= BTN0_ff1;
end
assign BTN0_pressed = BTN0_ff1 && ~BTN0_ff2;

// debouncing_rst
reg RST_ff1, RST_ff2;
wire store, pop;
always @(posedge CLK) begin
    RST_ff1 <= RST;
    RST_ff2 <= RST_ff1;
end
assign store = RST_ff1 & ~RST_ff2; // rising edge detect
assign pop = ~RST_ff1 & RST_ff2; // falling edge detect

reg [26:0] cnt = 27'd0;         // 1 sec counter
reg [5:0] seccount = 6'd0;      // 1 sec trigger

reg [26:0] clear_cnt1 = 27'd0;      // 1 sec counter
reg [1:0] clear_cnt2 = 2'd0;        // reset couter
//reg clear_trig = 1'b0;             // clear_triger

reg [5:0] Tdocument [0:3];         // time document
reg [2:0] stock = 3'd0;            // store num
reg [3:0] docum_cnt = 3'd0;        // document storage number

// stop & start Logic
reg state = 1'b0;      // 0 : stop, 1: start
always @(posedge BTN0_pressed) state <= ~state;

// clock count logic
always @(posedge CLK) begin
    case(state)
    1: begin
        clear_cnt1 <= 27'd0;
        clear_cnt2 <= 2'd0;
        if(cnt == (CLK_FREQ-1)) begin
            cnt <= 27'd0;
            seccount <= seccount + 1;
        end else begin
            cnt <= cnt + 1;
            if(seccount == 60)  seccount <= 6'd0;
        end
     end
     0: begin
        cnt <= cnt;
        seccount <= seccount;
        if(RST) begin
            if(clear_cnt1 == (CLK_FREQ-1)) begin
                clear_cnt1 <= 27'd0;
                clear_cnt2 <= clear_cnt2 + 1;
             end else begin
                clear_cnt1 <= clear_cnt1 + 1;
                if(clear_cnt2 == 2) begin
                    cnt <= 27'd0;
                    seccount <= 6'd0;
                    clear_cnt2 <= 2'd0;
                 end
             end
         end else begin
            clear_cnt1 <= 27'd0;
            clear_cnt2 <= 2'd0;
         end
     end
     endcase
end

// RST logic
integer i = 0;         // array initiation
always @(posedge CLK) begin
    case(state)
    1: begin
        docum_cnt <= 0;
        if(store)   begin
            Tdocument[stock] <= seccount;
            if(stock == 4)  begin
                Tdocument[0] <= Tdocument[1];
                Tdocument[1] <= Tdocument[2];
                Tdocument[2] <= Tdocument[3];
                Tdocument[3] <= seccount;
             end else   stock <= stock + 1;
        end else begin
            stock <= stock;
        end
    end
    0: begin
        if(!seccount) begin
            docum_cnt <= 3'd0;
            stock <= 3'd0;
            for(i=0; i<4; i=i+1) begin
                Tdocument [i] <= 0;
            end
        end else begin
            if(pop) begin
                if(!Tdocument[docum_cnt])   docum_cnt <= 1;
                else                        docum_cnt <= docum_cnt + 1;
            end else begin
                stock <= stock;
                docum_cnt <= docum_cnt;
            end
        end
     end
     endcase
end   

/*        if(pop) begin
            if(!seccount)                   docum_cnt <= 0;
            else if(!Tdocument[docum_cnt])  docum_cnt <= 1;
            else                            docum_cnt <= docum_cnt + 1;
        end else begin
            if(!seccount) begin
                docum_cnt <= 3'd0;
                stock <= 3'd0;
                for(i=0; i<4; i=i+1) begin
                Tdocument [i] <= 0;
                end
            end else docum_cnt <= docum_cnt;
        end
    end
    endcase
end*/

reg [3:0] DIGIT;                        // 7 segment number
wire [3:0] digit_10 = seccount / 10;    // 7 segment 10
wire [3:0] digit_1 = seccount % 10;     // 7 segment 1
reg [3:0] store_10 = 4'b0;              // 7 segment 10 in stop state
reg [3:0] store_1 = 4'b0;               // 7 segment 1 in stop state

// display logic
always @(posedge CLK) begin
    case(state)
    1: begin
        if(CA == 1)     DIGIT <= digit_10;
        else            DIGIT <= digit_1;
    end
    0: begin
        if(!docum_cnt) begin
            if(CA == 1) DIGIT <= digit_10;
            else        DIGIT <= digit_1;
        end else begin
            store_10 <= Tdocument[docum_cnt-1]/10;
            store_1 <= Tdocument[docum_cnt-1]%10;
            if(CA == 1) DIGIT <= store_10;
            else        DIGIT <= store_1;
        end
    end
    endcase
end

test_SegDisp mdl1(
    .DIGIT(DIGIT),
    .AN(AN)
    );

seg_tick #(.TICK_FREQ(TICK_FREQ)) mdl2(
    .CLK(CLK),
    .CA(CA)
    );

endmodule