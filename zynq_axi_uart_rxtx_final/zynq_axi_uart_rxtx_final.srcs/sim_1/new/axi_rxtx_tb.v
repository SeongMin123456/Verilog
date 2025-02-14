`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/14 09:54:29
// Design Name: 
// Module Name: axi_rxtx_tb
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


module axi_rxtx_tb();

reg rst = 1'b0;
reg clk = 1'b0;
wire tx;
wire [7:0] rx_data;
wire rx_ready;

reg axi_start;
reg [7:0] axi_data;
wire tx_ready;

uart_rx #(.overrate(10)) uut1(
    .RST(rst),
    .CLK(clk),
    .rxd(tx),
    .AXI_RX_DATA(rx_data),
    .RX_READY(rx_ready)
    );

my_uart_tx #(.baud_rate(160)) uut2(
    .RST(rst),
    .CLK(clk),
    .AXI_START(axi_start),
    .AXI_DATA(axi_data),
    .TX(tx),
    .TX_READY(tx_ready)
    );

always #2 clk = ~clk;

initial begin
    rst = 1'b1;
    clk = 1'b0;
    #20
    rst = 1'b0;
    #10
    axi_data = 8'd127;
    axi_start = 1'b1;
    #10
    axi_start = 1'b0;
end











endmodule
