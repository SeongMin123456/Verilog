`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/29 10:29:20
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

module my_security_tb( );
parameter CLK_PD = 8.0;
reg rst, clk, sensor, key;
wire ca, alarm_siren;
wire [6:0] an;

practice_security #(.CLK_FREQ(1000))
    uut (    .RST(rst), .CLK(clk), .KEY(key), .SENSOR(sensor),
            .ALARM(alarm_siren), .CA(ca), .AN(an));
            
initial begin
    rst = 1'b1;
    #(CLK_PD*10);
    rst = 1'b0;
end           

initial clk = 1'b0;
always #(CLK_PD/2) clk = ~clk;


initial begin
    key = 1'b0;
    sensor = 1'b0;
    wait (rst == 1'b0);
    #(CLK_PD*10);
    key = 1'b1;
    #(CLK_PD*10);
    key = 1'b0;
    #(CLK_PD*10);
    key = 1'b1;
    #(CLK_PD*10);
    sensor = 1'b1;
    #(CLK_PD*1000);
    //sensor = 1'b0;
    wait (alarm_siren);
    #(CLK_PD*10);
    key = 1'b0;
    #(CLK_PD*10);
    $finish;
end        
                
endmodule
