--module debounce
--( 
--input	rst       ,   // USER_DIO1 <L19>
--input	clk       ,   // 125MHz
--input	pls_1k    ,   // 1KHz
--input	btn_in    ,   // Input
--output reg btn_out    
--);

restart
force rst 0 0, 1 50ns
force clk 0 0, 1 4ns -r 8ns

force txck 0 0, 1 500ns -r 1us

force start 0

force pdata 16#1234

run 10us
force start 1
run 5us
force start 0
run 70us

force pdata 16#abcd

run 10us
force start 1
run 5us
force start 0
run 70us
