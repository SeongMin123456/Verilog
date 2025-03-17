// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module rm_ctl_stop_watch_top
( 
input	rst       		,   // USER_DIO1 <L19>
input	clk       		,   // 125MHz
//	Start & Stop Button. Pushed High
input	btn0    		,   // Start & Stop Button. Pushed High
input	btn1    		,   // Clear & Display Change Button. Pushed High
//	
output	ld0_r,ld0_g,ld0_b,  // LED0 R,G,B Display
output	ld1_r,ld1_g,ld1_b,  // LED1 R,G,B Display
// UART
input	rxsd			,	// A10
output	txsd			,	// A11
//
output	txen			,	// A9
output	tnpd			,	// A8
output	[7:0] txpd		,	// A[7:0]
//
output	[7:0] ja		,	// Upper 2 Digit 7 Segment
output	[7:0] jb			// Lower 2 Digit 7 Segment
);

wire pls_100hz,pls_1khz;

wire clr_btn,start_stop_btn;

wire cnt_en;
wire clr_pls;
wire disp_mode;
wire [1:0] stm;

wire [6:0] us_cnt;
wire [5:0] s_cnt;
wire [6:0] m_cnt;

wire h_cat,l_cat;

wire [6:0] h_seg,l_seg;

reg [10:0] txcnt;
reg	txck;

wire rncmd;
wire rdisp_md;
wire [1:0] rstm;

wire [6:0] rmin;
wire [5:0] rsec;
wire [6:0] rusec;

// for Monitoring
//wire [3:0] bcnt;
//wire [3:0] dbcnt;
//wire [7:0] rpd;

// for Monitoring
//wire txen;
//wire tnpd;
//wire [7:0] txpd;

// for Monitoring
wire rxck;
//wire rxen;
wire rnpd;
wire [7:0] rxpd;

// TXCK Generation

always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			txcnt <= 0;	txck <= 0;
		end
//	else if (txcnt < 1084)	// 57,600 bps
	else if (txcnt < 542)	// 115,200 bps
//	else if (txcnt < 62)
		txcnt <= txcnt + 1;
	else
		begin
			txcnt <= 0;
			txck <= ~txck;
		end
end

assign jb = {h_cat,h_seg};
assign ja = {l_cat,l_seg};

// Stop Watch Uart RX

stop_watch_uart_rx u_stop_watch_uart_rx
(
.rst		(rst		),
.clk		(clk		),
//
.rxsd		(rxsd		),
//
.rxck		(rxck		),
.rxen		(rxen		),	
.rnpd		(rnpd		),	
.rxpd		(rxpd		),
//
//.bcnt		(bcnt		),
//.dbcnt		(dbcnt		),
//.rpd		(rpd		),
//
.rncmd		(rncmd		),
.rdisp_md	(rdisp_md	),
.rstm		(rstm		),
//
.rmin		(rmin		),
.rsec		(rsec		),
.rusec		(rusec		)
);

//

// Stop Watch Uart TX

stop_watch_uart_tx u_stop_watch_uart_tx
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
.txck	  		(txck  			),   // 115,200Hz
//                             
.disp_md  		(disp_mode		),
.stm	  		(stm			),
// -- Time Value
.min			(m_cnt			),   // Min Counter. 00 ~ 99 Min
.sec			(s_cnt			),   // Sec Counter. 00 ~ 59 Sec
.usec			(us_cnt			),	 // Under Sec Counter. 0.00 ~ 0.99 Sec
// -- UART Serial Output
.txen			(txen			),   // Under Sec Counter. 0.00 ~ 0.99 Sec
.tnpd			(tnpd			),   // Sec Counter. 00 ~ 59 Sec
.txpd			(txpd			),	 // Min Counter. 00 ~ 99 Min
// -- UART Serial Output
.txsd	 		(txsd 			)
);

//

stop_watch_disp_ctl u_stop_watch_disp_ctl
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
.pls_1khz  		(pls_1khz  		),   // 1kHz
// Time Counter Value Input                            
.us_cnt			(us_cnt			),   // Under Sec Counter. 0.00 ~ 0.99 Sec
.s_cnt			(s_cnt			),   // Sec Counter. 00 ~ 59 Sec
.m_cnt			(m_cnt			),	 // Min Counter. 00 ~ 99 Min
//
.disp_mode 		(disp_mode 		),    // 
// Upper Display 
.h_cat	    	(h_cat	    	),   // 
.h_seg	    	(h_seg			),    // 
// Upper Display 
.l_cat	    	(l_cat	    	),   // 
.l_seg	    	(l_seg			)    // 
);

rm_stop_watch_cnt u_stop_watch_cnt
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
.pls_in		  	(pls_100hz  	),   // 100Hz
// Button Input                            
.clr_pls    	(clr_pls    	),   // High Active Clear
.cnt_en			(cnt_en			),   // High : Count Up
// UART Received Signal
.rncmd			(rncmd			),
.rstm			(rstm			),
//		
.rmin			(rmin			),
.rsec			(rsec			),
.rusec			(rusec			),
// Counter output                           
.us_cnt			(us_cnt			),   // Under Sec Counter. 0.00 ~ 0.99 Sec
.s_cnt			(s_cnt			),   // Sec Counter. 00 ~ 59 Sec
.m_cnt			(m_cnt			)	 // Min Counter. 00 ~ 99 Min
);

rm_stop_watch_stm u_stop_watch_stm
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
.pls_100hz  	(pls_100hz  	),   // 100Hz
// Button Input                            
.clr_btn    	(clr_btn    	),   // High Active Clear
.start_stop_btn	(start_stop_btn	),   // High Active Count
// UART Received Signal
.rncmd			(rncmd			),
.rdisp_md		(rdisp_md		),
.rstm			(rstm			),
// output                           
.ld0_r			(ld0_r			),   // LED0 Red
.ld0_g			(ld0_g			),   // LED0 Green
.ld0_b			(ld0_b			),   // LED0 Blue
///
.ld1_r			(ld1_r			),   // LED1 Red
.ld1_g			(ld1_g			),   // LED1 Green
.ld1_b			(ld1_b			),   // LED1 Blue
///
.cnt_en			(cnt_en			),   // 
.clr_plso  		(clr_pls  		),   // 
.disp_mode 		(disp_mode 		),   // 
.stm	 		(stm	 		)    // 
);

debounce u_debounce_0	// Button 0 : Start & Stop Button
( 
.rst       (rst       		),   // USER_DIO1 <L19>
.clk       (clk       		),   // 125MHz
.pls_1k    (pls_1khz   		),   // 1KHz
//          
.btn_in    (btn0    		),   // Input
//                   
.btn_out   (start_stop_btn	) 
);     
         
debounce u_debounce_1	// Button 1 : Clear Button
( 
.rst       (rst       		),   // USER_DIO1 <L19>
.clk       (clk       		),   // 125MHz
.pls_1k    (pls_1khz   		),   // 1KHz
//          
.btn_in    (btn1    		),   // Input
//                   
.btn_out   (clr_btn			) 
);     
         
stop_watch_ctl_sig_gen u_stop_watch_ctl_sig_gen
( 
.rst       		(rst       		),   // USER_DIO1 <L19>
.clk       		(clk       		),   // 125MHz
//
.pls_1mhz  		(pls_1mhz  		),   // 100Hz
.pls_100hz  	(pls_100hz  	),   // 100Hz
.pls_1khz  		(pls_1khz  		)    // 1kHz
);

endmodule
