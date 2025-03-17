## This file is a general .xdc for the Cora Z7 board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Reset. Active High
set_property -dict {PACKAGE_PIN L19 IOSTANDARD LVCMOS33} [get_ports rst]

## Clock signal
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]

##Buttons
set_property -dict {PACKAGE_PIN D20 IOSTANDARD LVCMOS33} [get_ports btn0]
set_property -dict {PACKAGE_PIN D19 IOSTANDARD LVCMOS33} [get_ports btn1]

## LEDs
set_property -dict {PACKAGE_PIN N15 IOSTANDARD LVCMOS33} [get_ports ld0_r]
set_property -dict {PACKAGE_PIN G17 IOSTANDARD LVCMOS33} [get_ports ld0_g]
set_property -dict {PACKAGE_PIN L15 IOSTANDARD LVCMOS33} [get_ports ld0_b]

set_property -dict {PACKAGE_PIN M15 IOSTANDARD LVCMOS33} [get_ports ld1_r]
set_property -dict {PACKAGE_PIN L14 IOSTANDARD LVCMOS33} [get_ports ld1_g]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports ld1_b]

###Pmod Header JA
set_property -dict {PACKAGE_PIN Y18 IOSTANDARD LVCMOS33} [get_ports {ja[0]}]
set_property -dict {PACKAGE_PIN Y19 IOSTANDARD LVCMOS33} [get_ports {ja[1]}]
set_property -dict {PACKAGE_PIN Y16 IOSTANDARD LVCMOS33} [get_ports {ja[2]}]
set_property -dict {PACKAGE_PIN Y17 IOSTANDARD LVCMOS33} [get_ports {ja[3]}]
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {ja[4]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {ja[5]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {ja[6]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {ja[7]}]

###Pmod Header JB
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {jb[0]}]
set_property -dict {PACKAGE_PIN Y14 IOSTANDARD LVCMOS33} [get_ports {jb[1]}]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports {jb[2]}]
set_property -dict {PACKAGE_PIN T10 IOSTANDARD LVCMOS33} [get_ports {jb[3]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {jb[4]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {jb[5]}]
set_property -dict {PACKAGE_PIN V12 IOSTANDARD LVCMOS33} [get_ports {jb[6]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {jb[7]}]

###GPIO A[11:0]
set_property -dict {PACKAGE_PIN B19 IOSTANDARD LVCMOS33} [get_ports txsd]   // A10
set_property -dict {PACKAGE_PIN A20 IOSTANDARD LVCMOS33} [get_ports rxsd]   // A11

set_property -dict {PACKAGE_PIN F17 IOSTANDARD LVCMOS33} [get_ports {txpd[0]}]
set_property -dict {PACKAGE_PIN J19 IOSTANDARD LVCMOS33} [get_ports {txpd[1]}]
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports {txpd[2]}]
set_property -dict {PACKAGE_PIN L16 IOSTANDARD LVCMOS33} [get_ports {txpd[3]}]
set_property -dict {PACKAGE_PIN N16 IOSTANDARD LVCMOS33} [get_ports {txpd[4]}]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports {txpd[5]}]
set_property -dict {PACKAGE_PIN F19 IOSTANDARD LVCMOS33} [get_ports {txpd[6]}]
set_property -dict {PACKAGE_PIN F20 IOSTANDARD LVCMOS33} [get_ports {txpd[7]}]
set_property -dict {PACKAGE_PIN C20 IOSTANDARD LVCMOS33} [get_ports tnpd]
set_property -dict {PACKAGE_PIN B20 IOSTANDARD LVCMOS33} [get_ports txen]

#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports cnt_en]; 	#Sch name = A[0]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports clr_plso]; 	#Sch name = A[1]
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports disp_mode]; #Sch name = A[2]

#set_property -dict { PACKAGE_PIN F17   IOSTANDARD LVCMOS33 } [get_ports {ck_a[0]}]; #Sch name = A[0]
#set_property -dict { PACKAGE_PIN J19   IOSTANDARD LVCMOS33 } [get_ports {ck_a[1]}]; #Sch name = A[1]
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports {ck_a[2]}]; #Sch name = A[2]
#set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports {ck_a[3]}]; #Sch name = A[3]
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports {ck_a[4]}]; #Sch name = A[4]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports {ck_a[5]}]; #Sch name = A[5]
#set_property -dict { PACKAGE_PIN F19   IOSTANDARD LVCMOS33 } [get_ports {ck_a[6]}]; #Sch name = A[6]
#set_property -dict { PACKAGE_PIN F20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[7]}]; #Sch name = A[7]
#set_property -dict { PACKAGE_PIN C20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[8]}]; #Sch name = A[8]
#set_property -dict { PACKAGE_PIN B20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[9]}]; #Sch name = A[9]
#set_property -dict { PACKAGE_PIN B19   IOSTANDARD LVCMOS33 } [get_ports {ck_a[10]}];#Sch name = A[10]
#set_property -dict { PACKAGE_PIN A20   IOSTANDARD LVCMOS33 } [get_ports {ck_a[11]}];#Sch name = A[11]

set_property MARK_DEBUG true [get_nets tnpd_OBUF]
set_property MARK_DEBUG true [get_nets txen_OBUF]
set_property MARK_DEBUG true [get_nets txsd_OBUF]
set_property MARK_DEBUG true [get_nets {txpd_OBUF[0]}]
set_property MARK_DEBUG true [get_nets {txpd_OBUF[2]}]
set_property MARK_DEBUG true [get_nets {txpd_OBUF[3]}]
set_property MARK_DEBUG true [get_nets {txpd_OBUF[4]}]
set_property MARK_DEBUG true [get_nets {txpd_OBUF[6]}]
set_property MARK_DEBUG true [get_nets {txpd_OBUF[7]}]
set_property MARK_DEBUG true [get_nets {txpd_OBUF[1]}]
set_property MARK_DEBUG true [get_nets {stm[0]}]
set_property MARK_DEBUG true [get_nets {stm[1]}]
set_property MARK_DEBUG true [get_nets u_stop_watch_cnt/disp_mode]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[0]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[1]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[2]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[3]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[4]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[5]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[6]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[0]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[1]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[2]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[3]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[4]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[5]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[0]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[1]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[2]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[3]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[4]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[5]}]
set_property MARK_DEBUG true [get_nets {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[6]}]
set_property PACKAGE_PIN A20 [get_ports rxsd]
set_property IOSTANDARD LVCMOS33 [get_ports rxsd]
set_property PACKAGE_PIN B19 [get_ports txsd]
set_property IOSTANDARD LVCMOS33 [get_ports txsd]

create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 2 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 16384 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list clk_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 7 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[0]} {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[1]} {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[2]} {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[3]} {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[4]} {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[5]} {u_stop_watch_cnt/u_m_cnt/qout_reg[6]_0[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 7 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[0]} {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[1]} {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[2]} {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[3]} {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[4]} {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[5]} {u_stop_watch_cnt/u_us_cnt/cnt_reg[6]_0[6]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 6 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[0]} {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[1]} {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[2]} {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[3]} {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[4]} {u_stop_watch_cnt/u_s_cnt/qout_reg[5]_0[5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 2 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {stm[0]} {stm[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 7 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {txpd_OBUF[0]} {txpd_OBUF[1]} {txpd_OBUF[2]} {txpd_OBUF[3]} {txpd_OBUF[4]} {txpd_OBUF[6]} {txpd_OBUF[7]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list u_stop_watch_cnt/disp_mode]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list tnpd_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list txen_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list txsd_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk_IBUF_BUFG]
