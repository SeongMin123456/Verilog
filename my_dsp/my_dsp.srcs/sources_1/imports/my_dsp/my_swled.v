`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 14:23:22
// Design Name: 
// Module Name: my_swled
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
    output [6:0] AN
 //   output CA
    );

reg [7:0] LED;
assign AN = LED [6:0];
// assign CA = LED [7];

always @(DIGIT)

    case(DIGIT)
        4'h0 : LED = 8'h3F;
        4'h1 : LED = 8'h06;
        4'h2 : LED = 8'h5B;
        4'h3 : LED = 8'h4F;
        4'h4 : LED = 8'h66;
        4'h5 : LED = 8'h6D;
        4'h6 : LED = 8'h7D;
        4'h7 : LED = 8'h27;
        4'h8 : LED = 8'h7F;
        4'h9 : LED = 8'h67;
        default : LED = 8'h00;
        endcase

endmodule
