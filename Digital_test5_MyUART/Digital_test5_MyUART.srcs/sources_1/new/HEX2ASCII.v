`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/27 15:26:39
// Design Name: 
// Module Name: HEX2ASCII
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


module HEX2ASCII(
    input [15:0] PDATA,
    input [2:0] BYTE_CNT,   // 1 ~ 4
    output  [9:0] TX_DATA   // {1'b Start_bit, 8'b Data_Bit, 1'b Stop_bit}
    );

assign TX_DATA [9:0] = (BYTE_CNT == 0) ? {1'h1, 8'h02, 1'h0} :
                       (BYTE_CNT == 1) ? {1'h1, PDATA[15:12]+8'h30, 1'h0} :
                       (BYTE_CNT == 2) ? {1'h1, PDATA[11:8]+8'h30, 1'h0} :
                       (BYTE_CNT == 3) ? {1'h1, PDATA[7:4]+8'h30, 1'h0} :
                       (BYTE_CNT == 4) ? {1'h1, PDATA[3:0]+8'h30, 1'h0} :
                       (BYTE_CNT == 5) ? {1'h1, 8'h03, 1'h0} : 10'b1111111111;

endmodule
