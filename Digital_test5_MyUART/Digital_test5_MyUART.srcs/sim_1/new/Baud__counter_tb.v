`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/27 14:56:40
// Design Name: 
// Module Name: Baud__counter_tb
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


module Baud__counter_tb();

reg clk;
reg [1:0] fsm;
reg tx;
wire baud_clk;

Baud_counter #(.BAUD_FREQ0(10), .BAUD_FREQ1(8)) uut0(
    .CLK(clk),
    .FSM_STATE(fsm),
    .TX_CLK(tx),
    .BAUD_CLK(baud_clk)
    );

always #2   clk <= ~clk;

initial begin
    clk <= 0;
    fsm <= 0;
    tx <= 1'b0;
    #50;
    fsm <= 2'b01;
    #100;
    tx <= 1'b1;
    
end


endmodule
