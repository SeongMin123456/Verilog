`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/20 10:47:29
// Design Name: 
// Module Name: Stopwatch_hex_cnt
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


module Stopwatch_hex_cnt(
    input CLK, 
    input PLS_100Hz,    // input 100Hz Tick Signal
    output [5:0] HEX_m, HEX_s,
    output [6:0] HEX_us
);

    reg pls_100Hz_0 = 0, pls_100Hz_1 = 0;
    reg pls_100Hz_redge = 0, pls_100Hz_fedge = 0;
    reg [6:0] us_cnt = 0;
    reg [5:0] s_cnt = 0, m_cnt = 0;
    
    always @(posedge CLK) begin
        pls_100Hz_0 <= PLS_100Hz;
        pls_100Hz_1 <= pls_100Hz_0;
        
        if(pls_100Hz_0 & ~pls_100Hz_1) begin
            pls_100Hz_redge <= 1;
        end
        else begin
            pls_100Hz_redge <= 0;
        end
        
        if(~pls_100Hz_0 & pls_100Hz_1) begin
            pls_100Hz_fedge <= 1;
        end
        else begin
            pls_100Hz_fedge <= 0;
        end
    end
    
//16
    always @(posedge CLK) begin
        if(pls_100Hz_redge == 1) begin
            if(us_cnt < 99) begin
                us_cnt <= us_cnt + 1;
            end
            else begin
                us_cnt <= 0;
                if(s_cnt < 59) begin
                    s_cnt <= s_cnt + 1;
                end
                else begin
                    s_cnt <= 0;
                    if(m_cnt < 59) begin
                        m_cnt <= m_cnt + 1;
                    end
                    else begin
                        m_cnt <= 0;
                    end
                end
            end
        end
    end
    
    assign HEX_m = m_cnt;
    assign HEX_s = s_cnt;
    assign HEX_us = us_cnt;

endmodule
