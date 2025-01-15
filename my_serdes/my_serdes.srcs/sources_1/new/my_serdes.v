`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/22 09:29:54
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
module my_S2P(
    input rst1,
    input clk1,
    input Ssof_in,
    input [7:0] din,
    output reg Ssof_out,
    output reg sout
    );
    
reg [3:0] cnt1 = 7;

always @(posedge clk1) begin
    if(rst1) begin
        Ssof_out = 0;
        sout = 0;
     end
     else if(cnt1 < 8) begin
        sout <= din[cnt1];
        cnt1 <= cnt1 - 1;
        if(cnt1 == 0) begin
            Ssof_out <= 1;
            cnt1 <= 8;
        end
     end
     else begin
        sout <= 0;
        Ssof_out <= 0;
        cnt1 <= cnt1 - 1;
     end
end
endmodule

module my_P2S(
    input rst2,
    input clk2,
    input Psof_in,  // Ssof_in
    input pin,      // sout
    output reg Psof_out,
    output reg [7:0] dout
    );

reg [3:0] cnt2 = 7;

always @(negedge clk2) begin
    if(rst2) begin
        Psof_out = 0;
        dout = 0;
     end
    else if(cnt2 <8) begin
        dout[cnt2] <= pin;
        cnt2 <= cnt2 -1;
            if(cnt2 == 0) begin
                Psof_out <= 1;
                cnt2 <= 8;
            end
    end
    else begin
        dout [7:0] = 0;
        Psof_out = 0;
        cnt2 <= cnt2 - 1;
    end
end
    
endmodule
