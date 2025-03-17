onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_uart/rst
add wave -noupdate -radix hexadecimal /tb_uart/clk
add wave -noupdate -radix hexadecimal /tb_uart/txck
add wave -noupdate -radix hexadecimal /tb_uart/start
add wave -noupdate -radix hexadecimal /tb_uart/pdata
add wave -noupdate -radix hexadecimal /tb_uart/u_uart_tx/nibl
add wave -noupdate -color cyan -radix hexadecimal /tb_uart/u_uart_tx/tnpd
add wave -noupdate -color cyan -radix hexadecimal /tb_uart/u_uart_tx/txpd
add wave -noupdate -color magenta -radix hexadecimal /tb_uart/txsd
add wave -noupdate -color white /tb_uart/gate
add wave -noupdate /tb_uart/u_uart_rx/u_rxck_gen/rxon
add wave -noupdate /tb_uart/u_uart_rx/rxck
add wave -noupdate /tb_uart/u_uart_rx/rxsd
add wave -noupdate -radix unsigned /tb_uart/u_uart_rx/u_rx232_pd/bcnt
add wave -noupdate -radix unsigned /tb_uart/u_uart_rx/u_rx232_pd/dbcnt
add wave -noupdate -radix hexadecimal /tb_uart/u_uart_rx/u_rx232_pd/rpd
add wave -noupdate -radix unsigned /tb_uart/u_uart_rx/u_rx232_pd/rcnt
add wave -noupdate -color cyan /tb_uart/u_uart_rx/rxen
add wave -noupdate -color cyan -radix hexadecimal /tb_uart/u_uart_rx/rxpd
add wave -noupdate -color cyan /tb_uart/u_uart_rx/rnpd
add wave -noupdate /tb_uart/u_uart_rx/flag
add wave -noupdate -color cyan -radix unsigned /tb_uart/u_uart_rx/bycnt
add wave -noupdate -color magenta -radix hexadecimal /tb_uart/u_uart_rx/nibl
add wave -noupdate -color magenta -radix hexadecimal /tb_uart/u_uart_rx/rpd
add wave -noupdate -color gold /tb_uart/rnpd_pls
add wave -noupdate -color gold -radix hexadecimal /tb_uart/rpdata
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {26052000 ps} 0} {{Cursor 2} {147572000 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 240
configure wave -valuecolwidth 47
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {199500 ns}
