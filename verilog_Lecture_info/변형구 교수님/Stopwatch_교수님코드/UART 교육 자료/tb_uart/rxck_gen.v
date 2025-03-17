module rxck_gen
(
input				rst		,
input				clk		,
//
input				rxsdi	,
//
output 	reg			rxck	,	
output 	reg			rxsdo	
);

reg				rd0,rd1;

reg		[11:0]	rdcnt;
wire 	[11:0]	rdcv;
wire 	[11:0]	hrdcv;

reg				rx0,rx1;
reg				rxon;

reg		[3:0]	bcnt;

// BAUD Rate : 115,200 bps
//assign rdcv = 4329;

// BAUD Rate : 57,600 bps
//assign rdcv = 2169;

// BAUD Rate : 1M bps
assign rdcv = 125;

assign hrdcv = {1'b0,rdcv[11:1]};	// {rdcv/2}

// RXCK Generation 
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		rxsdo <= 1;
	else if (rdcnt == 0)
		rxsdo <= rd0;
end  

// RXCK Generation 
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		rxck <= 1;
	else  	
		if (rdcnt < hrdcv)
			rxck <= 0;
		else	
			rxck <= 1;
end  

// RXON Generation 
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		rxon <= 0;
    else if (rxon == 0)
		begin
			if (rd1 & ~rd0)
				rxon <= 1;
		end
	else if (bcnt == 15)
			rxon <= 0; 
end  

// RXCK Generation Counter
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			bcnt <= 15;
			rdcnt <= rdcv + 1;
		end
    else if (rxon == 0)
		begin
			if (~rd0 & rd1)
				begin
					rdcnt <= 0;	bcnt <= 0;
				end
			else	
				rdcnt <= rdcv + 1;
		end
	else
		begin
			if (rd0 != rd1)
				begin
					bcnt <= 0;
					rdcnt <= 0;		
				end	
			else if (rdcnt < rdcv)
				rdcnt <= rdcnt + 1;
			else
				begin
					rdcnt <= 0;
					if (bcnt < 15) bcnt <= bcnt + 1;
				end
		end
end  

// RXSD Edge Detection
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			rd0 <= 1;	rd1 <= 1;
		end
    else 
		begin
			rd0 <= rxsdi;	rd1 <= rd0;
		end
end  

//

endmodule
