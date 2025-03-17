`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/27 16:11:41
// Design Name: 
// Module Name: HEX2ASCII_tb
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


module HEX2ASCII_tb();

reg [15:0] pdata;
reg [2:0] byte;
wire [9:0] TX_DATA;

HEX2ASCII uut1(
    .PDATA(pdata),
    .BYTE_CNT(byte),
    .TX_DATA(TX_DATA)   // {1'b Start_bit, 8'b Data_Bit, 1'b Stop_bit}
    );

initial begin
    pdata <= 16'b1000_0100_0010_0001;
    byte <= 3'd0;
    #50;
    byte <= 3'd1;
    #50;
    byte <= 3'd2;
    #50;
    byte <= 3'd3;
    #50;
    byte <= 3'd4;
    #50;
    byte <= 3'd5;
    #50;
    byte <= 3'd6;
end

endmodule
