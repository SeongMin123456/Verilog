module tb_uart 
(	
// Input
input 	rst,clk,
input 	start,txck,gate,
input 	[15:0] pdata
);

wire	rxsd,txsd;
wire	rnpd_pls;
wire	[15:0] rpdata;

assign rxsd = gate & txsd;

uart_rx u_uart_rx
	(
	.rst		(rst		),
	.clk		(clk		),
	//
	.rxsd		(rxsd		),
	//
	.rnpd_pls	(rnpd_pls	),
	.rpdata		(rpdata		)
	);

uart_tx u_uart_tx
	(
	.rst		(rst		),
	.clk		(clk		),
	.start		(start		),
	.txck		(txck		),
	.pdata		(pdata		),
	//
	.txsd		(txsd		)
	);

endmodule