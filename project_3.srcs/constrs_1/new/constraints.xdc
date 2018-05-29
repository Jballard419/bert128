set_property IOSTANDARD LVDS [get_ports {out_p[0]}]
set_property PACKAGE_PIN H40 [get_ports {out_p[0]}]
set_property IOSTANDARD LVDS [get_ports in_p]
set_property IOSTANDARD LVDS [get_ports in_n]
set_property PACKAGE_PIN L29 [get_ports in_p]
set_property IOSTANDARD LVCMOS18 [get_ports clk_out]
set_property PACKAGE_PIN BB23 [get_ports clk_out]








create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 131072 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list design_1_i/clk_wiz_1/inst/clk]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 2 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {design_1_i/New_cdr/out_2[0]} {design_1_i/New_cdr/out_2[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 2 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {design_1_i/New_cdr/out_ready[0]} {design_1_i/New_cdr/out_ready[1]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {design_1_i/hier_0/error_count/dout_fifo[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {design_1_i/hier_0/error_count/dout_mem[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 14 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {design_1_i/address_counter_1/U0/address[0]} {design_1_i/address_counter_1/U0/address[1]} {design_1_i/address_counter_1/U0/address[2]} {design_1_i/address_counter_1/U0/address[3]} {design_1_i/address_counter_1/U0/address[4]} {design_1_i/address_counter_1/U0/address[5]} {design_1_i/address_counter_1/U0/address[6]} {design_1_i/address_counter_1/U0/address[7]} {design_1_i/address_counter_1/U0/address[8]} {design_1_i/address_counter_1/U0/address[9]} {design_1_i/address_counter_1/U0/address[10]} {design_1_i/address_counter_1/U0/address[11]} {design_1_i/address_counter_1/U0/address[12]} {design_1_i/address_counter_1/U0/address[13]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 32 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list {design_1_i/c_accum_0/Q[0]} {design_1_i/c_accum_0/Q[1]} {design_1_i/c_accum_0/Q[2]} {design_1_i/c_accum_0/Q[3]} {design_1_i/c_accum_0/Q[4]} {design_1_i/c_accum_0/Q[5]} {design_1_i/c_accum_0/Q[6]} {design_1_i/c_accum_0/Q[7]} {design_1_i/c_accum_0/Q[8]} {design_1_i/c_accum_0/Q[9]} {design_1_i/c_accum_0/Q[10]} {design_1_i/c_accum_0/Q[11]} {design_1_i/c_accum_0/Q[12]} {design_1_i/c_accum_0/Q[13]} {design_1_i/c_accum_0/Q[14]} {design_1_i/c_accum_0/Q[15]} {design_1_i/c_accum_0/Q[16]} {design_1_i/c_accum_0/Q[17]} {design_1_i/c_accum_0/Q[18]} {design_1_i/c_accum_0/Q[19]} {design_1_i/c_accum_0/Q[20]} {design_1_i/c_accum_0/Q[21]} {design_1_i/c_accum_0/Q[22]} {design_1_i/c_accum_0/Q[23]} {design_1_i/c_accum_0/Q[24]} {design_1_i/c_accum_0/Q[25]} {design_1_i/c_accum_0/Q[26]} {design_1_i/c_accum_0/Q[27]} {design_1_i/c_accum_0/Q[28]} {design_1_i/c_accum_0/Q[29]} {design_1_i/c_accum_0/Q[30]} {design_1_i/c_accum_0/Q[31]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 10 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[0]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[1]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[2]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[3]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[4]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[5]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[6]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[7]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[8]} {design_1_i/New_cdr/os48_1011x20bTo10b_top2_0/A_dout10b[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe7]
set_property port_width 1 [get_debug_ports u_ila_0/probe7]
connect_debug_port u_ila_0/probe7 [get_nets [list design_1_i/address_counter_1/U0/tc]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_clk]

