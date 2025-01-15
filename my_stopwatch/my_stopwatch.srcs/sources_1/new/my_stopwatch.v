`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 11:15:40
// Design Name: 
// Module Name: my_stopwatch
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

module my_stopwatch(
    input CLK,
    input BTN0,
    input BTN1,
    input TICK,
    output [3:0] DIGIT_10,
    output [3:0] DIGIT_1
    );

reg enable = 1'b0;          // initial value
reg [6:0] tick_cnt = 7'b0;  // 10ms * 100 = 1 sec counter
reg tick_sec = 1'b0;        // 1 sec trigger
reg [5:0] cnt = 6'b0;       // 1 sec count
wire clear;                  // sec clear
reg [8:0] cnt_clr;

assign DIGIT_10 = cnt / 10;
assign DIGIT_1 = cnt % 10;

reg BTN0_ff1, BTN0_ff2, BTN1_ff1, BTN1_ff2;
wire BTN0_pressed, BTN1_pressed;

always @(posedge CLK) begin
    BTN0_ff1 <= BTN0;
    BTN0_ff2 <= BTN0_ff1;
    BTN1_ff1 <= BTN1;
    BTN1_ff2 <= BTN1_ff1;
end

assign BTN0_pressed = BTN0_ff1 && ~BTN0_ff2;
assign BTN1_pressed = BTN1_ff1 && ~BTN1_ff2;

// on enable -> time go
always @(posedge CLK) begin
    if(BTN0_pressed)    enable <= ~enable;
end

always @(posedge CLK) begin
    if(enable && TICK) begin
        if(tick_cnt == 99) begin
            tick_cnt <= 7'b0;
            tick_sec <= 1'b1;
        end else begin
            tick_cnt <= tick_cnt + 1;
            tick_sec <=1'b0;
        end
    end else tick_sec <=1'b0;
end

// sec counter
always @(posedge CLK) begin
    if(clear)           cnt <= 6'b0;
    else if(tick_sec) begin
        if(cnt == 6'd59)    cnt <= 6'd0;
        else                cnt <= cnt + 1;
    end
end

always @(posedge CLK) begin
    if(BTN1 && TICK)    cnt_clr <= cnt_clr + 1;
    else if(!BTN1)      cnt_clr <= 9'd0;
end
assign clear = (cnt_clr == 9'd299);

endmodule
