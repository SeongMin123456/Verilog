`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 09:25:00
// Design Name: 
// Module Name: seg_tick_tb
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

module seg_tick_tb();

reg rst, clk, btn0;
wire [6:0] AN;
wire CA;

test_stopwatch #(.TICK_FREQ(2), .CLK_FREQ(5)) uut(
    .RST(rst),
    .CLK(clk),
    .BTN0(btn0),
    .CA(CA),
    .AN(AN)
    );

always #5 clk <= ~clk;

initial begin
    rst = 1'b0;
    clk = 1'b0;
    btn0 = 1'b0;
    #10;
    btn0 = 1'b1;
    #10;
    btn0 = 1'b0;
    #80;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #40;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #40;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #40;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #40;
    btn0 = 1'b1;
    #10;
    btn0 = 1'b0;
    #10;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    rst = 1'b1;
    #10;
    rst = 1'b0;
    #10;
    rst = 1'b1;
    #10;
    rst = 1'b0;
end


endmodule
