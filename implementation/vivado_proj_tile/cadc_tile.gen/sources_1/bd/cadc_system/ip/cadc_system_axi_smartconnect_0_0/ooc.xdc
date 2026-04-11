# aclk {FREQ_HZ 100000000 CLK_DOMAIN cadc_system_sys_clk PHASE 0.0}
# Clock Domain: cadc_system_sys_clk
create_clock -name aclk -period 10.000 [get_ports aclk]
# Generated clocks
