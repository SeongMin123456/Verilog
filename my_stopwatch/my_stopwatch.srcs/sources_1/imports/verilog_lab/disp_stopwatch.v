`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 14:33:59
// Design Name: 
// Module Name: my_sw2led
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


module disp_mod(
	input TICK,  // 100ms tick
    input [3:0] DIGIT_1, DIGIT_10,
	output reg CA,
    output reg [6:0] AN
    );
wire [3:0] digit;

initial CA = 1'b0;
always @(posedge TICK)
	CA <= ~CA;

assign digit = CA ? DIGIT_10 : DIGIT_1;

always @(digit)
    case (digit)
        4'h0 : AN = 7'h3F;
        4'h1 : AN = 7'h06;
        4'h2 : AN = 7'h5B;
        4'h3 : AN = 7'h4F;
        4'h4 : AN = 7'h66;
        4'h5 : AN = 7'h6D;
        4'h6 : AN = 7'h7D;
        4'h7 : AN = 7'h27;
        4'h8 : AN = 7'h7F;
        4'h9 : AN = 7'h67;
        default : AN = 7'h00;
        endcase  
                                                                       
endmodule
