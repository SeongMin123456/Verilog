`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 09:29:33
// Design Name: 
// Module Name: CarryOut_tb
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


module CarryOut_tb();

reg [7:0] A = 8'd0, B = 8'd0;
wire [7:0] y;
wire cro;

CarryOut uut(
    .a(A),
    .b(B),
    .y(y),
    .cro(cro)
    );

initial begin
    #10;
    A <= 8'b11110000;
    B <= 8'b00001111;
    #10;
    A <= 8'b11110001;
    B <= 8'b00001111;
    #10;
    A <= 8'b11111111;
    B <= 8'b00001111;
end

endmodule
