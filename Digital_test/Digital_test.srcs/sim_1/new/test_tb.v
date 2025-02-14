`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 15:15:39
// Design Name: 
// Module Name: test_tb
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


module test_tb();

reg rst, clk, din;
wire qout;

digital_test    uut(
    .rst(rst),
    .clk(clk),
    .din(din),
    .qout(qout)
    );
    
always #4   clk <= ~clk;

initial begin
    rst <= 1'b0;
    din <= 1'b1;
    clk <= 1'b0;
    #8;
    rst <= 1'b1;
    #8;
    din <= 1'b0;
    #8;
    din <= 1'b1;
    #8;
    rst <= 1'b0;
    #8;
    rst <= 1'b1;
end
endmodule
