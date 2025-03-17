`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 09:49:07
// Design Name: 
// Module Name: uart_baud_gen
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


module uart_baud_gen(
    input RST,
    input CLK,
    output BAUD_X16_EN
    );
parameter CLK_FREQ = 125_000_000;
parameter BAUD_RATE = 9600;
localparam CNT_MAX = CLK_FREQ/(BAUD_RATE * 16);  

reg [22:0] cnt;

assign BAUD_X16_EN = cnt == (CNT_MAX -1);

always @(posedge CLK)
begin
    if(RST || (cnt == (CNT_MAX-1)))
        cnt <= 23'd0;
    else 
        cnt <= cnt + 1;
end                  
    
endmodule
