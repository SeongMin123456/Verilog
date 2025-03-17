module tx_ctl 
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
output	reg			txen,
output	reg			tnpd,
output	reg	[7:0]	txpd
);

//-----------------------------

reg tc0,tc1;
wire tcenr,tcenf;
reg [2:0] ctl0,ctl1;

wire [3:0] z4;
reg [3:0] hexv;
reg [7:0] ascv;

reg sten;
reg [3:0] bcnt;
reg [3:0] bycnt;

//------------ TXEN ---------------
always@(negedge rst,posedge clk)
begin
	if (!rst)
		txen <= 0;
	else 
		if (tcenf == 1)
			if (bycnt < 9)
				txen <= 1;
			else 
				txen <= 0;
end		

//------------ TNPD ---------------
always@(negedge rst,posedge clk)
begin
	if (!rst)
		tnpd <= 0;
	else 
		if (tcenf == 1)
			if ((bcnt >= 2) && (bcnt <= 4))
				tnpd <= 1;
			else 
				tnpd <= 0;
end		

//------------ TXPD Generation ---------------
always@(negedge rst,posedge clk)
begin
	if (!rst)
		txpd <= 8'hff;
	else if (tcenf == 1)		
		case (bycnt)
			4'h0 : 	txpd <= 8'h02;
			4'h8 : 	txpd <= 8'h03;
			4'hf : 	txpd <= 8'hff;
			default	txpd <= ascv;
		/*
			3'h1 : txpd <= {4'h3,bcd[15:12]};
			3'h2 : txpd <= {4'h3,bcd[11:08]};
			3'h3 : txpd <= {4'h3,bcd[07:04]};
			3'h4 : txpd <= {4'h3,bcd[03:00]};
			3'h5 : txpd <= 8'h03; 
			3'h7 : txpd <= 8'hff;
		*/
		endcase
end		

// -- ASCII Data Generationion

always@(*)
begin
	if (hexv < 10)	ascv <= {4'd3, hexv};
//	else			ascv[4] <= {4'd4, (hexv - 9)};
	else			
		begin
			ascv[7:4] <= 4'd4;	ascv[3:0] <= hexv - 9;
		end
end		
		
// -- Nibble Data Selection

always@(*)
begin
	case(bycnt)
	4'd1 : hexv <= z4 + ctl0;
	4'd2 : hexv <= z4 + min[6:4];
	4'd3 : hexv <= z4 + min[3:0];
	4'd4 : hexv <= z4 + sec[5:4];
	4'd5 : hexv <= z4 + sec[3:0];
	4'd6 : hexv <= z4 + usec[6:4];
	4'd7 : hexv <= z4 + usec[3:0];
	default : hexv <= 15;
	endcase	
end		
		
//------------ Packet Counter ---------------
always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		bycnt <= 4'hf;
	else if (tcenr == 1)
		if (sten == 1)
			bycnt <= 0;
		else if (bcnt == 9)
			begin
				if (bycnt < 8)
					bycnt <= bycnt + 1;
				else
					bycnt <= 4'hf;
			end
end		

//------------ Bit Counter  ---------------
always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		bcnt <= 4'hf;
	else if (tcenr == 1)
		if (sten == 1)
			bcnt <= 0;
		else if (bcnt < 9)
			bcnt <= bcnt + 1;
		else 
			if (bycnt < 8)
				bcnt <= 0;
			else
				bcnt <= 4'hf;
end		
			
//------------- START Rising Edge Detection ---------------
always@(*)
begin
	if (ctl0 != ctl1)
		sten <= 1;
	else
		sten <= 0;
end		
		
				
always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		begin
			ctl0 <= 7;
			ctl1 <= 7;
		end
	else if (tcenf == 1)
		begin	
			ctl0 <= {disp_md,stm};
			ctl1 <= ctl0;
		end
end		
		
//------------- TXCK Edge Detection ----------------
assign tcenr = ((tc0 & ~tc1) == 1) ? (1) : (0);	// Rising Edge Pulse
assign tcenf = ((~tc0 & tc1) == 1) ? (1) : (0);	// Falling Edge Pulse
				
always@(negedge rst , posedge clk)
begin
	if (rst == 0) 
		begin
			tc0 <= 0;
			tc1 <= 0;
		end
	else	
		begin	
			tc0 <= txck;
			tc1 <= tc0;
		end
end		
		
//---------------------------------------

assign z4 = 0;

endmodule