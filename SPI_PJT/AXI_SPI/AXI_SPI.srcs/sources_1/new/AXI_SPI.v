`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/02/04 17:49:50
// Design Name: 
// Module Name: AXI_SPI
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


module AXI_SPI#
    (
        parameter integer C_S_AXI_DATA_WIDTH    = 32,
        parameter integer C_S_AXI_ADDR_WIDTH    = 4
    )
    (
        (* mark_debug = "true" *)
        input CSN,
        (* mark_debug = "true" *)
        input [7:0] RAM_Rdata,
        (* mark_debug = "true" *)
        output [7:0] Write_data,
        (* mark_debug = "true" *)
        output [6:0] Write_Addr,
        (* mark_debug = "true" *)
        output reg [1:0] WR_CMD = 2'b11,
        // User ports ends
        // Do not modify the ports beyond this line

        input wire  S_AXI_ACLK,
        input wire  S_AXI_ARESETN,
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_AWADDR,
        input wire [2 : 0] S_AXI_AWPROT,
        input wire  S_AXI_AWVALID,
        output wire  S_AXI_AWREADY,
        input wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_WDATA,
        input wire [(C_S_AXI_DATA_WIDTH/8)-1 : 0] S_AXI_WSTRB,
        input wire  S_AXI_WVALID,
        output wire  S_AXI_WREADY,
        output wire [1 : 0] S_AXI_BRESP,
        output wire  S_AXI_BVALID,
        input wire  S_AXI_BREADY,
        input wire [C_S_AXI_ADDR_WIDTH-1 : 0] S_AXI_ARADDR,
        input wire [2 : 0] S_AXI_ARPROT,
        input wire  S_AXI_ARVALID,
        output wire  S_AXI_ARREADY,
        output wire [C_S_AXI_DATA_WIDTH-1 : 0] S_AXI_RDATA,
        output wire [1 : 0] S_AXI_RRESP,
        output wire  S_AXI_RVALID,
        input wire  S_AXI_RREADY
    );
// AXI4LITE signals
    reg     axi_awready;
    reg     axi_wready;
    reg [1 : 0]     axi_bresp;
    reg     axi_bvalid;
    reg [C_S_AXI_ADDR_WIDTH-1 : 0]  axi_araddr;
    reg     axi_arready;
    reg [1 : 0]     axi_rresp;
    reg     axi_rvalid;
    reg    [31:0]  axi_wdata;
    reg    [31:0]  axi_awaddr;

    localparam integer ADDR_LSB = (C_S_AXI_DATA_WIDTH/32) + 1;
    localparam integer OPT_MEM_ADDR_BITS = 1;
    //----------------------------------------------
    //-- Signals for user logic register space example
    //------------------------------------------------
    //-- Number of Slave Registers 4
    (* mark_debug = "true" *)reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg0;
    (* mark_debug = "true" *)reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg1;
    (* mark_debug = "true" *)reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg2;
    (* mark_debug = "true" *)wire [C_S_AXI_DATA_WIDTH-1:0]    slv_reg3;
    integer  byte_index;

    // I/O Connections assignments

    assign S_AXI_AWREADY    = axi_awready;
    assign S_AXI_WREADY = axi_wready;
    assign S_AXI_BRESP  = axi_bresp;
    assign S_AXI_BVALID = axi_bvalid;
    assign S_AXI_ARREADY    = axi_arready;
    assign S_AXI_RRESP  = axi_rresp;
    assign S_AXI_RVALID = axi_rvalid;
    
//state machine varibles
     reg [1:0] state_write;
     reg [1:0] state_read;
     
     //State machine local parameters
     localparam Idle = 2'b00,Raddr = 2'b10,Rdata = 2'b11 ,Waddr = 2'b10,Wdata = 2'b11;
    // Implement Write state machine
    // Outstanding write transactions are not supported by the slave i.e., master should assert bready to receive response on or before it starts sending the new transaction
    always @(posedge S_AXI_ACLK)
      begin
         if (S_AXI_ARESETN == 1'b0)
           begin
             axi_awready <= 0;
             axi_wready <= 0;
             axi_bvalid <= 0;
             axi_bresp <= 0;
             axi_wdata <= 32'd0;
             state_write <= Idle;
             WR_CMD <= 2'b11;
           end
         else
           begin
             case(state_write)
               Idle:
                 begin
                   if(S_AXI_ARESETN == 1'b1)
                     begin
                       axi_awready <= 1'b1;
                       axi_wready <= 1'b0;
                       state_write <= Waddr;
                     end
                   else state_write <= state_write;
                 end
               Waddr:
                 begin
                    if (S_AXI_AWVALID && S_AXI_AWREADY)     // handshake
                      begin
                           axi_awaddr <= S_AXI_AWADDR;
                           axi_awready <= 1'b0;
                           axi_wready <= 1'b1;
                           state_write <= Wdata;
                           axi_bvalid <= 1'b0;
                           WR_CMD <= 2'b11;
                      end
                   else
                      begin
                        state_write <= state_write;
                        WR_CMD <= 2'b11;
                        if (S_AXI_BREADY && S_AXI_BVALID) axi_bvalid <= 1'b0;
                       end
                 end
              Wdata:        //At this state, slave is ready to receive the data packets until the number of transfers is equal to burst length
                 begin
                   if (S_AXI_WVALID & S_AXI_WREADY)
                     begin
                       state_write <= Waddr;
                       axi_bvalid <= 1'b1;
                       axi_awready <= 1'b1;
                       axi_wready <= 1'b0;
                       case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
                            2'h0 : WR_CMD <= 2'b00;
                            2'h2 : WR_CMD <= 2'b01;
                            default : WR_CMD <= 2'b11;
                        endcase
                     end
                    else
                     begin
                       state_write <= state_write;
                       if (S_AXI_BREADY && S_AXI_BVALID) begin
                        axi_bvalid <= 1'b0;
                        WR_CMD <= 2'b11;
                       end
                     end
                 end
              endcase
            end
          end

reg read_state = 1'b0;
    always @( posedge S_AXI_ACLK )
    begin
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          slv_reg0 <= 0;
          slv_reg1 <= 0;
          slv_reg2 <= 0;
          //slv_reg3 <= 0;
        end
      else begin
        if (S_AXI_WVALID & S_AXI_WREADY)
          begin
            case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
              2'h0:
                    slv_reg0 <= S_AXI_WDATA;
              2'h1:
                    slv_reg1 <= S_AXI_WDATA;
              2'h2:
                    slv_reg2 <= S_AXI_WDATA;
//              2'h3:
//                    slv_reg3 <= S_AXI_WDATA;  // RAM_Rdata : read mode register
              default : begin
                          slv_reg0 <= slv_reg0;
                          slv_reg1 <= slv_reg1;
                          slv_reg2 <= slv_reg2;
//                          slv_reg3 <= slv_reg3;
                        end
            endcase
           end      //if(S_AXI_AWVALID)
        else
            if(!CSN)    read_state = 1'b1;
            else begin
                if(read_state)  slv_reg2 <= 8'b10000000;
                read_state = 1'b0;
            end
        end
    end    //aways
    
// Implement read state machine
      always @(posedge S_AXI_ACLK)
        begin
          if (S_AXI_ARESETN == 1'b0)
            begin
             //asserting initial values to all 0's during reset
             axi_arready <= 1'b0;
             axi_rvalid <= 1'b0;
             axi_rresp <= 1'b0;
             state_read <= Idle;
            end
          else
            begin
              case(state_read)
                Idle:     //Initial state inidicating reset is done and ready to receive read/write transactions
                  begin
                    if (S_AXI_ARESETN == 1'b1)
                      begin
                        state_read <= Raddr;
                        axi_arready <= 1'b1;
                      end
                    else state_read <= state_read;
                  end
                Raddr:        //At this state, slave is ready to receive address along with corresponding control signals
                  begin
                    if (S_AXI_ARVALID && S_AXI_ARREADY)
                      begin
                        state_read <= Rdata;
                        axi_araddr <= S_AXI_ARADDR;
                        axi_rvalid <= 1'b1;
                        axi_arready <= 1'b0;
                      end
                    else state_read <= state_read;
                  end
                Rdata:        //At this state, slave is ready to send the data packets until the number of transfers is equal to burst length
                  begin
                    if (S_AXI_RVALID && S_AXI_RREADY)
                      begin
                        axi_rvalid <= 1'b0;
                        axi_arready <= 1'b1;
                        state_read <= Raddr;
                      end
                    else state_read <= state_read;
                  end
               endcase
              end
            end
	// Implement memory mapped register select and read logic generation

	  /*always @ (posedge S_AXI_ACLK) begin
	       slv_reg3 = UART_RX_DATA;
	  end*/
	  assign Write_Addr[6:0] = (!WR_CMD) ? slv_reg1[6:0] : (WR_CMD == 2'b01) ? slv_reg2[6:0] : 0;
	  assign Write_data[7:0] = slv_reg0[7:0];
	  assign slv_reg3[7:0] = RAM_Rdata[7:0];

	// Add user logic here
	assign S_AXI_RDATA = (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h0) ? slv_reg0 : (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h1) ? slv_reg1 : (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h2) ? slv_reg2 : (axi_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] == 2'h3) ? slv_reg3 :0;
	// User logic ends

endmodule
