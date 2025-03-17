`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 09:24:27
// Design Name: 
// Module Name: CarryOut
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


module CarryOut(
    input [7:0] a,
    input [7:0] b,
    output [7:0] y,
    output cro
    );

wire [8:0] ys =  a + b;
assign cro = ys[8];
assign y = ys[7:0];


endmodule
