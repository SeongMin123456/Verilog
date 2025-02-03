`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/03 14:45:22
// Design Name: 
// Module Name: SPI_Slave_tb
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


module SPI_Slave_tb();

reg rst, sclk, csn, mosi;
reg [7:0] RAM_rdata;
wire MISO, RAM_WEN;
wire [6:0] RAM_Addr;
wire [7:0] RAM_Wdata;

SPI_Slave uut(
    .RST(rst),
    .SCLK(sclk),
    .CSN(csn),
    .MOSI(mosi),
    .RAM_Rdata(RAM_rdata),
    .MISO(MISO),
    .RAM_WEN(RAM_WEN),
    .RAM_Addr(RAM_Addr),
    .RAM_Wdata(RAM_Wdata)
    );

always #(50) sclk <= ~sclk;

initial begin
    // write
    sclk <= 1'b0;
    rst <= 1'b1;
    csn <= 1'b1;
    mosi <= 1'b0;
    #100
    rst <= 1'b0;
    mosi <= 1'b1;
    #60
    csn <= 1'b0;
    #2000
    csn <= 1'b1;
    
    // read
    #200
    mosi <= 1'b0;
    csn <= 1'b0;
    #200
    mosi <= 1'b1;
    #300
    RAM_rdata <= 8'b10101010;
    #500
    csn <= 1'b0;
    #1000
    csn <= 1'b1;
end

endmodule
