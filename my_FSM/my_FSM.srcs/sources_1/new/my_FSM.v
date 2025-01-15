`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 10:32:42
// Design Name: 
// Module Name: my_FSM
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

module my_FSM(
    input [1:0] Din,
    input rst,
    input clk,
    output reg [1:0] Dout
    );

localparam [1:0] idle = 2'b00,
                 state_a = 2'b01,
                 state_b = 2'b10,
                 state_c = 2'b11;

reg [1:0] curr_state, next_state;

always @(posedge clk) begin
    if(rst)     curr_state <= idle;
    else        curr_state <= next_state;
end  // always

always @(curr_state, Din) begin
    case (curr_state)
        idle : begin
            if(Din == 2'b01)
                next_state = state_a;
            else begin
                next_state = idle;
                Dout = 2'b00;
            end
        end
        state_a : begin
            if(Din == 2'b10)
                next_state = state_b;
            else begin
                next_state = state_a;
                Dout = 2'b01;
            end
        end
        state_b : begin
            if(Din == 2'b11)
                next_state = state_c;
            else begin
                next_state = state_b;
                Dout = 2'b10;
            end
        end
        state_c : begin
            if(Din == 2'b00)
                next_state = idle;
            else begin
                next_state = state_c;
                Dout = 2'b11;
            end
        end
    endcase
end // always

endmodule
