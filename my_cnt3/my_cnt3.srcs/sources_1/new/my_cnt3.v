`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/08 09:41:59
// Design Name: 
// Module Name: my_cnt3
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


module my_cnt3(
    input RST,
    input CLK,
    output [2:0] Q
    );

wire n1, n2;

assign n1 = (Q[0]^Q[1]);
assign n2 = (Q[2]^(Q[0]&Q[1]));

dff dff0(.rst(RST), .clk(CLK), .d(~Q[0]), .q(Q[0]));
dff dff1(.rst(RST), .clk(CLK), .d(n1), .q(Q[1]));
dff dff2(.rst(RST), .clk(CLK), .d(n2), .q(Q[2]));

endmodule // count3

module dff(input rst, clk, d,
            output reg q);
always @(posedge clk)
if(rst)
q<=1'b0;
else
q<=d;

endmodule // d flip flop