`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/12 10:48:55
// Design Name: 
// Module Name: my_uart_tx
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

module my_uart_tx(
    input RST,
    input CLK,
    input BTN1,
    input [3:0] SW,
    output TX,
    output reg LED
    );

parameter baud_rate = 125_000_000 / 9600;   // 13020 : 9600 baud rate maker

reg [15:0] baud_cnt = 16'b0;      // baud rate counter
reg send = 1'b0;                  // baud rate trigger
wire load;                        // BTN1 detector -> on send = 0, wait = 1
reg [2:0] alp = 3'b100;           // ASCII alp
reg [8:0] serial = 9'b0;          // data bit
reg shift_done = 1'b0;            // serial data shift
reg [3:0] send_cnt = 4'b0;        // send count == 10, send_done
reg send_done = 1'b0;             // stop trigger
reg [1:0] curr_state, next_state; // FSM
wire parity;                      // parity bit

// baud rate
always @(posedge CLK) begin
    if(curr_state != idle) begin
        if(baud_cnt == baud_rate) begin
            baud_cnt <= 16'b0;
            send <= 1'b1;
        end else begin
            baud_cnt <= baud_cnt + 1;
            send <= 1'b0;
        end
    end else begin
        baud_cnt <= 16'b0;
        send <= 1'b0;
    end
end

// debounsing logic : rising edge detect
reg BTN1_ff1, BTN1_ff2;
wire BTN1_pressed;
always @(posedge CLK) begin
    BTN1_ff1 <= BTN1;
    BTN1_ff2 <= BTN1_ff1;
end
assign BTN1_pressed = BTN1_ff1 & ~BTN1_ff2;

localparam  [1:0]   idle = 2'b00,   // wait to BTN1
                    start = 2'b01,  // TX = serial[0]
                    shift = 2'b10,  // serial >> 1
                    stop = 2'b11;   // send_done

// FSM state logic
always @(posedge CLK) begin
    if(RST)     curr_state <= idle;
    else        curr_state <= next_state;
end
always @(curr_state, next_state, load, send, shift_done, send_done) begin
    case(curr_state)
        idle : begin
            if(!load)                   next_state <= start;
            else                        next_state <= idle;
        end
        start : begin
            if(send == 1)               next_state <= shift;
            else                        next_state <= start;
        end
        shift : begin
            if(send_done == 1)          next_state <= stop;
            else if(shift_done == 1)    next_state <= start;
            else                        next_state <= shift;
        end
        stop : begin
            if(send_done == 0)          next_state <= idle;
            else                        next_state <= stop;
        end
    endcase
end

// main logic
assign load = serial ? 0 : 1;
assign TX = load ? 1 : serial[0];
assign parity = ~^SW;      // SW odd -> 1, SW even -> 0

always @(posedge CLK) begin
    case(curr_state)
        idle : begin
            if(BTN1_pressed) begin
                serial <= {parity, alp [2:0], SW [3:0], 1'b0};
                LED <= 1'b1;
                send_cnt <= send_cnt + 1;
            end else begin
                send_cnt <= send_cnt;
            end
        end
        start : begin
            shift_done <= 1'b0;
            if(send)    send_cnt <= send_cnt + 1;
        end
        shift : begin
            if(send_cnt == 9)  send_done <= 1'b1;
            else    begin
                if(!shift_done) begin
                    serial <= serial >> 1;
                    shift_done <= 1'b1;
                 end else shift_done <= 1'b0;
             end
        end
        stop : begin
            serial <= 8'b0;
            if(!BTN1 && send) begin
                send_done <= 1'b0;
                send_cnt <= 1'b0;
                LED <= 1'b0;
            end
        end
    endcase
end

endmodule

               /* serial [0] <= 1'b0;         // start bit
                serial [4:1] <= SW [3:0];   // data
                serial [7:5] <= alp [2:0];  // data
                serial [8] <= parity;*/