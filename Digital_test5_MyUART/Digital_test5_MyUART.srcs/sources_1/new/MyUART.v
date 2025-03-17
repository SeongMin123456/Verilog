`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/27 14:07:07
// Design Name: 
// Module Name: MyUART
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


module MyUART(
    input CLK,          // 125MHz
    input RST,          // Active Low
    input [15:0] PDATA, // HEX Data
    input START,        // TX Start
    input TX_CLK,       // 0 : 115200, 1 : 9600
    output TX_DATA      // Serial Data
    );





endmodule
