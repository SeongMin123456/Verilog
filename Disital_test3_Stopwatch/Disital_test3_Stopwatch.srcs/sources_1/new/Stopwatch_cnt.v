`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 12:38:42
// Design Name: 
// Module Name: Stopwatch_cnt
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

module Stopwatch_cnt(
    input CLK,
    output reg [6:0] Usec_cnt = 0,
    output reg [5:0] sec_cnt = 0,
    output reg [5:0] hour_cnt = 0
    );

parameter CLK_FREQ = 125_000_000;   // 125MHz
parameter CLK_UFREQ = CLK_FREQ / 100;   // 10ms Trigger

reg [31:0] clk_cnt = 32'd0;

always @(posedge CLK) begin
    if((hour_cnt == 59) && (sec_cnt == 59) && (Usec_cnt == 99)) begin
        Usec_cnt <= Usec_cnt;
        sec_cnt <= sec_cnt;
        hour_cnt <= hour_cnt;
    end else begin
        if(clk_cnt == CLK_UFREQ) begin
            clk_cnt <= 0;
            Usec_cnt <= Usec_cnt + 1;
            if(Usec_cnt >= 99)   begin
                sec_cnt <= sec_cnt + 1;
                Usec_cnt <= 0;
                if(sec_cnt >= 59) begin
                    hour_cnt <= hour_cnt + 1;
                    sec_cnt <= 0;
                end
            end    
        end else begin
            clk_cnt <= clk_cnt + 1;
        end
    end
end

endmodule