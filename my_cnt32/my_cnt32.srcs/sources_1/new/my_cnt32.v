`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/14 16:03:46
// Design Name: 
// Module Name: my_cnt32
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


module my_cnt32(
    input rst,
    input clk,  // H16
    input dir,
    output [7:0] LED  // LED
    );

reg [31:0] out;
assign LED = out [31:24];
    
always @(posedge clk)  // clk 상승 엣지에서 동작
begin

if(rst == 1) out <= 32'h00;  // reset 버튼 누르면 초기화
else if(dir) out <= out + 32'h01;
else out <= out - 1;

end

endmodule
