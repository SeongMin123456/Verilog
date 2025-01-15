`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:31:17
// Design Name: 
// Module Name: mt_srs_tb
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

module mt_srs_tb();

reg RST, CLK;
wire [7:0] dout;

my_srs uut(
    .rst(RST),
    .clk(CLK),
    .seed(8'b00001010),
    .out(dout)
    );

always #5 CLK = ~CLK;

initial begin
    CLK = 1'b0;
    RST = 1'b1;
    #10 RST = 1'b0;
    
end

endmodule
