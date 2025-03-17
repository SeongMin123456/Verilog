module rx_ctl 
(
input				rst,clk,
//------------------------------
input				rxen,
input				rnpd,
input		[7:0]	rxpd,
//------------------------------
output	reg			rncmd,
output	reg			rdisp_md,
output	reg	[1:0]	rstm,
output	reg	[6:0]	rmin,
output	reg	[5:0]	rsec,
output	reg	[6:0]	rusec
);

//-----------------------------

reg rn0,rn1;
wire rnenr,rnenf;

wire [3:0] z4,hnib,lnib;
reg [3:0] hexv;

reg flag;

reg [3:0] bycnt;

reg			disp_md;
reg	[1:0]	stm;
reg	[6:0]	min;
reg	[5:0]	sec;
reg	[6:0]	usec;

//------------ Output Set ---------------

always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		begin
			rncmd <= 0;
			rdisp_md <= 0;
			rstm <= 0;
			rmin <= 0;
			rsec <= 0;
			rusec <= 0;
		end
	else if (rxen == 0)	rncmd <= 0;		
	else if ((flag == 0) & (rnenf == 1))
		if (bycnt == 8)
			begin
				rdisp_md 	<= disp_md	;
				rstm 		<= stm 		;
				rmin 		<= min 		;
				rsec 		<= sec 		;
				rusec 		<= usec 	;
				rncmd		<= 1;
			end
			
end		

//------------ Data Catch ---------------

always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		begin
			disp_md <= 0;
			stm <= 0;
			min <= 0;
			sec <= 0;
			usec <= 0;
		end
	else if (rnenf == 1)
		case (bycnt)
		4'd1 :	begin	disp_md <= hexv[2];	stm <= hexv[1:0];	end
		4'd2 :	min[6:4] <= hexv[2:0];
		4'd3 :	min[3:0] <= hexv;
		4'd4 :	sec[5:4] <= hexv[1:0];
		4'd5 :	sec[3:0] <= hexv;
		4'd6 :	usec[6:4] <= hexv[2:0];
		4'd7 :	usec[3:0] <= hexv;
		endcase
end		

//------------ Flag Set ---------------

always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		flag <= 1;
	else if ((rxen == 1) & (rn1 & ~rn0))
		if (bycnt == 0)
			begin
				if (rxpd == 8'h02)	flag <= 0;
				else				flag <= 1;
			end
		else if (flag == 0) 
			if (bycnt == 8)
				begin
					if (rxpd == 8'h03)	flag <= 0;
					else				flag <= 1;
				end
			else	
				begin
					if ((hnib == 3) | (hnib == 4))	flag <= 0;
					else							flag <= 1;
				end
			
		
end		

//------------ Hexa Value Set ---------------

always@(*)
begin
	if      (hnib == 3) 
		begin	
			if (lnib < 10)	hexv <= lnib;
		end
	else if (hnib == 4) 
		begin
			if ((lnib > 0) & (lnib < 7))
				hexv <= lnib + 9;
		end
	else
		hexv <= 4'hf;
end		

//------------ Byte Counter ---------------

always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		bycnt <= 4'hf;
	else if (rxen == 0)
		bycnt <= 4'hf;
	else if (rnenr == 1)
		if (rxpd == 8'h02)
			bycnt <= 0;
		else if (bycnt < 8)
			bycnt <= bycnt + 1;
		else
			bycnt <= 4'hf;
end		

//------------- RNPD Edge Detection ----------------
assign rnenr = ((rn0 & ~rn1) == 1) ? (1) : (0);	// Rising Edge Pulse
assign rnenf = ((~rn0 & rn1) == 1) ? (1) : (0);	// Falling Edge Pulse
				
always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		begin
			rn0 <= 0;
			rn1 <= 0;
		end
	else	
		begin	
			rn0 <= rnpd;
			rn1 <= rn0;
		end
end		
		
//---------------------------------------

assign hnib = rxpd[7:4];
assign lnib = rxpd[3:0];

assign z4 = 0;

endmodule