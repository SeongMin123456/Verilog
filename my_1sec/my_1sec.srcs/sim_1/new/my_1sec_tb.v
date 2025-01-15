`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/21 11:34:52
// Design Name: 
// Module Name: my_1sec_tb
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

module my_1sec_tb();

reg rst, clk;
wire LED;

my_1sec  #(.clk_period(10)) uut(
    .rst(rst),
    .clk(clk),
    .LED(LED)
    );

always #5 clk = ~clk;

initial begin
    rst = 1'b1;
    clk = 1'b0;
    #50 rst = 1'b0;
end

endmodule

//always @(posedge clk, negedge rst) begin
//    if(rst == 1)
//            LED <= 0;
//    else if(count == 125000000)
//    begin
//        count <= 0;
//        LED <= ~LED;
//    end
//    else
//       count <= count + 1;
//    end

/* always @(posedge clk) begin
    #(clk_period/2);
    LED = 1'b1;
    #(clk_period/2);
    LED = 1'b0;
end
*/

