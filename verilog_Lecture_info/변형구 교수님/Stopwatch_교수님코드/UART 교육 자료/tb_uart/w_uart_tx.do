onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /uart_tx/rst
add wave -noupdate /uart_tx/clk
add wave -noupdate /uart_tx/txck
add wave -noupdate /uart_tx/start
add wave -noupdate -radix hexadecimal /uart_tx/pdata
add wave -noupdate -color Cyan -radix hexadecimal /uart_tx/tpdata
add wave -noupdate -color Cyan -radix unsigned /uart_tx/bcnt
add wave -noupdate -color Cyan -radix unsigned /uart_tx/bycnt
add wave -noupdate -color Cyan -radix hexadecimal /uart_tx/nibl
add wave -noupdate -color magenta -radix unsigned /uart_tx/tnpd
add wave -noupdate -color magenta -radix hexadecimal /uart_tx/txpd
add wave -noupdate -color magenta -radix ascii /uart_tx/txpd
add wave -noupdate -color gold -radix unsigned /uart_tx/txsd
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {28196787 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 43
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
