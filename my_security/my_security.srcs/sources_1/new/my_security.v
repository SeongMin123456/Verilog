`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/28 16:28:50
// Design Name: 
// Module Name: my_security
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

module my_security(
    input RST,
    input CLK,
    input [1:0] KEY,
    input SENSOR,      // SENSOR0 = front door, SENSOR1 = rear door
    output reg [1:0] ALARM,  // ALARM[0] == SENSOR[0] LED, ALARM[1] == SENSOR[1] LED
    output [6:0] AN,   // segment out
    output CA          // segment location
    );
    
localparam [1:0] idle = 2'b11,          // KEY no input
                 state_a = 2'b01,       // KEY Incorrect
                 state_b = 2'b10,       // alarm -> Key incorrect or correct
                 state_c = 2'b00;       // KEY correct

parameter CLK_FREQ = 125000000/100;
parameter tick = (CLK_FREQ)*4000;   // 5 sec

reg [1:0] curr_state, next_state;
reg enable;
reg [26:0] cnt1;
reg [26:0] cnt2;
wire [3:0] digit;

assign CA = enable;
assign digit [3:1] = 3'b0;
assign digit [0] = enable ? KEY[1] : KEY[0];

always @(posedge CLK) begin
    if(RST) begin
        curr_state <= idle;
        cnt2 <= 27'd0;
        ALARM <= 2'b0;
    end else        curr_state <= next_state;
end

always @(posedge CLK) begin
    if(curr_state == state_b && cnt2 < tick) begin
        cnt2 <= cnt2 +1;
    end else if(curr_state == state_b && cnt2 >= tick) begin
        cnt2 <= 0;
        ALARM[SENSOR] <= 1'b1;  // alarm on
    end else begin
        cnt2 <= 0;
        ALARM <= 2'b0;      // alarm off
    end
end

always @(curr_state, KEY) begin
    case(curr_state)
        idle : begin
            if(KEY != 2'b00)
                next_state = state_a;
            else
                next_state = idle;
        end
        state_a : begin
            if(KEY == 2'b00)
                next_state = state_c;
            else
                next_state = state_b;
        end
        state_b : begin
            if(cnt2 <= tick)
            next_state = state_a;
        end
        state_c : begin
            if(KEY == 2'b11)
                next_state = idle;
            else
            next_state = state_c;
        end
    endcase
end

always @(posedge CLK) begin
    if(RST) begin
        cnt1 <= 27'd0;
        enable <= 1'b0;
        end
    else begin
        if(cnt1 == (CLK_FREQ -1)) begin
            cnt1 <= 27'd0;
            enable <= ~enable;
        end else
            cnt1 <= cnt1 +1;
    end
end

disp_mod displ_1 (
    .DIGIT  (digit),
    .AN     (AN)
);

endmodule
