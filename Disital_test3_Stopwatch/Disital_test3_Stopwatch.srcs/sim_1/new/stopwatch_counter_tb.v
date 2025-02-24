`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 09:10:37
// Design Name: 
// Module Name: stopwatch_counter_tb
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


module stopwatch_counter_tb();

reg clk;
wire [6:0] Usec_cnt;
wire [5:0] sec_cnt, hour_cnt;


Stopwatch_cnt #(.CLK_FREQ(500)) uut1(
    .CLK(clk),
    .Usec_cnt(Usec_cnt),
    .sec_cnt(sec_cnt),
    .hour_cnt(hour_cnt)
    );

wire [3:0] Usec_H, Usec_L, sec_L, hour_L;
wire [2:0] sec_H, hour_H;

Stopwatch_10cnt #(.CLK_FREQ(500)) uut2(
    .CLK(clk),
    .Usec_H(Usec_H),
    .Usec_L(Usec_L),
    .sec_H(sec_H),
    .sec_L(sec_L),
    .hour_H(hour_H),
    .hour_L(hour_L)
    );

always #5 clk = ~clk;

initial begin
    clk <= 1'b0;
end


endmodule
