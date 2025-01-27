set_property MARK_DEBUG true [get_nets {Tdocument_reg[0][0]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[0][1]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[0][2]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[0][3]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[0][4]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[0][5]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[1][0]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[1][1]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[1][2]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[1][3]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[1][4]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[1][5]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[2][0]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[2][1]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[2][2]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[2][3]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[2][4]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[2][5]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[3][0]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[3][1]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[3][2]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[3][3]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[3][4]}]
set_property MARK_DEBUG true [get_nets {Tdocument_reg[3][5]}]
set_property MARK_DEBUG true [get_nets {stock__0[0]}]
set_property MARK_DEBUG true [get_nets {stock__0[1]}]
set_property MARK_DEBUG true [get_nets {stock__0[2]}]
set_property MARK_DEBUG true [get_nets {docum_cnt_reg_n_0_[0]}]
set_property MARK_DEBUG true [get_nets {docum_cnt_reg_n_0_[1]}]
set_property MARK_DEBUG true [get_nets {docum_cnt_reg_n_0_[2]}]
set_property MARK_DEBUG true [get_nets {docum_cnt_reg_n_0_[3]}]
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
connect_debug_port u_ila_0/clk [get_nets [list CLK_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 6 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {Tdocument_reg[1][0]} {Tdocument_reg[1][1]} {Tdocument_reg[1][2]} {Tdocument_reg[1][3]} {Tdocument_reg[1][4]} {Tdocument_reg[1][5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 6 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {Tdocument_reg[2][0]} {Tdocument_reg[2][1]} {Tdocument_reg[2][2]} {Tdocument_reg[2][3]} {Tdocument_reg[2][4]} {Tdocument_reg[2][5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 6 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {Tdocument_reg[3][0]} {Tdocument_reg[3][1]} {Tdocument_reg[3][2]} {Tdocument_reg[3][3]} {Tdocument_reg[3][4]} {Tdocument_reg[3][5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 6 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {Tdocument_reg[0][0]} {Tdocument_reg[0][1]} {Tdocument_reg[0][2]} {Tdocument_reg[0][3]} {Tdocument_reg[0][4]} {Tdocument_reg[0][5]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 3 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {stock__0[0]} {stock__0[1]} {stock__0[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {docum_cnt_reg_n_0_[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {docum_cnt_reg_n_0_[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list {docum_cnt_reg_n_0_[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe8]
set_property port_width 1 [get_debug_ports u_ila_0/probe8]
connect_debug_port u_ila_0/probe8 [get_nets [list {docum_cnt_reg_n_0_[3]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets CLK_IBUF_BUFG]
