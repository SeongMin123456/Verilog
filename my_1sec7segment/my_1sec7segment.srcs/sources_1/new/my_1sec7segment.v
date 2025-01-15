`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 14:35:36
// Design Name: 
// Module Name: my_1sec7segment
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


module my_1sec7segment(
    input rst,
    input clk,
    output reg [7:0] LED
    );
    
parameter clk_period = 125000000;

reg [27:0] count;
reg [3:0] sw;

always @(sw) begin

    case(sw)
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
    
always @(posedge clk) begin
    if(rst == 1)
    begin
            count <= 0;
            sw <= 0;
            LED <= 0;
    end
    else if(count == clk_period)
    begin
        count <= 0;
        if(sw > 9) sw <= 0;
        else       sw <= sw +1;
    end
    else
       count <= count + 1;
end

endmodule
