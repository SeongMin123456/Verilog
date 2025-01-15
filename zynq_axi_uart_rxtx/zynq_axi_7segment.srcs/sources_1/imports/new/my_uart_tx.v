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
    input AXI_START,
    input [7:0] AXI_DATA,
    output TX,
    output reg TX_READY =1'b1
    );

parameter baud_rate = 100_000_000 / 115200;   // 868 : 115200 baud rate maker

reg [15:0] baud_cnt = 16'b0;      // baud rate counter
reg send = 1'b0;                  // baud rate trigger
wire load;                        // start detector -> on send = 0, wait = 1
(* MARK_DEBUG="true" *)reg [8:0] serial = 9'b111111111;          // data bit
reg shift_done = 1'b0;            // serial data shift
reg [3:0] send_cnt = 4'b0;        // send count == 10, send_done
reg send_done = 1'b0;             // stop trigger
reg [1:0] curr_state, next_state; // FSM

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

localparam  [1:0]   idle = 2'b00,   // wait to WSIG
                    start = 2'b01,  // TX = serial[0]
                    shift = 2'b10,  // serial >> 1
                    stop = 2'b11;   // send_done

// FSM state logic
always @(posedge CLK) begin
    if(!RST)     curr_state <= idle;
    else         curr_state <= next_state;
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
assign load = &serial;
assign TX = load ? 1 : serial[0];

always @(posedge CLK) begin
    case(curr_state)
        idle : begin
            if(AXI_START) begin
                serial <= {AXI_DATA, 1'b0};
                send_cnt <= send_cnt + 1;
                TX_READY <= 1'b0;
            end else begin
                TX_READY <= 1'b1;
                send_cnt <= send_cnt;
            end
        end
        start : begin
            shift_done <= 1'b0;
            if(send)    send_cnt <= send_cnt + 1;
        end
        shift : begin
            if(send_cnt == 10)  send_done <= 1'b1;
            else    begin
                if(!shift_done) begin
                    serial <= (serial >> 1);
                    shift_done <= 1'b1;
                 end else shift_done <= 1'b0;
             end
        end
        stop : begin
            serial <= 9'b111111111;
            if(&serial && send) begin
                send_done <= 1'b0;
                send_cnt <= 1'b0;
                TX_READY <= 1'b1;
            end
        end
    endcase
end

endmodule