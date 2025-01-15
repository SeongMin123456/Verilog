`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 12:37:04
// Design Name: 
// Module Name: my_stopwatch_tb
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

module my_stopwatch_tb();

reg clk, btn0, btn1;
wire CA;
wire [6:0] AN;

my_stopwatch_top #(.TICK_FREQ(5)) uut(
    .CLK(clk),
    .BTN0(btn0),
    .BTN1(btn1),
    .CA(CA),
    .AN(AN)
    );

parameter CLK_PD = 4;

initial begin
    clk <= 1'b0;
end

always #(CLK_PD/2) clk <= ~clk;

always @(posedge clk) begin
    btn0 <= 1'b0;
    btn1 <= 1'b0;
    #(CLK_PD*50);
    btn0 <= 1'b1;
    #(CLK_PD);
    btn0 <= 1'b0;
    #(CLK_PD*400);
    btn0 <= 1'b1;
    #(CLK_PD);
    btn0 <= 1'b0;
    #(CLK_PD*200);
    btn1 <= 1'b1;
    #(CLK_PD*650);
    btn1 <= 1'b0;
end

endmodule
