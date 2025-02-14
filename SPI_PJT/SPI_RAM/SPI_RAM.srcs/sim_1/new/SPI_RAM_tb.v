`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/04 09:21:43
// Design Name: 
// Module Name: SPI_RAM_tb
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


module SPI_RAM_tb();

reg clk, wen, rst;
reg [6:0] addr;
reg [7:0] din;
wire [7:0] dout;

SPI_RAM uut(
    .RST(rst),
    .SCLK(clk),
    .ADDR(addr),
    .DIN(din),
    .WEN(wen),
    .DOUT(dout)
    );

initial begin
    rst <= 1'b1;
    clk <= 0;
    wen <= 0;
    #50 
    rst <= 1'b0;
    din <= 8'd0;
    addr <= 3;
    #51
    wen <= 1;
    #10
    wen <= 0;
    #50
    addr <= 4;
    din <= 8'd44;
    #49
    wen <= 1;
    addr <= 2;
    #20
    din <= 8'd22;
    #10
    wen <= 0;
    #40
    addr <= 4;
    #40
    addr <= 3;
    #40
    addr <= 2;
    #20
    rst <= 1'b1;
end

always #(5) clk <= ~clk;


endmodule
