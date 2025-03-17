module uart_tx 
(	
// Input
input 	rst,clk,
input 	start,txck,
input 	[15:0] pdata,
// Output
output	txsd
);

reg			st0,st1;
reg			tc0,tc1;
reg 		[15:0] tpdata;
reg 		[3:0] bcnt,bycnt;

wire 		[3:0] nibl;
//reg 		txen;
reg 		tnpd;
reg 		[7:0] txpd;

//module tx232 (rst,clk,start,txck,txpd,txsd);

tx232 u_tx232
	(
	.rst		(rst		),
	.clk		(clk		),
	.tstart		(tnpd		),
	.txck		(txck		),
	.txpd		(txpd		),
	//
	.txsd		(txsd		)
	);

//----------------------------------

// Timing Control & Data Capture for Sending
always @(negedge rst,posedge clk)
	if (rst == 0) 
		begin
			tnpd <= 0;	txpd <= 8'hff;
		end
	else if ((tc0 & ~tc1) == 1)
		begin
			tnpd <= 0;	
			if ((bcnt >= 3) && (bcnt <= 4))
				tnpd <= 1;
			//--
			if      (bycnt >  5)	txpd <= 8'hff;
			else if (bycnt == 0)	txpd <= 8'h02;
			else if (bycnt == 5)	txpd <= 8'h03;
			else
				if (nibl < 10)
					txpd <= {4'h3,nibl};
				else	
				//	txpd <= {4'h4,(nibl - 9)};
					begin
						txpd[7:4] <= 4'h4;	txpd[3:0] <= (nibl - 9);
					end
		end
		
//----------------------------------

assign nibl = (bycnt == 1) ? tpdata[15:12] :
			  (bycnt == 2) ? tpdata[11:08] :
			  (bycnt == 3) ? tpdata[07:04] :
			  (bycnt == 4) ? tpdata[03:00] : 4'hf;			  

//----------------------------------

// Timing Control & Data Capture for Sending
always @(negedge rst,posedge clk)
	if (rst == 0) 
		begin
			bcnt <= 15;	bycnt <= 15;	tpdata <= 16'hffff;
		end
	else if ((tc1 & ~tc0) == 1)
		begin
			if ((st0 & ~st1) == 1)
				begin
					bcnt <= 0;	bycnt <= 0;		tpdata <= pdata;			
				end
			else if (bcnt < 9)
				bcnt <= bcnt + 1;
			else if (bycnt < 5)
				begin
					bcnt <= 0;
					bycnt <= bycnt + 1;
				end
			else	
				begin
					bcnt <= 15;	bycnt <= 15;
				end				
		end
		
//----------------------------------

// Start Signal Generation from pls_c
always @(negedge rst,posedge clk)
	if (rst == 0) 
		begin
			st0 <= 0;	st1 <= 0;	
		end
	else
		begin
			if ((tc0 & ~tc1) == 1)
				begin
					st1 <= st0;	st0 <= start;					
				end
		end

// 
always @(negedge rst,posedge clk)
	if (rst == 0) 
		begin
			tc0 <= 0;	tc1 <= 0;
		end
	else
		begin
			tc1 <= tc0;	tc0 <= txck;			
		end

endmodule