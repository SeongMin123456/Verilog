`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/03 11:52:39
// Design Name: 
// Module Name: SPI_Slave
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

module SPI_Slave(
    input RST,
    input SCLK,
    input CSN,
    input MOSI,
    input [7:0] RAM_Rdata,      // RAM_DOUT
    output reg MISO,
    output reg RAM_WEN,         // RAM_WEN
    output reg [6:0] RAM_Addr,  // RAM_ADDR
    output reg [7:0] RAM_Wdata  // RAM_DIN
    );

// Write & Read Transaction FSM
localparam [2:0] IDLE = 3'b000,
                 W_START = 3'b001,
                 W_DONE = 3'b010,
                 R_START = 3'b011,
                 R_LOAD = 3'b100,
                 R_DONE = 3'b111;
             
reg [2:0] curr_state, next_state;

always @(posedge SCLK) begin
    if(RST) curr_state <= IDLE;
    else    curr_state <= next_state;
end

reg [15:0] in_data = 16'd0;   // Read From Master, Trasfer to RAM
reg temp = 1'd0;              // MOSI Capture bit
reg [4:0] data_cnt;           // in_data counter
reg [3:0] MISO_cnt = 4'd0;    // MISO output counter
reg R_start_done = 1'b0;        // R_LOAD Trigger
wire mode = (!CSN && !data_cnt) ? MOSI : 0;     // 1 : write Mode, 0 : Read Mode

always @(curr_state, next_state, mode, CSN, RAM_WEN, R_start_done, data_cnt, MISO_cnt) begin
    case(curr_state)
        IDLE : begin
            if(mode && (!CSN))            next_state <= W_START;
            else if((!mode) && (!CSN))    next_state <= R_START;
            else                          next_state <= IDLE;
        end
        W_START : begin
            if(data_cnt == 17)            next_state <= W_DONE;
            else                          next_state <= W_START;
        end
        W_DONE : begin
            if(RAM_WEN)                   next_state <= IDLE;
            else                          next_state <= W_DONE;
        end
        R_START : begin
            if(R_start_done)              next_state <= R_LOAD;
            else                          next_state <= R_START;
        end
        R_LOAD : begin
            if(MISO_cnt == 8)             next_state <= R_DONE;
            else                          next_state <= R_LOAD;
        end
        R_DONE : begin
            if(CSN)                       next_state <= IDLE;
            else                          next_state <= R_DONE;
        end
    endcase
end

// SCLK Rising Edge
always @(posedge SCLK) begin
    case(curr_state)
        IDLE : begin
            temp <= 1'b0;
            RAM_Addr <= 7'd0;
            RAM_Wdata <= 8'd0;
            RAM_WEN <= 1'b0;
            MISO_cnt <= 4'd0;
        end
        W_START : begin
            temp <= MOSI;
        end
        W_DONE : begin
            if(CSN) begin
                RAM_Addr[6:0] <= in_data[15:9];
                RAM_Wdata[7:0] <= in_data[8:1];
                RAM_WEN <= in_data[0];
            end else begin
                RAM_Addr <= 7'd0;
                RAM_Wdata <= 8'd0;
                RAM_WEN <= 1'b0;
            end
        end
        R_START : begin
            if(data_cnt < 8)    temp <= MOSI;
            else                RAM_Addr[6:0] <= in_data[6:0];
        end
        R_LOAD : begin  // MUX
            MISO <= RAM_Rdata[7 - MISO_cnt];
            MISO_cnt <= MISO_cnt + 1;
        end
        R_DONE : begin
            MISO <= MISO;
        end
    endcase
end

// SLCK Falling Edge
always @(negedge SCLK) begin
    case(curr_state)
        IDLE : begin
            data_cnt <= 5'd0;
            in_data <= 16'd0;
            R_start_done <= 1'b0;
        end
        W_START : begin
            if(data_cnt < 17)   begin
                in_data <= {in_data[14:0], temp};
                data_cnt <= data_cnt + 1;
            end
        end
//        W_DONE : begin
            
            
//        end
        R_START : begin
            if(data_cnt < 8) begin
                in_data <= {in_data[14:0], temp};
                data_cnt <= data_cnt + 1;
                R_start_done <= 1'b0;
            end else    R_start_done <= 1'b1;
        end
//        R_LOAD : begin   // MUX
//            if(MISO_cnt < 8)    MISO_cnt <= MISO_cnt + 1;
//            else                MISO <= MISO;
//        end
//        R_DONE : begin
        
//        end
    endcase 
end

endmodule