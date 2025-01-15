`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 15:13:45
// Design Name: 
// Module Name: my_dsp
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


module my_dsp(
    input [3:0] SW,
    input BTN,
    output [6:0] AN,
    output CA
    );
wire [3:0] disp_data;
wire [3:0] digit0, digit1;

assign disp_data = BTN ? digit1 : digit0;
assign digit0 = (SW[3]&(|SW[2:1])) ? (SW-10) : SW;
assign digit1 = SW[3] & |SW[2:1];

assign CA = BTN;

disp_mod disp_inf0(
    .DIGIT (disp_data),
    .AN(AN)
    );

endmodule
