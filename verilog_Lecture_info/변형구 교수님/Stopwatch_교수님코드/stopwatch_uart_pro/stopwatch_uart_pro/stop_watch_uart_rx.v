module stop_watch_uart_rx 
(
input				rst,clk,
//------------------------------
input				rxsd		,
//------------------------------
output				rxck		,
output				rxen		,
output				rnpd		,
output		[7:0]	rxpd		,
//------------------------------
//output		[3:0]	bcnt		,
//output		[3:0]	dbcnt		,
//output		[7:0]	rpd			,
//------------------------------
output				rncmd		,
output				rdisp_md	,
output		[1:0]	rstm		,
//------------------------------
output		[6:0]	rmin		,
output		[5:0]	rsec		,
output		[6:0]	rusec		
);

//-----------------------------

//wire rxck;
wire rxsdi;
//wire rxen,rnpd;
//reg [7:0] rxpds;

//--- RX Control ---

//always@(negedge rst, posedge clk)
//begin
//	if (rst == 0)
//		rxpds <= 8'hff;
//	else
//		rxpds <= rxpd;
//end

rx_ctl u_rx_ctl
(
.rst		(rst		),
.clk		(clk		),
//
.rxen		(rxen		),
.rnpd		(rnpd		),
.rxpd		(rxpd		),
//
.rncmd		(rncmd		),
.rdisp_md	(rdisp_md	),
.rstm		(rstm		),
//
.rmin		(rmin		),
.rsec		(rsec		),
.rusec		(rusec		)
);

rx232_pd u_rx232_pd
(
.rst		(rst		),
.clk		(clk		),
			
.rxck		(rxck		),
.rxsd		(rxsd		),
			
//.bcnt		(bcnt		),
//.dbcnt		(dbcnt		),
//.rpd		(rpd		),

.rxen		(rxen		),	
.rnpd		(rnpd		),	
.rxpd		(rxpd		)
);

rxck_gen u_rxck_gen
(
.rst		(rst		),
.clk		(clk		),
			
.rxsdi		(rxsd		),
//.rxen		(rxen		),	
			
.rxck		(rxck		),	
.rxsdo		(rxsdi		)
);

endmodule