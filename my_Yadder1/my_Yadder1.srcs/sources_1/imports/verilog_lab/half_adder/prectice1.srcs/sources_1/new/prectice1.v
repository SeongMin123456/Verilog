`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/30 12:17:22
// Design Name: 
// Module Name: prectice1
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


module prectice1(
    input A,
    input B,
    output S,
    output C
    );

assign S = A ^ B;
assign C = A & B;

endmodule
