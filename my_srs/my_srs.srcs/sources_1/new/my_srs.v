`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 15:09:54
// Design Name: 
// Module Name: my_srs
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

module my_srs(
    input rst,
    input clk,
    input [7:0] seed,
    output out
    );

reg [7:0] shift_reg;
wire sr_in;

assign out = shift_reg[0];
assign sr_in = shift_reg[2]^shift_reg[4];
    
always @(posedge clk) begin
    if(rst)
        shift_reg <= seed;
    else
        shift_reg <= {sr_in, shift_reg[7:1]};
end

endmodule
