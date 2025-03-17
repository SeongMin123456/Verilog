`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/27 16:37:48
// Design Name: 
// Module Name: Byte_counter
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


module Byte_counter(
    input BAUD_CLK,     // Baud rate Trigger
    input [1:0] FSM,
    input CLK,
    output reg [3:0] BYTE_CNT   // 0 ~ 5
    );

reg [3:0] bit_cnt = 0;
reg baud_ff1, baud_ff2;

always @(posedge BAUD_CLK) begin
    if(FSM == 2'b00) begin
        bit_cnt <= 0;
    end else begin
        if(bit_cnt == 11) begin
            bit_cnt <= 0;
            baud_ff1 <= BAUD_CLK;
        end else if(bit_cnt == 0)   begin
            //
        end else begin
            bit_cnt <= bit_cnt + 1;
            //
        end
    end
end

always @(posedge CLK) begin
    if(FSM == 2'b00) begin
        BYTE_CNT <= 4'b1111;
    end else begin
        //
    end
end

endmodule
