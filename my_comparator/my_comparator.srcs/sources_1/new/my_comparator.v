`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 10:14:00
// Design Name: 
// Module Name: my_comparator
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


module my_comparator(
    input [1:0] A, B,
    output reg G,  //  A>B
    output reg E,  //  A=B
    output reg L   //  A<B
    );
    
always @(A,B)
begin   
    if(A > B) begin
    G = 1'b1;
    E = 1'b0;
    L = 1'b0;
    end else if((A==2'b00)&&(B==2'b00)) begin
    G = 1'b0;
    E = 1'b0;
    L = 1'b0;
    end else if(A==B) begin
    G = 1'b0;
    E = 1'b1;
    L = 1'b0;
    end else if(A<B) begin
    G = 1'b0;
    E = 1'b0;
    L = 1'b1;
    end else begin
    G = 1'b0;
    E = 1'b0;
    L = 1'b0;
    end
end // begin end
    
endmodule