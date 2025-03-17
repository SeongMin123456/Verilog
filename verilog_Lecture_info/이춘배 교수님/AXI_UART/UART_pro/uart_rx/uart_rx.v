`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 11:29:53
// Design Name: 
// Module Name: uart_rx
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


module uart_rx(
    input RST,
    input CLK,
    input RXD,
    output RX_RDY,
    output [7:0] RX_DATA,
    output PARITY_ERR
    );
parameter CLK_FREQ = 125_000_000;
parameter BAUD_RATE = 9600;

wire    x16_en;

uart_baud_gen
    #(.CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE))
    uart_baud_gen_0
    (
    .RST        (RST),
    .CLK        (CLK),
    .BAUD_X16_EN    (x16_en)
    );   

uart_rx_ctl uart_rx_ctl (
    .RST        (RST),
    .CLK        (CLK),
    .RXD        (RXD),
    .BAUD_X16_EN    (x16_en),
    .RX_RDY         (RX_RDY),
    .RX_DATA        (RX_DATA),
    .PARITY_ERROR   (PARITY_ERR)
    );     
endmodule
