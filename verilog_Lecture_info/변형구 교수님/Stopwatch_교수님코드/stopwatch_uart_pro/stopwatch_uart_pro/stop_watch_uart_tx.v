module stop_watch_uart_tx 
(
input				rst,clk,
input				txck,
//------------------------------
input				disp_md,
input		[1:0]	stm,
input		[6:0]	min,
input		[5:0]	sec,
input		[6:0]	usec,
//------------------------------
output				txen,
output				tnpd,
output		[7:0]	txpd,
//------------------------------
output				txsd
);

//-----------------------------

wire txsds;
//wire txen,tnpd;
//wire [7:0] txpd;

assign txsd = txsds;

//--- TX Output Generation ---

tx232 u_tx232
(
.rst		(rst		),
.clk		(clk		),
			
.txck		(txck		),
.tstart		(tnpd		),
.txpd		(txpd		),
			
.txsd		(txsds		)
);

//--- TX Control ---

tx_ctl u_tx_ctl
(
.rst		(rst		),
.clk		(clk		),
.txck		(txck		),
//
.disp_md	(disp_md	),
.stm		(stm		),
//
.min		(min		),
.sec		(sec		),
.usec		(usec		),
//
.txen		(txen		),
.tnpd		(tnpd		),
.txpd		(txpd		)
);

endmodule