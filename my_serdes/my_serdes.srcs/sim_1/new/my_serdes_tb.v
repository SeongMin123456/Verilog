`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 10:18:55
// Design Name: 
// Module Name: my_serdes
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
module my_serdes();

my_S2P uut1(
    .rst1(RST1),
    .clk1(CLK1),
    .Ssof_in(SSOF_in),
    .din(DIN),
    .Ssof_out(SSOF_out),
    .sout(SOUT)
    );

my_P2S uut2(
    .rst2(RST2),
    .clk2(CLK2),
    .Psof_in(PSOF_in),  // Ssof_in
    .pin(PIN),          // sout
    .Psof_out(PSOF_out),
    .dout(DOUT)
    );

reg RST1, CLK1, SSOF_in;
reg RST2, CLK2;
reg [7:0] DIN;
wire SOUT, PIN, PSOF_in, PSOF_out;
wire [7:0] DOUT;

assign PIN = SOUT;
assign PSOF_in = SSOF_in;

initial begin
    CLK1 <=1'b0;
    CLK2 <= 1'b0;
    forever begin
        CLK1 <= #10 ~ CLK1;
        CLK2 <= #10 ~ CLK2;
    end
end

initial begin
    RST1 <= 1'b1;
    RST2 <= 1'b1;
    RST1 <= #10 1'b0;
    RST2 <= #10 1'b0;
    DIN [7:0] <= #15 8'b11110000;
    SSOF_in <= #15 1'b1;
    DIN [7:0] <= #100 8'b00001111;
    SSOF_in <= #100 1'b1;
    
    #500 $finish;
end

endmodule
