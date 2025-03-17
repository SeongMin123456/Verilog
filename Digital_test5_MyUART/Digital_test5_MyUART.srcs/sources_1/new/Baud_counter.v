`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/27 14:24:49
// Design Name: 
// Module Name: Baud_counter
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


module Baud_counter(
    input CLK,              // 125MHz
    input [1:0] FSM_STATE,  // 00 : IDLE, 01 : START, 10 : STOP
    input TX_CLK,           // 0 : 115200, 1 : 9600
    output reg BAUD_CLK     // Baud Period Pulse, Duty 50%
    );

parameter BAUD_FREQ0 = 125_000_000 / 115200;
parameter BAUD_FREQ1 = 125_000_000 / 9600;

reg [16:0] baud_cnt = 0;

always @(posedge CLK) begin
    if(FSM_STATE == 2'b00)  begin
        BAUD_CLK <= 0;
        baud_cnt <= 0;
    end else begin
        if(TX_CLK)  begin   // Baud Rate 9600
            if(baud_cnt == BAUD_FREQ1 - 1) begin
                baud_cnt <= 0;
                BAUD_CLK <= 0;
            end else begin
                baud_cnt <= baud_cnt + 1;
                if(baud_cnt == (BAUD_FREQ1 / 2) - 1)    BAUD_CLK <= ~BAUD_CLK;
            end
        end else begin      // Baud Rate 115200
            if(baud_cnt == BAUD_FREQ0 - 1) begin
                baud_cnt <= 0;
                BAUD_CLK <= 0;
            end else begin
                baud_cnt <= baud_cnt + 1;
                if(baud_cnt == (BAUD_FREQ0 / 2) - 1)    BAUD_CLK <= ~BAUD_CLK;
            end
        end
    end
end

endmodule
