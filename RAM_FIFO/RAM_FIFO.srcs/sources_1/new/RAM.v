`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 09:24:25
// Design Name: 
// Module Name: RAM
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


module RAM(
    input CLK,
    input [6:0]ADDR,
    input [7:0]DIN,
    input WEN,
    output reg [7:0]DOUT
    );
    
reg [7:0] outdata [0:127];

always @(posedge CLK) begin
    DOUT <= outdata[ADDR];
    
    if(WEN == 1)    outdata[ADDR] <= DIN;
    else            outdata[ADDR] <= outdata[ADDR];
end

endmodule
