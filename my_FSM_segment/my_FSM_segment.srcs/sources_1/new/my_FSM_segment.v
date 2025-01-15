`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 12:17:01
// Design Name: 
// Module Name: my_FSM_segment
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
module my_FSM_segment(
    input [3:0] SW,
    input RST,
    input CLK,
    output CA,
    output reg [6:0] LED
    );

parameter clk_period = 125000000;  // 125MHz
reg [3:0] digit;
reg enable, state;

assign CA = enable;

always @(SW) begin

    case(SW)
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
end

always #(clk_period /100) enable = ~enable;




endmodule
