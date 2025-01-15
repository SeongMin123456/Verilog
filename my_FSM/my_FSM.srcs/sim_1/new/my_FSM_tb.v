`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 11:11:37
// Design Name: 
// Module Name: my_FSM_tb
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
module my_FSM_tb();
    
parameter PERIOD = 10.0;
reg [1:0] SW;
reg RST, CLK;
wire [1:0] LED;

my_FSM uut(
    .Din (SW),
    .rst (RST),
    .clk (CLK),
    .Dout (LED)
    );

always #(PERIOD/2) CLK = ~CLK;

initial begin
    RST = 1'b1;
    #(PERIOD) RST = 1'b0;
end

initial begin
    CLK = 1'b0;
    SW = 1'b00;
    wait (RST == 1'b0);
    #(10*PERIOD) SW = 2'b01;
    #(10*PERIOD) SW = 2'b10;
    #(10*PERIOD) SW = 2'b01;
    #(10*PERIOD) SW = 2'b11;
    #(10*PERIOD) SW = 2'b00;
    #(10*PERIOD);
    $finish;
end // initial 

endmodule
