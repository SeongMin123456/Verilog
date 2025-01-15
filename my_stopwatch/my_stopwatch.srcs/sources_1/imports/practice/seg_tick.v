`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/11 09:13:45
// Design Name: 
// Module Name: seg_tick
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

module seg_tick(
    input CLK,
    output reg TICK
    );

parameter TICK_FREQ = 1_250_000;  // 10ms counter

reg [20:0] cnt = 0;     // 10ms trigger

always @(posedge CLK) begin
    if(cnt == (TICK_FREQ-1)) begin
        cnt <= 21'b0;
        TICK <= 1'b1;
    end else begin
        cnt <= cnt + 1;
        TICK <= 1'b0;
    end
end

endmodule