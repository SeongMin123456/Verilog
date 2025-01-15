`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 11:51:04
// Design Name: 
// Module Name: my_bitadder
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


module my_bitadder(
    input [1:0]A,
    input [1:0]B,
    input Ci,
    output Co,
    output [1:0]S
    );
    
wire Ca0, Sa0;
wire Ca1, Sa1;
    
assign Co = Ca1;
assign S[0] = Sa0;
assign S[1] = Sa1;
    
my_fadder fa_Ca0(
    .A(A[0]),
    .B(B[0]),
    .Ci(1'b0),
    .S(Sa0),
    .Co(Ca0)
    );

my_fadder fa_Ca1(
    .A(A[1]),
    .B(B[1]),
    .Ci(Ca0),
    .S(Sa1),
    .Co(Ca1)
    );
    
endmodule
