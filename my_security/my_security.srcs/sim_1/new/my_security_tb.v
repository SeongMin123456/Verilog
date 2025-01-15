`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 10:41:36
// Design Name: 
// Module Name: my_security_tb
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

module my_security_tb();

reg rst, clk, sensor;
reg [1:0] key;
wire alarm;
wire [6:0] AN;
wire CA;

my_security #(.CLK_FREQ(10)) uut(
    .RST(rst),
    .CLK(clk),
    .KEY(key),
    .SENSOR(sensor),   // SENSOR0 = front door, SENSOR1 = rear door
    .ALARM(alarm),
    .AN(AN),          // segment out
    .CA(CA)          // segment location
    );

always #5 clk = ~clk;

initial begin
    rst = 1'b1;
    clk = 1'b0;
    sensor = 1'b0;
    key = 2'b11;
    #10 rst = 1'b0;
    #20 key = 2'b10;
    #20 key = 2'b01;
    #20 key = 2'b00;
    #20 key = 2'b01;
    #20 sensor = 1'b1;
    #20 key = 2'b00;
    #100;
    $finish;
end

endmodule
