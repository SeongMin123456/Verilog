module rx232_pd
(
input				rst		,
input				clk		,
//
input				rxck	,
input				rxsd	,
//
output 	reg			rxen	,	
output 	reg			rnpd	,	
output	reg	[7:0]	rxpd	
);

reg	[3:0]	bcnt;
reg	[3:0]	dbcnt;
reg	[7:0]	rpd	;

reg	[3:0]	rcnt;

reg			rc0,rc1;
wire		rcenr,rcenf;

reg			rd0;

// RXPD Capture 
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		rxen <= 0;
    else 
		if ((rcnt < 15) | (bcnt < 15))
			rxen <= 1;
		else
			rxen <= 0;
end  

always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		rnpd <= 0;
    else if (rcenr) 
	/*	begin
			rnpd <= 0;
			if ((rcnt >= 4) & (rcnt <= 5))
				rnpd <= 1;
		end
	*/	
		if ((rcnt >= 4) & (rcnt <= 5))
			rnpd <= 1;
		else
			rnpd <= 0;
end  

always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		rxpd <= 8'hff;
    else if ((rcenr) & (dbcnt == 8))
		rxpd <= rpd;
end  

// RCNT Generation 
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
    	begin
			rcnt <= 4'hf;
			dbcnt <= 4'hf;
		end
    else if (rcenf) 
    	begin     
    		dbcnt <= bcnt;
			if (bcnt == 9)
				rcnt <= 0;
			else if (rcnt < 9)
				rcnt <= rcnt + 1;
			else	
				rcnt <= 15;
		end
end  

// RPD Capture 
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		rpd <= 8'hff;
    else if (rcenf)
		//rpd <= {rd0,rpd[7:1]};
		
		case (bcnt)
		4'h1 : rpd[0] <= rd0;
		4'h2 : rpd[1] <= rd0;
		4'h3 : rpd[2] <= rd0;
		4'h4 : rpd[3] <= rd0;
		4'h5 : rpd[4] <= rd0;
		4'h6 : rpd[5] <= rd0;
		4'h7 : rpd[6] <= rd0;
		4'h8 : rpd[7] <= rd0;
		endcase
		
end  

// BCNT : Bit Counter
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			rd0 <= 1;	bcnt <= 4'hf;
		end
    else if (rcenr)
		begin	
			rd0 <= rxsd;
			if ((bcnt >= 9) & (rxsd == 0))
				bcnt <= 0;
			else if (bcnt < 9)
				bcnt <= bcnt + 1;
			else	
				bcnt <= 15;
		end
end  

// RXCK Edge Detection
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			rc0 <= 0;	rc1 <= 0;
		end
    else 
		begin
			rc0 <= rxck;	rc1 <= rc0;
		end
end  

assign rcenr = (rc0 & ~rc1) ? 1 : 0;
assign rcenf = (rc1 & ~rc0); // ? 1 : 0;

//

endmodule
