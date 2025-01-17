set_property SRC_FILE_INFO {cfile:C:/verilog_lab/zynq_axi_uart_rxtx/zynq_axi_7segment.srcs/constrs_1/new/axi_slve.xdc rfile:../../../zynq_axi_7segment.srcs/constrs_1/new/axi_slve.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[6]}]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[5]}]
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[4]}]
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[3]}]
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[2]}]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[1]}]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[0]}]
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[3]}]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[2]}]
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[1]}]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[0]}]
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports CA_0]
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W14 [get_ports {AN_0[0]}]
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y14 [get_ports {AN_0[1]}]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T11 [get_ports {AN_0[2]}]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T10 [get_ports {AN_0[3]}]
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V16 [get_ports {AN_0[4]}]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W16 [get_ports {AN_0[5]}]
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN V12 [get_ports {AN_0[6]}]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN W13 [get_ports CA_0]
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y18 [get_ports {SW_0[0]}]
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y19 [get_ports {SW_0[1]}]
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y16 [get_ports {SW_0[2]}]
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y17 [get_ports {SW_0[3]}]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN Y14 [get_ports TX]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list zynq_axi_segment_i/axi_slve_0/inst/axi_bvalid]]
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN T11 [get_ports rxd_0]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe15 [get_nets [list zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA]]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[0]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[1]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[2]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[3]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[4]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[5]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[6]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[7]}]]
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe2 [get_nets [list {zynq_axi_segment_i/uart_rx_0/inst/rx_data[0]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[1]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[2]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[3]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[4]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[5]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[6]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[7]}]]
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe9 [get_nets [list zynq_axi_segment_i/my_uart_tx_0/inst/TX]]
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
create_debug_core u_ila_0 ila
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property src_info {type:XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
set_property src_info {type:XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/clk [get_nets [list zynq_axi_segment_i/processing_system7_0/inst/FCLK_CLK0]]
set_property src_info {type:XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe0 [get_nets [list {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[0]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[1]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[2]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[3]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[4]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[5]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[6]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[7]}]]
set_property src_info {type:XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 8 [get_debug_ports u_ila_0/probe1]
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe1 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[0]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[1]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[2]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[3]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[4]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[5]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[6]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[7]}]]
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe2 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[0]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[1]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[2]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[3]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[4]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[5]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[6]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[7]}]]
set_property src_info {type:XDC file:1 line:77 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:78 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:79 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
set_property src_info {type:XDC file:1 line:80 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe3 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[0]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[1]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[2]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[3]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[4]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[5]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[6]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[7]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[8]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[9]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[10]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[11]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[12]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[13]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[14]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[15]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[16]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[17]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[18]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[19]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[20]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[21]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[22]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[23]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[24]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[25]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[26]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[27]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[28]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[29]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[30]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[31]}]]
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 32 [get_debug_ports u_ila_0/probe4]
set_property src_info {type:XDC file:1 line:84 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe4 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[0]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[1]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[2]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[3]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[4]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[5]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[6]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[7]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[8]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[9]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[10]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[11]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[12]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[13]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[14]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[15]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[16]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[17]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[18]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[19]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[20]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[21]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[22]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[23]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[24]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[25]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[26]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[27]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[28]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[29]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[30]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[31]}]]
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:86 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 9 [get_debug_ports u_ila_0/probe5]
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe5 [get_nets [list {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[0]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[1]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[2]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[3]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[4]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[5]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[6]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[7]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[8]}]]
set_property src_info {type:XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:91 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
set_property src_info {type:XDC file:1 line:92 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe6 [get_nets [list zynq_axi_segment_i/uart_rx_0/inst/rx_done]]
set_property src_info {type:XDC file:1 line:93 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:95 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe7 [get_nets [list zynq_axi_segment_i/uart_rx_0/inst/RX_READY]]
set_property src_info {type:XDC file:1 line:97 export:INPUT save:INPUT read:READ} [current_design]
create_debug_port u_ila_0 probe
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
set_property src_info {type:XDC file:1 line:100 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port u_ila_0/probe8 [get_nets [list zynq_axi_segment_i/axi_slve_0/inst/UART_RX_READY]]
set_property src_info {type:XDC file:1 line:101 export:INPUT save:INPUT read:READ} [current_design]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:102 export:INPUT save:INPUT read:READ} [current_design]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
