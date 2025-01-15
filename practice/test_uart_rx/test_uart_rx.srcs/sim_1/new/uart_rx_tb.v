`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 12:33:52
// Design Name: 
// Module Name: uart_rx_tb
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

module uart_rx_tb();

parameter clk_freq = 100;
parameter baudrate = clk_freq / 50;

reg rst, clk, rxd;
wire CA;
wire [6:0] AN;

uart_rx #(.baudrate(baudrate), .CLK_FREQ(clk_freq)) uut(
    .RST(rst),
    .CLK(clk),
    .rxd(rxd),
    .CA(CA),
    .AN(AN)
    );

always #(clk_freq/20) clk = ~clk;

initial begin
    rst <= 1'b1;
    clk <= 1'b0;
    rxd <= 1'b1;
    #(clk_freq);
    rst <= 1'b0;
    rxd <= 1'b0;
    #(baudrate);
    rxd <= 1'b1;
    #(baudrate);
    rxd <= 1'b1;
    #(baudrate);
    rxd <= 1'b1;
    #(baudrate);
    rxd <= 1'b1;
    #(baudrate);
    rxd <= 1'b0;
    #(baudrate);
    rxd <= 1'b0;
    #(baudrate);
    rxd <= 1'b0;
    #(baudrate);
    rxd <= 1'b0;
    #(baudrate);
    rxd <= 1'b1;
    #(baudrate);
    #(clk_freq*50);
     rxd <= 1'b0;
    #(clk_freq);
end

endmodule
