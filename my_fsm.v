`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 10:35:57
// Design Name: 
// Module Name: my_fsm
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


module my_fsm(
    input RST,
    input CLK,
    input [1:0] SW,
    output  CA,
    output [6:0] AN
    );
localparam [1:0]    idle = 2'b00,
                    state_a = 2'b01,
                    state_b = 2'b10,
                    state_c = 2'b11;
parameter CLK_FREQ = 125_000_000/100;
reg [1:0] curr_state, next_state;
reg [1:0] state;
reg [26:0] cnt;
reg     enable;
wire [3:0] digit;

assign CA = enable;
assign digit[3:1] = 3'd0;
assign digit[0] = enable ? state[1] : state[0];

always @(posedge CLK)
begin
    if(RST)
        curr_state <= idle;
    else
        curr_state <= next_state;
end //always

always @(curr_state, SW)
begin
    case (curr_state)
        idle : begin
            if(SW == 2'b01)
                next_state = state_a;
            else
                next_state = idle;
            state = 2'b00;
        end                                                                                
        state_a : begin
            if(SW == 2'b10)
                next_state = state_b;
            else
                next_state = state_a;
            state = 2'b01;
        end
        state_b : begin
            if(SW == 2'b11)
                next_state = state_c;
            else
                next_state = state_b;
            state = 2'b10;
        end
        state_c : begin
            if(SW == 2'b00)
                next_state = idle;
            else
                next_state = state_c;
            state = 2'b11;
        end            
        default : next_state = idle;
    endcase     
end //alwasy           

// enable gen
always @(posedge CLK)
begin
    if(RST) begin
        cnt <= 27'd0;
        enable <= 1'b0;
    end else begin
        if(cnt == (CLK_FREQ -1)) begin
            cnt <= 27'd0;
            enable <= ~enable;
        end else
            cnt <= cnt + 1;
    end
end //always

disp_mod disp_inf_0 (
    .DIGIT  (digit),
    .AN     (AN)
    );                                    
                 
                        
endmodule
