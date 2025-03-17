`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/18 15:05:28
// Design Name: 
// Module Name: uart_rx_top_tb
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


module uart_rx_top_tb;
parameter CLK_PD = 8.0;
parameter BAUD_RATE = 300;
parameter CLK_FREQ = BAUD_RATE * 16 * 2;

reg rst, clk, rxd;
wire    ca, err;
wire [6:0] an;

uart_rx_top #(.CLK_FREQ(CLK_FREQ), .BAUD_RATE(BAUD_RATE))
    uut   (
    .RST        (rst),
    .CLK        (clk),
    .RXD        (rxd),
    .AN         (an),
    .CA         (ca),
    .PARITY_ERR (err)
    );
// rst, clk
initial begin
    rst = 1'b1;
    #(CLK_PD*10);
    rst = 1'b0;
end // initial rst
initial clk = 1'b0;
always #(CLK_PD/2) clk = ~clk;

// rxd generate

parameter bit_period = (CLK_FREQ / BAUD_RATE) * CLK_PD;
reg [2:0] bit_cnt;
reg [7:0] tx_data;

initial begin
    rxd = 1;
    bit_cnt = 3'd0;
    tx_data = 8'd0;
    wait (rst == 1'b0);
    #(CLK_PD*20);
    tx_data = 8'h43;    // 'A'
    rxd = 1'b0; // start bit
    #bit_period;
    repeat(8) begin
        rxd = tx_data[bit_cnt];
        #bit_period;
        bit_cnt = bit_cnt + 1;
    end // repeat
    rxd = ^tx_data;     // parity
    #bit_period;
    rxd = 1'b1;     //stop
    #bit_period;
    
    #500;
    $finish;
end // initial rxd    
            
endmodule
