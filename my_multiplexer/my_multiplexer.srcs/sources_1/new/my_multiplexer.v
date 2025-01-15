`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 11:20:10
// Design Name: 
// Module Name: my_multiplexer
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


module my_multiplexer(
    input [1:0] A,
    input [1:0] B,
    input [1:0] SEL,
    output reg Z
    );
    
always @(A,B,SEL)
begin

Z = 1'bx;
    case(SEL)
        2'b00 : Z = ~A;
        2'b01 : Z = A&B;
        2'b10 : Z = A&(~B);
        2'b11 : Z = A^B;
    endcase
end  // always end

endmodule

/*if(SEL == 1'b00) begin
Z = ~A;
end else if(SEL == 1'b01) begin
Z = A&B;
end else if(SEL == 1'b10) begin
Z = A&~B;
end else if(SEL == 1'b11) begin
Z = A^B;
end else Z = 0;*/

