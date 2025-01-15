`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 14:45:38
// Design Name: 
// Module Name: my_module
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


module my_module(
    input [3:0] A,
    input [3:0] B,
    output [3:0] OUT
    );
    
assign #3 OUT = A & B;

endmodule
