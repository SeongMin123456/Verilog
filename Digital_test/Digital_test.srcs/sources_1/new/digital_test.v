`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 10:45:51
// Design Name: 
// Module Name: digital_test
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


module digital_test(
    input rst,  // active low
    input clk,
    input din,
    output reg qout
    );

always @(negedge rst, posedge clk) begin
    if(!rst)    qout <= 0;
    else        qout <= din;
end

endmodule
