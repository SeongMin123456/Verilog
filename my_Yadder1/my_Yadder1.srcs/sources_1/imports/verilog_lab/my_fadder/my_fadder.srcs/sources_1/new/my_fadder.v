`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/07 09:39:32
// Design Name: 
// Module Name: my_fadder
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


module my_fadder(
    input A,
    input B,
    input Ci,
    output S,
    output Co
    );
    
wire ha0_s, ha0_c;
wire ha1_s, ha1_c;

assign S = ha1_s;
assign Co = ha0_c | ha1_c;

prectice1 ha0(
    .A (A),
    .B (B),
    .S (ha0_s),
    .C (ha0_c)
    );

prectice1 ha1(
    .A (ha0_s),
    .B (Ci),
    .S (ha1_s),
    .C (ha1_c)
    );

endmodule
