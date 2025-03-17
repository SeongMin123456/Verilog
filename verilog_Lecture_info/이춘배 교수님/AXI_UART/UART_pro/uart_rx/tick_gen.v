`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 11:15:25
// Design Name: 
// Module Name: tick_gen
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


module tick_gen(
    input RST,
    input CLK,
    output reg TICK
    );
parameter CLK_FREQ = 125_000_000;
localparam MAX_TICK = CLK_FREQ / 100;

reg [20:0] cnt;

//assign TICK = cnt == (MAX_TICK -1);

always @(posedge CLK)
begin
    if(RST) begin
        cnt <= 21'd0;
        TICK <= 1'b0;
    end else if(cnt == (MAX_TICK -1)) begin
        cnt <= 21'd0;
        TICK <= 1'b1;
    end else begin
        cnt <= cnt + 1;
        TICK <= 1'b0;
    end                        
end // always    
endmodule
