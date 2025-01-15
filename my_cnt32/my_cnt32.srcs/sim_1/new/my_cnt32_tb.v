`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 15:04:36
// Design Name: 
// Module Name: my_cnt32_tb
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


module my_cnt32_tb;

parameter clk_period = 10.0;

reg RST, CLK, DIR;
wire [7:0] led;

my_cnt32 uut(
    .rst (RST),
    .clk (CLK),
    .dir (DIR),
    .LED (led)
    );

initial begin
    RST = 1'b1;
    #(clk_period * 10);
    RST = 1'b0;
end // initial1

initial CLK = 1'b0;
always #(clk_period/2) CLK = ~CLK;

initial begin
    DIR = 1'b0;
    wait ( RST == 1'b0);
    #(clk_period*50);
    DIR=1'b1;
    #(clk_period*50);
    DIR=1'b0;
    #(clk_period*40);
    $finish;
end // initial2

endmodule
