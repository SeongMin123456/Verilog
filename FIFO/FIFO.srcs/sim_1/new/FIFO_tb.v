`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 14:07:11
// Design Name: 
// Module Name: FIFO_tb
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


module FIFO_tb( );

FIFO uut(
    . RST(rst),
    . CLK(clk),
    . DIN(din),
    . WEN(wen),
    . REN(ren),
    . DOUT(dout),
    . EMPTY(empty),
    . FULL(full)
    );
    
 parameter CLK_PD = 8.0;
 
 reg clk,rst,wen,ren;
 reg [7:0] din;
 wire [7:0]dout;
 wire empty, full;
 
 

 initial begin
    clk = 1'b1;
    rst = 1'b0;
    din = 8'd0;
    wen = 1'b0;
    ren = 1'b0;
 end
 
 //**gen clk**// 
 always#(CLK_PD/2)clk= ~clk;
 
 //**gen rst **//
   initial begin
    rst = 1'b1;
    #(CLK_PD*2)
    rst = 1'b0;
    end
    
    
 
    initial begin
    #(CLK_PD*4);
    #(CLK_PD/2);
    for(integer i = 8'd0; i < 128; i = i+1) begin
        #(CLK_PD);
        din = i;
        wen = 1;
     end
     #(CLK_PD);
     wen = 0;
    #(CLK_PD*2);
    for(integer j = 8'd0; j < 128; j = j+1) begin
        #(CLK_PD/2);
        ren = 1;
     end
end    
    
endmodule
