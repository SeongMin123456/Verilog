set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {AN_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {SW_0[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports CA_0]
set_property PACKAGE_PIN W14 [get_ports {AN_0[0]}]
set_property PACKAGE_PIN Y14 [get_ports {AN_0[1]}]
set_property PACKAGE_PIN T11 [get_ports {AN_0[2]}]
set_property PACKAGE_PIN T10 [get_ports {AN_0[3]}]
set_property PACKAGE_PIN V16 [get_ports {AN_0[4]}]
set_property PACKAGE_PIN W16 [get_ports {AN_0[5]}]
set_property PACKAGE_PIN V12 [get_ports {AN_0[6]}]
set_property PACKAGE_PIN W13 [get_ports CA_0]
set_property PACKAGE_PIN Y18 [get_ports {SW_0[0]}]
set_property PACKAGE_PIN Y19 [get_ports {SW_0[1]}]
set_property PACKAGE_PIN Y16 [get_ports {SW_0[2]}]
set_property PACKAGE_PIN Y17 [get_ports {SW_0[3]}]

set_property IOSTANDARD LVCMOS33 [get_ports TX]
set_property PACKAGE_PIN Y14 [get_ports TX]


connect_debug_port u_ila_0/probe1 [get_nets [list zynq_axi_segment_i/axi_slve_0/inst/axi_bvalid]]












set_property IOSTANDARD LVCMOS33 [get_ports rxd_0]
set_property PACKAGE_PIN T11 [get_ports rxd_0]
connect_debug_port u_ila_0/probe15 [get_nets [list zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA]]


connect_debug_port u_ila_0/probe1 [get_nets [list {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[0]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[1]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[2]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[3]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[4]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[5]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[6]} {zynq_axi_segment_i/uart_rx_0/inst/RX_DATA[7]}]]



connect_debug_port u_ila_0/probe2 [get_nets [list {zynq_axi_segment_i/uart_rx_0/inst/rx_data[0]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[1]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[2]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[3]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[4]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[5]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[6]} {zynq_axi_segment_i/uart_rx_0/inst/rx_data[7]}]]
connect_debug_port u_ila_0/probe9 [get_nets [list zynq_axi_segment_i/my_uart_tx_0/inst/TX]]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list zynq_axi_segment_i/processing_system7_0/inst/FCLK_CLK0]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 8 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[0]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[1]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[2]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[3]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[4]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[5]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[6]} {zynq_axi_segment_i/axi_slve_0/inst/UART_RX_DATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 32 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[0]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[1]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[2]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[3]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[4]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[5]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[6]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[7]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[8]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[9]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[10]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[11]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[12]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[13]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[14]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[15]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[16]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[17]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[18]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[19]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[20]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[21]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[22]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[23]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[24]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[25]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[26]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[27]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[28]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[29]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[30]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg2[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 8 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[0]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[1]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[2]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[3]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[4]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[5]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[6]} {zynq_axi_segment_i/axi_slve_0/inst/UART_TX_DATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 32 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[0]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[1]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[2]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[3]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[4]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[5]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[6]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[7]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[8]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[9]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[10]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[11]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[12]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[13]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[14]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[15]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[16]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[17]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[18]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[19]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[20]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[21]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[22]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[23]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[24]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[25]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[26]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[27]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[28]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[29]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[30]} {zynq_axi_segment_i/axi_slve_0/inst/slv_reg3[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 9 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[0]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[1]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[2]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[3]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[4]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[5]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[6]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[7]} {zynq_axi_segment_i/my_uart_tx_0/inst/serial_0[8]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 8 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[0]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[1]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[2]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[3]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[4]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[5]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[6]} {zynq_axi_segment_i/uart_rx_0/inst/AXI_RX_DATA[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list zynq_axi_segment_i/uart_rx_0/inst/rx_done]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list zynq_axi_segment_i/uart_rx_0/inst/RX_READY]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list zynq_axi_segment_i/axi_slve_0/inst/UART_RX_READY]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_FCLK_CLK0]
