`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/19 15:38:05
// Design Name: 
// Module Name: Stopwatch_10cnt
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


module Stopwatch_10cnt(
    input CLK,
    output reg [3:0] Usec_H = 0,
    output reg [3:0] Usec_L = 0,
    output reg [2:0] sec_H = 0,
    output reg [3:0] sec_L = 0,
    output reg [2:0] hour_H = 0,
    output reg [3:0] hour_L = 0
    );

parameter CLK_FREQ = 125_000_000;   // 125MHz
parameter CLK_UFREQ = CLK_FREQ / 100;   // 10ms Trigger

reg [31:0] clk_cnt = 32'd0;

always @(posedge CLK) begin
    if((Usec_L == 9) && (Usec_H == 9) && (sec_L == 9) && (sec_H == 5) && (hour_L == 9) && (hour_H == 5)) begin
        Usec_L <= Usec_L;
        Usec_H <= Usec_H;
        sec_L <= sec_L;
        sec_H <= sec_H;
        hour_L <= hour_L;
        hour_H <= hour_H;
    end else begin
        if(clk_cnt == CLK_UFREQ) begin
            clk_cnt <= 0;
            Usec_L <= Usec_L + 1;
            if(Usec_L >= 9) begin
                Usec_L <= 0;
                Usec_H <= Usec_H + 1;
                if(Usec_H >= 9) begin
                    Usec_H <= 0;
                    sec_L <= sec_L + 1;
                    if(sec_L >= 9) begin
                        sec_L <= 0;
                        sec_H <= sec_H + 1;
                        if(sec_H >= 5) begin
                            sec_H <= 0;
                            hour_L <= hour_L + 1;
                            if(hour_L >= 9) begin
                                hour_L <= 0;
                                hour_H <= hour_H + 1;
                            end
                        end
                    end
                end
            end
        end else begin
            clk_cnt <= clk_cnt + 1;
        end
    end
end

endmodule
