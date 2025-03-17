`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 11:23:08
// Design Name: 
// Module Name: display
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


module display(
    input RST,
    input CLK,
    input RX_RDY,
    input [7:0] RX_DATA,
    output [6:0] AN,
    output CA
    );
parameter CLK_FREQ = 125_000_000;    
wire    tick;
reg [3:0] digit_1, digit_10;

always @(posedge CLK)
    if(RX_RDY) begin
        digit_1 <= RX_DATA[3:0];
        digit_10 <= RX_DATA[7:4];
    end        

tick_gen #(.CLK_FREQ(CLK_FREQ))
    tick_0  (
    .RST    (RST),
    .CLK    (CLK),
    .TICK   (tick)
    );    
disp_mod disp_0  (
	.TICK      (tick),  // 100ms tick
    .DIGIT_1    (digit_1),
    .DIGIT_10   (digit_10),
	.CA        (CA),
    .AN         (AN)
    );
    
endmodule
