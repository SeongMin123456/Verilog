`timescale 1 ns / 1 ps

    module axi_slve #
    (
        parameter integer C_S_AXI_DATA_WIDTH    = 32,
        parameter integer C_S_AXI_ADDR_WIDTH    = 4
    )
    (
        // Users to add ports here
        input UART_TX_READY,
        (* mark_debug = "true" *)
        output [7:0] UART_TX_DATA,
        output UART_TX_START,
        (* mark_debug = "true" *)
        input UART_RX_READY,
        (* mark_debug = "true" *)
        input [7:0] UART_RX_DATA,
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
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg0;
    reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg1;
    (* mark_debug = "true" *)reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg2;
    (* mark_debug = "true" *)reg [C_S_AXI_DATA_WIDTH-1:0]    slv_reg3;
    integer  byte_index;

    // I/O Connections assignments

    assign S_AXI_AWREADY    = axi_awready;
    assign S_AXI_WREADY = axi_wready;
    assign S_AXI_BRESP  = axi_bresp;
    assign S_AXI_BVALID = axi_bvalid;
    assign S_AXI_ARREADY    = axi_arready;
    assign S_AXI_RRESP  = axi_rresp;
    assign S_AXI_RVALID = axi_rvalid;
    

    //S_AXI의 port에 reg 값 할당
    
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
                 //핸드쉐이크 조건 AWVALID 와 AXI_AWREADY의 만남
                    if (S_AXI_AWVALID && S_AXI_AWREADY)                                
                      begin
                           axi_awaddr <= S_AXI_AWADDR; 
                           //Slave에서 addr 임시 저장
                           axi_awready <= 1'b0;
                           axi_wready <= 1'b1;
                           //다음이 state가 Wdata이므로 wready를 1로
                           state_write <= Wdata;                                
                           axi_bvalid <= 1'b0;                                
                      end                                
                   else                                  
                      begin                                
                        state_write <= state_write;                                
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
                     end                                
                    else                                  
                     begin                                
                       state_write <= state_write;                                
                       if (S_AXI_BREADY && S_AXI_BVALID) axi_bvalid <= 1'b0;
                     end                                              
                 end                                
              endcase                                
            end                                
          end                                

    
    always @( posedge S_AXI_ACLK )
    begin
       if(UART_RX_READY == 1)  slv_reg2[0] <= 1'b1;
	   else                    slv_reg2 <= slv_reg2;
	   
      if ( S_AXI_ARESETN == 1'b0 )
        begin
          slv_reg0 <= 0;
          slv_reg1 <= 0;
          slv_reg2 <= 0;
          slv_reg3 <= 0;
        end
      else begin
        if (S_AXI_WVALID & S_AXI_WREADY)
          begin
            case ( axi_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB])
              2'h1:
                    slv_reg1 <= S_AXI_WDATA;
              2'h2:
                    slv_reg2 <= S_AXI_WDATA;
//              2'h3:
//                    slv_reg3 <= S_AXI_WDATA;
              default : begin
                          slv_reg0 <= slv_reg0;
                          slv_reg1 <= slv_reg1;
//                          slv_reg2 <= slv_reg2;
                          slv_reg3 <= slv_reg3;
                        end
            endcase
          end      //if(S_AXI_AWVALID)     
        
//        else
//             slv_reg0 <= {31'b0,TX_READY};
//             slv_reg0[4] <= TX_READY;
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
                        axi_rvalid <= 1'b1;    // Rdata로 가려면 rvalid가 1로                                  
                        axi_arready <= 1'b0;                                      
                      end                                      
                    else state_read <= state_read;                                      
                  end                                      
                Rdata:        //At this state, slave is ready to send the data packets until the number of transfers is equal to burst length                                      
                  begin                                          
                    if (S_AXI_RVALID && S_AXI_RREADY)                                      
                      begin                                      
                        axi_rvalid <= 1'b0;                                      
                        axi_arready <= 1'b1;   // Raddr로 가려면 arready가 1로                                        
                        state_read <= Raddr;                                      
                      end                                      
                    else state_read <= state_read;                                      
                  end                                      
               endcase                                      
              end                                      
            end                                   
	// Implement memory mapped register select and read logic generation
	always @ (posedge S_AXI_ACLK) begin
	   slv_reg0 = UART_TX_READY;
	   slv_reg3 = UART_RX_DATA;
	end
	  assign UART_TX_DATA = slv_reg1[7:0];
	  assign UART_TX_START = (UART_TX_READY && axi_bvalid);
	// Add user logic here
	
	// User logic ends

	endmodule