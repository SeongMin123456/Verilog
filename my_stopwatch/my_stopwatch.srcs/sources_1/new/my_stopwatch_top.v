`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 12:16:29
// Design Name: 
// Module Name: my_stopwatch_top
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

module my_stopwatch_top(
    input CLK,
    input BTN0,
    input BTN1,
    output CA,
    output [6:0] AN
    );

parameter TICK_FREQ = 1_250_000;  // 10ms counter
wire tick;
wire [3:0] digit_10, digit_1;

my_stopwatch uut1(
    .CLK(CLK),
    .BTN0(BTN0),
    .BTN1(BTN1),
    .TICK(tick),
    .DIGIT_10(digit_10),
    .DIGIT_1(digit_1)
    );

disp_mod uut2(
	.TICK(tick),
    .DIGIT_1(digit_1),
    .DIGIT_10(digit_10),
	.CA(CA),
    .AN(AN)
    );

seg_tick #(.TICK_FREQ(TICK_FREQ)) uut3(
    .CLK(CLK),
    .TICK(tick)
    );

endmodule
