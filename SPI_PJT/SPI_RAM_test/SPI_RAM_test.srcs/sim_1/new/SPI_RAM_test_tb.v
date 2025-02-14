`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/04 14:07:46
// Design Name: 
// Module Name: SPI_RAM_test_tb
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


module SPI_RAM_test_tb();

reg rst = 1'b1;
reg clk = 1'b0;
reg [1:0] cmd = 2'b11;
reg [6:0] addr = 7'd0;
reg [7:0] wr_data = 8'd0;
wire miso;
wire [7:0] rd_data;
wire sclk, csn, mosi;

SPI_Master uut1(
    .RST(rst),
    .CLK(clk),
    .CMD(cmd),     // 11 : standby, 00 : Write, 01 : Read
    .ADDR(addr),    // if Write : AXI_reg1[6:0], if Read : AXI_reg3[6:0]
    .WR_Data(wr_data), // AXI_reg0[7:0]
    .MISO(miso),          // R_data[0]
    .RD_Data(rd_data), // AXI_reg2[7:0]
    .SCLK(sclk),          // 10MHz = CLK(100MHz) / 10
    .CSN(csn),           // default : 1, start : 0
    .MOSI(mosi)
    );

//reg rst, sclk, csn, mosi;
wire [7:0] RAM_rdata;
wire RAM_WEN;
wire [6:0] RAM_Addr;
wire [7:0] RAM_Wdata;

SPI_Slave uut2(
    .RST(rst),
    .SCLK(sclk),
    .CSN(csn),
    .MOSI(mosi),
    .RAM_Rdata(RAM_rdata),
    .MISO(miso),
    .RAM_WEN(RAM_WEN),
    .RAM_Addr(RAM_Addr),
    .RAM_Wdata(RAM_Wdata)
    );

//reg clk, wen, rst;
//reg [6:0] R_addr;
//reg [7:0] din;
//wire [7:0] dout;

SPI_RAM uut3(
    .SCLK(sclk),
    .ADDR(RAM_Addr),
    .DIN(RAM_Wdata),
    .WEN(RAM_WEN),
    .DOUT(RAM_rdata)
    );

always #(5) clk <= ~clk;

initial begin
    clk <= 1'b0;
    cmd <= 2'b11;
    rst <= 1'b0;
    #10
    rst <= 1'b1;
    cmd <= 2'b00;
    addr <= 7'b0101010;   // 1010101
    wr_data <= 8'b10101010;
    #10
    cmd <= 2'b11;
    #2400
    cmd <= 2'b01;
    addr <= 7'b0101010;
    #10
    cmd <= 2'b11;
    
end

endmodule
