`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 10:38:34
// Design Name: 
// Module Name: RAM_tb
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

module RAM_tb();

reg clk, wen;
reg [6:0] addr;
reg [7:0] din;
wire [7:0] dout;

RAM uut(
    .CLK(clk),
    .ADDR(addr),
    .DIN(din),
    .WEN(wen),
    .DOUT(dout)
    );

initial begin
    clk <= 0;
    wen <= 0;
    #50 
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
    
end

always #(5) clk <= ~clk;
endmodule

