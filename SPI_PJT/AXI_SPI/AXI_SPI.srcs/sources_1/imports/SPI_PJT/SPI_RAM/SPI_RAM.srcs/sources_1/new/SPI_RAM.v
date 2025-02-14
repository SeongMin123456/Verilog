`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/04 09:16:30
// Design Name: 
// Module Name: SPI_RAM
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


module SPI_RAM(
    input SCLK,
    input [6:0] ADDR,
    input [7:0] DIN,
    input WEN,
    output reg [7:0] DOUT
    );  

(* mark_debug = "true" *)reg [7:0] outdata [0:127];  // 8 bit data x 128

always @(posedge SCLK) begin
    DOUT <= outdata[ADDR];
    if(WEN) outdata[ADDR] <= DIN;
    else    outdata[ADDR] <= outdata[ADDR];
end

endmodule
