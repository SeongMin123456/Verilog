`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/15 11:53:15
// Design Name: 
// Module Name: cnt_segment
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


module cnt_segment(
    input rst,
    input clk,
    input dir,
    output reg [7:0] LED
    );
    
reg [31:0] out;
    
always @(posedge clk)  // clk 상승 엣지에서 동작
begin

if(rst == 1) out <= 32'h00;  // reset 버튼 누르면 초기화
else if(dir) out <= out + 32'h01;
else out <= out;

case(out[29:26])
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
        4'hA : LED = 8'hBF;
        4'hB : LED = 8'h86;
        4'hC : LED = 8'hDB;
        4'hD : LED = 8'hCF;
        4'hE : LED = 8'hE6;
        4'hF : LED = 8'hED;
        default : LED = 8'h00;
        endcase

end

endmodule
