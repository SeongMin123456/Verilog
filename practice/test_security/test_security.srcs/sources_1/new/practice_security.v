`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/30 12:20:35
// Design Name: 
// Module Name: practice_security
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module practice_security(
    input RST,
    input CLK,
    input KEY,
    input SENSOR,
    output reg ALARM,
    output CA,
    output [6:0] AN
    );

parameter CLK_FREQ = 125_000_000;
reg enable;
wire [26:0] tick;               // CLK_FREQ/100
reg [26:0] cnt1;                // 1250000 counter
reg [26:0] cnt2;                // 1250000 counter
reg [9:0] start_sensing;        // 5sec counter, tick * 500
reg [1:0] curr_state, next_state;
wire [3:0] digit;
reg count_done; 
localparam [1:0] disarmed = 2'b00,    // unlock : KEY = 0
                 armed = 2'b01,       // lock : KEY = 1
                 sensing = 2'b10,     // external sense : SENSER = 1
                 alarm_led = 2'b11;   // time 5sec after : ALARM = 1

assign CA = enable;
assign tick = CLK_FREQ/100; // 10ms
assign digit[3:1] = 3'b0;
assign digit[0] = enable ? curr_state[1] : curr_state[0];

always @(posedge CLK) begin
    if(RST)     curr_state <= disarmed;
    else        curr_state <= next_state;
end // always

always @(posedge CLK) begin
    if(RST) begin
        cnt1 <= 0;
        cnt2 <= 0;
        start_sensing <= 0;
    end else begin
        cnt1 <= cnt1 + 1;
        if(cnt1 == (tick -1)) begin
            cnt1 <= 0;
            enable <= ~enable;
            end
    end
end  // always

always @(posedge CLK) begin
    if(curr_state == sensing) begin
           cnt2 <= cnt2 +1;
           if(cnt2 == (tick - 1)) begin
                    cnt2 <= 0;
                    start_sensing <= start_sensing + 1;
                    count_done <= 1'b0;
                    end
    end        
   /* else  begin
        
         count_done <= 1'b0;
     end  
     */     
     if(start_sensing == 500)  begin
        count_done <=1'b1; 
        start_sensing <=0;
        cnt2 <= 1'b0;
     end  
 end

always @(curr_state, KEY, SENSOR, start_sensing) begin
    case(curr_state)
        disarmed : begin
            if(!KEY)        next_state = disarmed;
            else            next_state = armed;
        end
        armed : begin
            if(!KEY)                            next_state = disarmed;
            else if(KEY == 1 && SENSOR == 1)    begin next_state = sensing; cnt2 = 0; end
            else                                next_state = armed;
        end
        sensing : begin
            if(!KEY)                                next_state = disarmed;
            else if(count_done)                     next_state = alarm_led;
            else                                    next_state = sensing;
            end
        alarm_led : begin
            if(KEY) begin
                    ALARM = 1'b1;
                   start_sensing = 0;
                    next_state = alarm_led;
             end
             else begin
                    ALARM = 1'b0;
                    start_sensing = 0;
                    next_state = disarmed;
             end
        end
     endcase
end

initial begin
    enable = 1'b0;
    start_sensing = 10'b0;
    count_done = 1'b0;
    cnt2 = 0;
    cnt1 = 0;
end

disp_mod uut(
    .DIGIT(digit),
    .AN(AN),
    .CA(CA)
    );

endmodule