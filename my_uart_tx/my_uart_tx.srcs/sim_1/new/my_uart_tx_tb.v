`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 14:04:09
// Design Name: 
// Module Name: my_uart_tx_tb
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

module my_uart_tx_tb();

parameter clk_period = 10;
parameter baud_rate_tb = clk_period/2;

my_uart_tx #(.baud_rate(baud_rate_tb)) uut(
    .RST(rst),
    .CLK(clk),
    .BTN1(btn1),
    .SW(sw),
    .TX(TX),
    .LED(LED)
    );

reg rst, clk, btn1;
reg [3:0] sw;
wire TX, LED;

initial begin
    clk = 1'b0;
    rst = 1'b1;
    sw [3:0] = 4'b1001;
end

always #(clk_period/5) clk = ~clk;

initial begin
    clk <= 1'b0;
    rst <= 1'b1;
    btn1 <= 1'b0;
    #(clk_period);
    rst <= 1'b0;
    #(clk_period/2);
    btn1 <= 1'b1;
    #(clk_period*30);
    btn1 <= 1'b0;
end

endmodule
