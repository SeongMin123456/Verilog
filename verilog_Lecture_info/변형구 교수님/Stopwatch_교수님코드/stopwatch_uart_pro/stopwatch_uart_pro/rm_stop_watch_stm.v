// Digilent Cora-Z7 Board
//-- xc7z007sclg400-1

module rm_stop_watch_stm
( 
input	rst       		,   // USER_DIO1 <L19>
input	clk       		,   // 125MHz>
input	pls_100hz  		,   // 100Hz
//	
input	clr_btn    		,   // High Active Clear
input	start_stop_btn	,   // High Active Count
//------------------------------
input			rncmd	,
input			rdisp_md,
input	[1:0]	rstm	,
//	
output	reg ld0_r,ld0_g,ld0_b,   // Stop Watch State LED Display
output	reg ld1_r,ld1_g,ld1_b,   // Display Mode LED Display
//
output	reg cnt_en,clr_plso ,
output	reg	disp_mode		,	// [0 : Sec & USec Display], [1 : Min & Sec Display]
output	reg [1:0]	stm
);

reg rnc0,rnc1;
reg pl0,pl1;
reg st0,st1;

reg cl0,cl1;
reg [6:0] clr_chk_cnt;
reg clr_pls;

//reg [1:0] stm;	// [0 : Init Mode], [1 : Counting Mode, [2 : Pause Mode]
//reg disp_mode;	// [0 : Sec & USec Display], [1 : Min & Sec Display]

// Detect Edge of RNCMD       
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			rnc0 <= 0;	rnc1 <= 0;	
		end
    else 
		begin	
			rnc0 <= rncmd;	rnc1 <= rnc0;	
		end
end        
         
// Output for Stop_Watch_Counter Control Mode         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			cnt_en <= 0;	clr_plso <= 0;	
		end
    else if (pl1 & ~pl0)
		begin	
			clr_plso <= clr_pls;
			cnt_en <= 0;	
			if (stm == 1)	// Counting Mode
				cnt_en <= 1;
		end
end        
         
// LED Control for Display Mode         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			ld1_r <= 0;	ld1_g <= 1;	ld1_b <= 0;
		end
    else if (pl1 & ~pl0)
		if (disp_mode == 0)		// Sec, Usec Display Mode
			begin	ld1_r <= 0;	ld1_g <= 1;	ld1_b <= 0;	end
		else	
			begin	ld1_r <= 0;	ld1_g <= 0;	ld1_b <= 1;	end
end        
         
// LED Control for State Machine         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
		begin
			ld0_r <= 0;	ld0_g <= 1;	ld0_b <= 0;
		end
    else if (pl1 & ~pl0)
		case (stm)
		2'b00 :		// Initial Mode
			begin	ld0_r <= 0;	ld0_g <= 1;	ld0_b <= 0;	end
		2'b01 :		// Count Mode
			begin	ld0_r <= 0;	ld0_g <= 0;	ld0_b <= 1;	end
		2'b10 :		// Pause Mode
			begin	ld0_r <= 1;	ld0_g <= 1;	ld0_b <= 1;	end
		default	: 
			begin	ld0_r <= 0;	ld0_g <= 0;	ld0_b <= 0;	end
		endcase	
end        
         
// Display Mode Control         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        disp_mode <= 0;
    else if (rnc0 & ~rnc1)
        disp_mode <= rdisp_md;
    else if (pl0 & ~pl1)
		//if (clr_chk_cnt == 99) 
		//	disp_mode <= ~disp_mode;
        if (stm == 0)
            disp_mode <= 0;     // Sec & U_Sec Display
		else if (cl1 & ~cl0)		// Falling Edge of CLR_BTN. <Key Off>
		  if ((clr_chk_cnt < 99) & (stm > 0)) // <Short Pushed CLR Button> and Not Clear Mode
			 disp_mode <= ~disp_mode;
end        
         
// STM Control State Machine         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        stm <= 0;
    else if (rnc0 & ~rnc1)
        stm <= rstm;
    else if (pl0 & ~pl1)
		case (stm)
		2'b00 :		// Initial Mode
			if (st0 & ~st1) stm <= 1;
		2'b01 :		// Count Mode
			if (st0 & ~st1) stm <= 2;
		2'b10 :		// Pause Mode
			if (st0 & ~st1) 	stm <= 1;
			else if (clr_pls)	stm <= 0;
		default	: stm <= stm;
		endcase	
end        
         
// CLR Button Check for Pushed 1sec
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        clr_pls <= 0;
    else if (rnc0 & rnc1)
		begin
			if (rstm == 0)
				clr_pls <= 1;
		end
    else if (pl0 & ~pl1)
		begin
			clr_pls <= 0;
		//	if (cl1 & ~cl0)		// Falling Edge of CLR_BTN. <Key Off>
			//	if ((clr_chk_cnt < 99) & (stm == 2)) 	// <Short Pushed CLR Button> & <Count Pause Mode>
			//		clr_pls <= 1;
	   	       if ((clr_chk_cnt == 99)  & (stm == 2)) 	// <Long Pushed CLR Button> & <Count Pause Mode>
		      		clr_pls <= 1;
		end
end        
         
// CLR Button Check Counter for Pushed 1sec
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        clr_chk_cnt <= 0;
    else if (pl0 & ~pl1)
		if (cl0 & ~cl1)		// Rising Edge of CLR_BTN. <Pushed>
			clr_chk_cnt <= 0;
		else if (cl0 == 1)
			if (clr_chk_cnt < 100)
				clr_chk_cnt <= clr_chk_cnt + 1;			
end        
         
// Detect Edge of Button Input         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            cl0 <= 0;    cl1 <= 0;
            st0 <= 0;    st1 <= 0;
        end
    else if (pl0 & ~pl1)
        begin
            cl0 <= clr_btn;			cl1 <= cl0;
            st0 <= start_stop_btn;	st1 <= st0;
        end
end        
         
// Detect Edge of 100Hz Pulse         
always@(negedge rst, posedge clk)
begin
    if (rst == 0)
        begin
            pl0 <= 0;    pl1 <= 0;
        end
    else
        begin
            pl0 <= pls_100hz;	pl1 <= pl0;
        end
end        
         
endmodule
