`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 11:36:25
// Design Name: 
// Module Name: uart_rx_top
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


module uart_rx_top(
    input RST,
    input CLK,
    input RXD,
    output [6:0] AN,
    output CA,
    output PARITY_ERR
    );
parameter CLK_FREQ = 125_000_000;
parameter BAUD_RATE = 115200;
wire    rx_rdy;
wire [7:0] rx_data;

uart_rx
    #(.CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE))
    uart_rx
    (
    .RST        (RST),
    .CLK        (CLK),
    .RXD        (RXD),
    .RX_RDY     (rx_rdy),
    .RX_DATA    (rx_data),
    .PARITY_ERR (PARITY_ERR)
    );    
display #(.CLK_FREQ(CLK_FREQ))
    disp_0   (
    .RST        (RST),
    .CLK        (CLK),
    .RX_RDY     (rx_rdy),
    .RX_DATA    (rx_data),
    .AN         (AN),
    .CA         (CA)
    );    
endmodule
