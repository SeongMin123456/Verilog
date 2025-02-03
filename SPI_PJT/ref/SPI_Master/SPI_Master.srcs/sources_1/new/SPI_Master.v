`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/31 15:34:37
// Design Name: 
// Module Name: SPI_Master
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

module SPI_Master(
    input RST,
    input CLK,
    input [1:0] CMD,     // 11 : standby, 00 : Write, 01 : Read
    input [6:0] ADDR,    // if Write : AXI_reg1[6:0], if Read : AXI_reg3[6:0]
    input [7:0] WR_Data, // AXI_reg0[7:0]
    input MISO,          // R_data[0]
    output reg [7:0] RD_Data, // AXI_reg2[7:0]
    output reg SCLK,          // 10MHz = CLK(100MHz) / 10
    output reg CSN,           // default : 1, start : 0
    output reg MOSI           // MOSI_data[15]
    );

// SCLK Clock Logic
reg [3:0] CLK_cnt = 4'd0;
always @(posedge CLK) begin
    if(curr_state == IDLE) begin
        CLK_cnt <= 4'd0;
    end else begin
        if(CLK_cnt == 9) begin
            SCLK <= 1'b0;
            CLK_cnt <= 4'd0;
        end else begin
            CLK_cnt <= CLK_cnt + 1;
            if(CLK_cnt == 8)    SCLK <= 1'b1;
            else                SCLK <= 1'b0;
        end
    end
end

// Write & Read Tranaction FSM
localparam [2:0] IDLE = 3'b000,
                 W_START = 3'b001,
                 W_DONE = 3'b010,
                 R_START = 3'b011,
                 R_LOAD = 3'b100,
                 R_DONE = 3'b111;
reg [2:0] curr_state, next_state;

always @(posedge CLK) begin
    if(RST) curr_state <= IDLE;
    else    curr_state <= next_state;
end

reg [15:0] MOSI_data = 16'd0;   // data from AXI = {ADDR, W_data, WEN} or {ADDR, 9'b100000000}
reg [7:0] R_data = 8'd0;    // data from RAM = RAM DOUT[7:0], MISO
reg [3:0] RD_cnt = 4'd0;    // read data (8bit) counter
always @(curr_state, next_state, CMD, MOSI_data, RD_cnt, CSN) begin
    case(curr_state)
        IDLE : begin
            if(!CMD)            next_state <= W_START;
            else if(CMD == 01)  next_state <= R_START;
            else                next_state <= IDLE;
        end
        W_START : begin
            if((|MOSI_data) == 0)   next_state <= W_DONE;
            else                    next_state <= W_START;
        end
        W_DONE : begin
            if(CSN)     next_state <= IDLE;
            else        next_state <= W_DONE;
        end
        R_START : begin
            if((|MOSI_data) == 0)   next_state <= R_LOAD;
            else                    next_state <= R_START;
        end
        R_LOAD : begin
            if(RD_cnt == 8)     next_state <= R_DONE;
            else                next_state <= R_LOAD;
        end
        R_DONE : begin
            if(CSN)    next_state <= IDLE;
            else       next_state <= R_DONE;
        end
    endcase
end

// at SCLK Rising Edge
always @(posedge CLK) begin
    case(curr_state)
        IDLE : begin
            if(!CMD) begin
                MOSI_data <= {ADDR, WR_Data, 1'b1 /* WEN */};
                CSN <= 1'b0;
            end else if(CMD == 01) begin
                MOSI_data <= {ADDR, 9'b100000000};      // SPI_Slave data standby time 2 SCLK
                CSN <= 1'b0;
            end else begin
                MOSI_data <= 16'd0;     // initialization
                R_data <= 8'd0;
                RD_cnt <= 4'd0;
                CSN <= 1'b1;
            end
        end
        W_START : begin
            if(SCLK)    MOSI <= MOSI_data[15];
            else        MOSI <= MOSI;
        end
        W_DONE : begin
            if(SCLK)    CSN <= 1'b1;
        end
        R_START : begin
            if(SCLK)    MOSI <= MOSI_data[15];
            else        MOSI <= MOSI;
        end
        R_LOAD : begin
            if(SCLK) begin
                R_data[0] <= MISO;
                RD_cnt <= RD_cnt + 1;
            end else begin
                R_data <= R_data;
            end
        end
        R_DONE : begin
            RD_Data <= R_data;
            if(SCLK)    CSN <= 1'b1;
        end
    endcase
end

// at SCLK Falling Edge
always @(negedge SCLK) begin
    case(curr_state)
        W_START : begin
            MOSI_data <= (MOSI_data << 1);
        end
        R_START : begin
            MOSI_data <= (MOSI_data << 1);
        end
        R_LOAD : begin
            if(RD_cnt == 8) R_data <= R_data;
            else            R_data <= (R_data << 1);
        end
    endcase
end

endmodule