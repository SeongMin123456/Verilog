module uart_rx 
(	
// Input
input 	rst,clk,
input 	rxsd,
// Output
output	reg rnpd_pls,
output 	reg [15:0] rpdata
);

wire	rxck,rxsdi;
wire	rxen,rnpd;
wire	[7:0] rxpd;

reg rn0,rn1;
reg [3:0] bycnt;
reg flag;	// H : Error

reg [15:0] rpd;

wire [3:0] nibl;
	  
always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		rnpd_pls <= 0;
	else if (rxen == 0) 
		rnpd_pls <= 0;	
	else if (rn1 & ~rn0)	// Falling edge of RNPD
		if ((bycnt == 5) & (rxpd == 8'h3) & (flag == 0))
			rnpd_pls <= 1;
end

always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		rpdata <= 16'hffff;
	else if (rn0 & ~rn1)	// Rising edge of RNPD
		if (bycnt == 5) 	
			if ((rxpd == 8'h03) & (flag == 0))
				rpdata <= rpd;
end

always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		flag <= 0;
	else if (rxen == 0)
		flag <= 0;
	else if (rn0 & ~rn1)	// Rising edge of RNPD
		if (flag == 0)
			begin
				if      (bycnt == 0) 	
					begin
						if (rxpd != 8'h02)	flag <= 1;
					end
				else if (bycnt == 5)
					begin
						if (rxpd != 8'h03)	flag <= 1;
					end
				else if (((rxpd[7:4] == 3) & (rxpd[3:0] < 10)) | ((rxpd[7:4] == 4) & (rxpd[3:0] > 0) & (rxpd[3:0] < 7)))
					flag <= 0;
				else
					flag <= 1;
			end
end

assign nibl = (rxpd[7:4] == 3) ? (rxpd[3:0]) : 
			  (rxpd[7:4] == 4) ? (rxpd[3:0] + 9) : 0;
			  
always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		rpd <= 16'hffff;
	else if (rn0 & ~rn1)	// Rising edge of RNPD
		if      (bycnt == 1) 	rpd[15:12] <= nibl;
		else if (bycnt == 2) 	rpd[11:08] <= nibl;
		else if (bycnt == 3) 	rpd[07:04] <= nibl;
		else if (bycnt == 4) 	rpd[03:00] <= nibl;
end

always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		bycnt <= 15;
	else if (rxen == 0)
		bycnt <= 0;
	else if (rn1 & ~rn0)	// Falling edge of RNPD
		if (bycnt < 15) 
			bycnt <= bycnt + 1;
end

always@(negedge rst, posedge clk)
begin
	if (rst == 0)
		begin
			rn0 <= 0;	rn1 <= 0;	
		end
	else
		begin
			rn1 <= rn0;	rn0 <= rnpd;
		end
end

rx232_pd u_rx232_pd
	(
	.rst		(rst		),
	.clk		(clk		),
	//
	.rxck		(rxck		),
	.rxsd		(rxsdi		),
	//
	.rxen		(rxen		),
	.rnpd		(rnpd		),
	.rxpd		(rxpd		)
	);

rxck_gen u_rxck_gen
	(
	.rst		(rst		),
	.clk		(clk		),
	//
	.rxsdi		(rxsd		),
	//
	.rxck		(rxck		),
	.rxsdo		(rxsdi		)
	);

endmodule