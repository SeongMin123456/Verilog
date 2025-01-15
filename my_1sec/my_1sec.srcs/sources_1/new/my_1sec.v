`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 11:24:42
// Design Name: 
// Module Name: my_1sec
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

module my_1sec(
    input rst,
    input clk,
    output reg LED
    );

parameter clk_period = 125000000;

   (* MARK_DEBUG="true" *)
reg [31:0] count;

always @(posedge clk) begin
    if(rst == 1)
    begin
            count <= 0;
            LED <= 0;
    end
    else if(count == clk_period)
    begin
        count <= 0;
        LED <= ~LED;
    end
    else
       count <= count + 1;
end
    
endmodule

// always @(posedge clk) begin
//    #(clk_period/2);
//    LED = 1'b1;
//    #(clk_period/2);
//    LED = 1'b0;
//end
