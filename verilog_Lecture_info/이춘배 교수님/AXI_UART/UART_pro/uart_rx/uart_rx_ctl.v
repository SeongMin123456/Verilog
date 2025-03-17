`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 10:03:05
// Design Name: 
// Module Name: uart_rx_ctl
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


module uart_rx_ctl(
    input RST,
    input CLK,
    input RXD,
    input BAUD_X16_EN,
    output RX_RDY,
    output reg [7:0] RX_DATA,
    output reg   PARITY_ERROR
    );
/*  parameter & signal declalation */
parameter [1:0] sIDLE = 2'b00,
                sSTART = 2'b01,
                sDATA = 2'b10,
                sSTOP = 2'b11;
reg [1:0] curr_state, next_state;
wire        over_smpl_cnt_done, bit_cnt_done;
reg [3:0] over_smpl_cnt;
reg [3:0] bit_cnt;
reg    parity_rx;

/* implementation */
assign RX_RDY = curr_state == sSTOP && over_smpl_cnt_done;

always @(posedge CLK)
begin
    if(curr_state == sDATA && over_smpl_cnt_done)
        RX_DATA[bit_cnt] <= RXD;
end        

// fsm
always @(posedge CLK)
begin
    if(RST)
        curr_state <= sIDLE;
    else
        curr_state <= next_state;
end //always

always @(curr_state, RXD, over_smpl_cnt_done, bit_cnt_done)
begin
    case (curr_state)
         sIDLE : 
             if(!RXD)
                    next_state = sSTART;
             else
                    next_state = sIDLE;
         sSTART :
                if(over_smpl_cnt_done)
                    next_state = sDATA;
                else
                    next_state = sSTART;                 
         sDATA :
             if(bit_cnt_done)
                 next_state = sSTOP;
             else
                 next_state = sDATA;
         sSTOP :
            if(over_smpl_cnt_done)
                next_state = sIDLE;
            else
                next_state = sSTOP;                
         default : next_state = sIDLE;
     endcase
end   // always fsm

// over sample count done
always @(posedge CLK)
begin
    if(RST || (curr_state == sIDLE))
        over_smpl_cnt <= 4'd0;
    else if(BAUD_X16_EN)
        over_smpl_cnt <= over_smpl_cnt + 1;
end        
assign over_smpl_cnt_done =  (over_smpl_cnt == 4'd8) && BAUD_X16_EN;        

//  bit count 
always @(posedge CLK)
begin
    if(RST || (curr_state != sDATA))
        bit_cnt <= 4'd0;
    else if(over_smpl_cnt_done)
        bit_cnt <= bit_cnt + 1;
end  // always
assign bit_cnt_done = (bit_cnt == 4'd8) && over_smpl_cnt_done;

// parity
always @(posedge CLK)
    if((bit_cnt == 4'd8) && over_smpl_cnt_done)
        parity_rx <= RXD;

always @(posedge CLK)
    if((curr_state == sSTOP) && over_smpl_cnt_done)
        PARITY_ERROR <= parity_rx ^ (^RX_DATA);
                    
endmodule
