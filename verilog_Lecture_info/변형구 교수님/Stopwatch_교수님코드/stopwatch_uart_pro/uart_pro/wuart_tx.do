onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /uart_tx/rst
add wave -noupdate /uart_tx/clk
add wave -noupdate /uart_tx/start
add wave -noupdate /uart_tx/txck
add wave -noupdate -radix hexadecimal /uart_tx/pdata
add wave -noupdate /uart_tx/st0
add wave -noupdate /uart_tx/st1
add wave -noupdate /uart_tx/tc0
add wave -noupdate /uart_tx/tc1
add wave -noupdate -radix hexadecimal /uart_tx/tpdata
add wave -noupdate -color Cyan /uart_tx/bcnt
add wave -noupdate -color Cyan /uart_tx/bycnt
add wave -noupdate /uart_tx/nibl
add wave -noupdate -color Magenta /uart_tx/tnpd
add wave -noupdate -color Magenta -radix hexadecimal /uart_tx/txpd
add wave -noupdate -color Magenta -radix ascii /uart_tx/txpd
add wave -noupdate -color Goldenrod /uart_tx/txsd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {125012000 ps} 0} {{Cursor 3} {64012000 ps} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {178500 ns}
