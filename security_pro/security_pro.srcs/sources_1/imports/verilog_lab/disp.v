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
        4'h0 : AN = 7'h7e;    
        4'h1 : AN = 7'h30;
        4'h2 : AN = 7'h6d;
        4'h3 : AN = 7'h79;
        4'h4 : AN = 7'h33;
        4'h5 : AN = 7'h5b;
        4'h6 : AN = 7'h5f;
        4'h7 : AN = 7'h70;
        4'h8 : AN = 7'h7f;
        4'h9 : AN = 7'h73;
        default : AN = 7'h00;
    endcase     
                                                                       
endmodule
