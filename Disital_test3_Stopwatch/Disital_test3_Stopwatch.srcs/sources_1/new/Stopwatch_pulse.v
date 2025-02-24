`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 14:57:40
// Design Name: 
// Module Name: Stopwatch_pulse
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


module Stopwatch_pulse(
    input CLK,
    input [1:0] FSM_STATE,  // 00 : IDLE, 01 : Start, 10 : Pause
    output reg [3:0] Usec_H,
    output reg [3:0] Usec_L,
    output reg [2:0] sec_H,
    output reg [3:0] sec_L,
    output reg [2:0] hour_H,
    output reg [3:0] hour_L
    );

parameter CLK_FREQ = 125_000_000;   // 125MHz
parameter CLK_UFREQ = CLK_FREQ / 100;   // 10ms Trigger



endmodule
