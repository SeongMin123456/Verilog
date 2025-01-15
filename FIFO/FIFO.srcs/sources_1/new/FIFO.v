`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/13 15:50:08
// Design Name: 
// Module Name: FIFO
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


module FIFO(
    input CLK,
    input RST,
    input [7:0] DIN,
    input WEN,
    input REN,
    output [7:0] DOUT,
    output EMPTY,
    output FULL
    );

reg [7:0]addata[0:127];
reg [7:0] W_cnt, R_cnt;
//reg [7:0]count;

// Empty when count is 0
assign EMPTY = (W_cnt == R_cnt);
// Full when count is 128
assign FULL = (W_cnt[7]^R_cnt[7])&&(W_cnt[6:0] == R_cnt[6:0]);
assign DOUT = addata[R_cnt[6:0]];

// Write Point & Read Point Logic
always @(posedge CLK) begin
    if(RST) begin
//        set <= 1'b0;
        W_cnt <= 7'd0;
        R_cnt <= 7'd0;
//        count <= 8'd0;
    end else begin
//        case ({WEN && !FULL, REN && !EMPTY})
//            2'b10: count <= count + 1;    // Only write
//            2'b01: count <= count - 1;    // Only read
//            2'b11: count <= count;        // Both read and write
//            2'b00: count <= count;        // No operation
//        endcase
        if(WEN && (!FULL)) W_cnt <= W_cnt + 1;
        if(REN && (!EMPTY)) R_cnt <= R_cnt + 1;
    end
end

// DOUT Logic
always @(posedge CLK) begin
    if(RST) begin
        for(integer i = 0; i < 128; i = i + 1) begin
            addata[i] <= 0;
        end
    end else begin
        if(WEN && !FULL) begin
            addata[W_cnt] <= DIN;
        end
    end
end

endmodule
