`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/04 18:56:34
// Design Name: 
// Module Name: practice_stopwatch_tb
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

module practice_stopwatch_tb();

reg clk;
reg clear;
reg btn;
wire CA;
wire [6:0] AN;

practice_stopwatch #(.CLK_FREQ(10), .tick(5)) uut(
    .CLK(clk),
    .CLEAR(clear),
    .BTN(btn),
    .CA(CA),
    .AN(AN)
);

always #5 clk <= ~clk;

initial begin
    clk = 1'b0;
    btn = 1'b0;
    clear = 1'b0;
    #5 btn = 1'b1;
    #15 btn = 1'b0;
    #35 clear = 1'b1;       // document == 3 && storage == 1
    #5  clear = 1'b0;
    #200 btn = 1'b1;
    #205 btn = 1'b0;
end

endmodule
