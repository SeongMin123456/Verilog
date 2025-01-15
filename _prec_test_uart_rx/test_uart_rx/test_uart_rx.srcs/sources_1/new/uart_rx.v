`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 10:46:58
// Design Name: 
// Module Name: uart_rx
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

module uart_rx(
    input RST,
    input CLK,
    input rxd,
    output reg LED,
    output CA,
    output [6:0] AN
    );

parameter CLK_FREQ = 125_000_000;               // clock
parameter overrate = CLK_FREQ / (9600 * 16);    // baud rate 9600 / over rate 16 == 813.802
(* MARK_DEBUG="true" *)
reg [1:0] curr_state;
reg [1:0] next_state;

localparam  [1:0]   standby = 2'b00,
                    start = 2'b01,
                    shift = 2'b10,
                    stop = 2'b11;

always @(posedge CLK) begin
    if(RST)     curr_state <= standby;
    else        curr_state <= next_state;
end

// overrate logic
reg [9:0] cnt = 10'd0;          // overrate couter
(* MARK_DEBUG="true" *)
reg [3:0] sampling = 4'd0;      // max 15 counter
(* MARK_DEBUG="true" *)
reg [3:0] baud_cnt = 4'd0;      // max 10 counter
always @(posedge CLK) begin
    if(curr_state == standby) begin
        cnt <= 0;
        sampling <= 0;
        baud_cnt <= 0;
    end else begin
        if(cnt == (overrate)) begin
            cnt <= 10'd0;
            sampling <= sampling + 1;
            if(sampling == 14)  baud_cnt <= baud_cnt + 1;
        end else begin
            cnt <= cnt + 1;
            if(sampling == 15) sampling <= 4'd0;
        end
     end
end

// LED logic
(* MARK_DEBUG="true" *)
reg [13:0] sampling_data = 14'd0;
always @(posedge CLK) begin
    if(RST) begin
        LED <= 0;
        sampling_data <= 0;
    end else begin
        if(cnt == (overrate))           sampling_data[sampling] <= rxd;
        else                                LED <= (^sampling_data);
    end
end

// main logic
reg start_bit = 1'b0;       // start bit detect
(* MARK_DEBUG="true" *)
wire shift_ready;           // start -> shift
assign shift_ready = ((!start_bit) && (sampling == 7)) ? 1 : 0;
(* MARK_DEBUG="true" *)
reg send_done = 1'b0;       // start bit + data_bit finish
(* MARK_DEBUG="true" *)
reg [7:0] rx_data = 8'd0;   // rx data
reg [3:0] data_cnt = 4'd0;  // data count
(* MARK_DEBUG="true" *)
reg shift_done = 1'b0;      // shift sequence end
wire rx_done;
assign rx_done = (baud_cnt == 10) ? 1: 0;

always @(posedge CLK) begin
    case(curr_state)
    standby : begin
        if(!rxd)    start_bit <= 1'b1;
        else begin
            start_bit <= 1'b0;
            send_done <= 1'b0;
            data_cnt <= 4'd0;
            rx_data <= 8'd0;
            shift_done <= 1'b0;
        end
    end
    start : begin
        shift_done <= 1'b0;
        if(baud_cnt == 9) begin
            start_bit <= 1'b1;
            send_done <= 1'b1;
        end else begin
            if(baud_cnt > 0)   start_bit <= 1'b0;
            else               start_bit <= 1'b1;
        end
    end
       /* if((baud_cnt >= 1) && (sampling == 15))           start_bit <= 1'b0;
        *//*else if((baud_cnt == 9) && (sampling == 15))    send_done <= 1'b1;*//*    
        else if(baud_cnt == 9) begin
            start_bit <= 1'b1;
            if(sampling == 14) send_done <= 1'b1;
        end else                                          send_done <= 1'b0;
    end*/
    shift : begin
        if(baud_cnt == data_cnt)    shift_done <= 1'b1;
        else begin
            if(sampling == 8) begin
                if(data_cnt > 7) begin
                    shift_done <= 1'b1;
                end else begin
                    rx_data[data_cnt] <= rxd;
                    data_cnt <= data_cnt + 1;
                end
                /*end else    data_cnt <= data_cnt + 1;*/
            end else    shift_done <= 1'b0;
        end
    end
        /*if(shift_ready == 1) begin
            rx_data[data_cnt] <= rxd;
        end else begin
            shift_done <= 1'b1;             // clock delay check need
            data_cnt <= data_cnt + 1;
        end
    end*/
    /*stop : begin
        
    end*/
    endcase
end

always @(curr_state, rxd, shift_ready, send_done, shift_done, rx_done) begin
    case(curr_state)
    standby : begin
        if(!rxd)            next_state <= start;
        else                next_state <= standby;
    end
    start : begin
        if(send_done)           next_state <= stop;
        else if(shift_ready)    next_state <= shift;
        else                    next_state <= start;
    end
    shift : begin
        if(shift_done)          next_state <= start;
        else                    next_state <= shift;
    end
    stop : begin
        if(rx_done)             next_state <= standby;
        else                    next_state <= stop;
    end
    endcase
end
(* MARK_DEBUG="true" *)
reg [7:0] send_data;

always @(posedge send_done, posedge RST) begin
    if(RST)     send_data <= 0;
    else        send_data [7:0] <= rx_data [7:0];
end
(* MARK_DEBUG="true" *)
wire [3:0] digit_10, digit_1, DIGIT;
assign digit_10 = send_data / 10;
assign digit_1 = send_data % 10;
assign DIGIT = CA ? digit_10 : digit_1;

test_SegDisp uut2(
    .DIGIT(DIGIT),
    .AN(AN)
    );
    
seg_tick #(.CLK_FREQ(CLK_FREQ)) uut(
    .CLK(CLK),
    .CA(CA)
    );

endmodule