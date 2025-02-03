`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/03 11:08:11
// Design Name: 
// Module Name: SPI_Master_tb
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


module SPI_Master_tb();

reg rst = 1'b0;
reg clk = 1'b0;
reg [1:0] cmd = 2'b11;
reg [6:0] addr = 7'd0;
reg [7:0] wr_data = 8'd0;
reg miso;
wire [7:0] rd_data;
wire sclk, csn, mosi;

SPI_Master uut(
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

always #(5) clk <= ~clk;

initial begin
    clk <= 1'b0;
    cmd <= 2'b11;
    rst <= 1'b1;
    #10
    rst <= 1'b0;
    cmd <= 2'b00;
    addr <= 7'b1010101;
    wr_data <= 8'b10101010;
    #10
    cmd <= 2'b11;
    #2000
    cmd <= 2'b01;
    addr <= 7'b0101010;
    miso <= 1'b1;
    #10
    cmd <= 2'b11;
    #1400
    miso <= 1'b0;
end

endmodule
