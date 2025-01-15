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
    input [3:0] DIGIT,
    output reg [6:0] AN
    );

always @(DIGIT)
    case (DIGIT)
        4'h0 : AN = 8'h3F;
        4'h1 : AN = 8'h06;
        4'h2 : AN = 8'h5B;
        4'h3 : AN = 8'h4F;
        4'h4 : AN = 8'h66;
        4'h5 : AN = 8'h6D;
        4'h6 : AN = 8'h7D;
        4'h7 : AN = 8'h27;
        4'h8 : AN = 8'h7F;
        4'h9 : AN = 8'h67;
        default : AN = 8'h00;
    endcase     
                                                                       
endmodule
