#module tb_uart 
#(	
#// Input
#input 	rst,clk,
#input 	start,txck,gate,
#input 	[15:0] pdata
#);

restart
add_force rst {1 0ns} {0 1ps} {1 50ns}
add_force clk {0 0ns} {1 4ns} -repeat_every 8ns

add_force txck {0 0ns} {1 500ns} -repeat_every 1000ns

add_force start 0
add_force gate 1

add_force pdata -radix hex 1234

run 10us
add_force start 1
run 5us
add_force start 0
run 50us

add_force gate 0
run 5us
add_force gate 1
run 25us

add_force pdata -radix hex abcd

run 10us
add_force start 1
run 5us
add_force start 0
run 80us





