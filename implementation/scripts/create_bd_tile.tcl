#-------------------------------------------------------------------------------
# F-14A CADC Block Design Creation Script — Tile/Carrier Card
# Target: XC7S25-CSGA225
#
# Creates IP Integrator design with:
#   - ip_axi_uart for RPi serial communication (AXIS interface)
#   - ip_axi_protocol_lite for UART-to-AXI-Lite master
#   - AXI Interconnect (1 master, 9 slaves)
#   - 5x AXI GPIO for sensor inputs (20-bit each)
#   - 4x AXI GPIO for CADC outputs (dual-channel readback)
#   - Clocking Wizard for system clocks
#   - CADC core
#
# Architecture:
#   RPi TX → axi_uart.i_rx → AXIS → axi_protocol → AXI-Lite Master
#   RPi RX ← axi_uart.o_tx ← AXIS ← axi_protocol ← (read responses)
#                                         ↓
#                                  AXI Interconnect
#                                         ↓
#              Input GPIOs (5x) ←→ CADC ←→ Output GPIOs (4x)
#-------------------------------------------------------------------------------

# Create block design
create_bd_design "cadc_system"

#-------------------------------------------------------------------------------
# External Ports
#-------------------------------------------------------------------------------

# Clock port (100MHz external oscillator)
create_bd_port -dir I -type clk -freq_hz 100000000 sys_clk
set_property CONFIG.FREQ_HZ 100000000 [get_bd_ports sys_clk]

# Reset port (active-low)
create_bd_port -dir I -type rst sys_rst_n
set_property CONFIG.POLARITY ACTIVE_LOW [get_bd_ports sys_rst_n]

# UART ports (directly to RPi)
create_bd_port -dir I uart_rxd
create_bd_port -dir O uart_txd

#-------------------------------------------------------------------------------
# Clocking Wizard
# Input: 100MHz, Output: 6MHz for clock divider (divide by 4 = 1.5MHz)
# 100MHz used directly for AXI logic
#-------------------------------------------------------------------------------
create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0
set_property -dict [list \
    CONFIG.PRIM_IN_FREQ {100.000} \
    CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {6.000} \
    CONFIG.USE_LOCKED {true} \
    CONFIG.USE_RESET {true} \
    CONFIG.RESET_TYPE {ACTIVE_LOW} \
] [get_bd_cells clk_wiz_0]

#-------------------------------------------------------------------------------
# Processor System Reset
#-------------------------------------------------------------------------------
create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0

#-------------------------------------------------------------------------------
# AXI UART Wrapper (wraps ip_axi_uart for IP Integrator)
# Converts UART RX/TX to AXI-Stream interface
# Fixed config: 100MHz clock, 115200 baud, 8N1
#-------------------------------------------------------------------------------
create_bd_cell -type module -reference axi_uart_wrapper axi_uart_0

#-------------------------------------------------------------------------------
# AXI Protocol Wrapper (wraps ip_axi_protocol_lite for IP Integrator)
# Converts AXI-Stream commands to AXI-Lite master transactions
#-------------------------------------------------------------------------------
create_bd_cell -type module -reference axi_protocol_wrapper axi_protocol_0

#-------------------------------------------------------------------------------
# AXI SmartConnect (1 master from protocol, 9 slave ports for GPIOs)
# Note: SmartConnect handles RTL module interfaces better than Interconnect
#-------------------------------------------------------------------------------
create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 axi_smartconnect_0
set_property -dict [list \
    CONFIG.NUM_MI {9} \
    CONFIG.NUM_SI {1} \
] [get_bd_cells axi_smartconnect_0]

#-------------------------------------------------------------------------------
# Input GPIOs (5x) - Write sensor values from RPi
#-------------------------------------------------------------------------------

# GPIO 0: Static Pressure (Ps) - 20-bit output
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_ps
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_DOUT_DEFAULT {0x00000000} \
] [get_bd_cells axi_gpio_ps]

# GPIO 1: Impact Pressure (Qc) - 20-bit output
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_qc
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_DOUT_DEFAULT {0x00000000} \
] [get_bd_cells axi_gpio_qc]

# GPIO 2: Total Air Temperature (TAT) - 20-bit output
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_tat
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_DOUT_DEFAULT {0x00000000} \
] [get_bd_cells axi_gpio_tat]

# GPIO 3: Analog Input - 20-bit output
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_analog
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_DOUT_DEFAULT {0x00000000} \
] [get_bd_cells axi_gpio_analog]

# GPIO 4: Digital Input + Channel Active (dual channel)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_digital
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_OUTPUTS {1} \
    CONFIG.C_GPIO2_WIDTH {1} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_OUTPUTS_2 {1} \
    CONFIG.C_DOUT_DEFAULT {0x00000000} \
    CONFIG.C_DOUT_DEFAULT_2 {0x00000001} \
] [get_bd_cells axi_gpio_digital]

#-------------------------------------------------------------------------------
# Output GPIOs (4x) - Read computed values back to RPi
# Each is dual-channel to fit 7 outputs + 2 status bits
#-------------------------------------------------------------------------------

# GPIO 5: Mach (CH1) + Altitude (CH2) - 20-bit inputs each
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_out_0
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_GPIO2_WIDTH {20} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
] [get_bd_cells axi_gpio_out_0]

# GPIO 6: Airspeed (CH1) + Vertical Speed (CH2) - 20-bit inputs each
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_out_1
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_GPIO2_WIDTH {20} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
] [get_bd_cells axi_gpio_out_1]

# GPIO 7: Wing Sweep (CH1) + Flap (CH2) - 20-bit inputs each
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_out_2
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_GPIO2_WIDTH {20} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
] [get_bd_cells axi_gpio_out_2]

# GPIO 8: Glove (CH1) + Status bits (CH2: bit_status, fail_detect)
create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_out_3
set_property -dict [list \
    CONFIG.C_GPIO_WIDTH {20} \
    CONFIG.C_ALL_INPUTS {1} \
    CONFIG.C_GPIO2_WIDTH {2} \
    CONFIG.C_IS_DUAL {1} \
    CONFIG.C_ALL_INPUTS_2 {1} \
] [get_bd_cells axi_gpio_out_3]

#-------------------------------------------------------------------------------
# Clock Divider (6MHz → 1.5MHz for CADC)
#-------------------------------------------------------------------------------
create_bd_cell -type module -reference clock_divider clock_divider_0

#-------------------------------------------------------------------------------
# CADC Wrapper (VHDL-93 wrapper for IP Integrator)
#-------------------------------------------------------------------------------
create_bd_cell -type module -reference cadc_wrapper cadc_top_0

#-------------------------------------------------------------------------------
# Reset Inverter (CADC uses active-high reset)
#-------------------------------------------------------------------------------
create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0
set_property -dict [list \
    CONFIG.C_SIZE {1} \
    CONFIG.C_OPERATION {not} \
] [get_bd_cells util_vector_logic_0]

#-------------------------------------------------------------------------------
# Status Concatenation (bit_status + fail_detect → 2-bit vector)
#-------------------------------------------------------------------------------
create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_status
set_property -dict [list \
    CONFIG.NUM_PORTS {2} \
] [get_bd_cells xlconcat_status]

#-------------------------------------------------------------------------------
# Connect Clocks
#-------------------------------------------------------------------------------

# Clock wizard generates 6MHz for CADC from 100MHz input
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins clk_wiz_0/clk_in1]
connect_bd_net [get_bd_ports sys_rst_n] [get_bd_pins clk_wiz_0/resetn]

# Processor system reset (uses 100MHz sys_clk directly)
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
connect_bd_net [get_bd_pins clk_wiz_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
connect_bd_net [get_bd_ports sys_rst_n] [get_bd_pins proc_sys_reset_0/ext_reset_in]

# 100MHz to AXI components (directly from input)
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_uart_0/i_clk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_protocol_0/clk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_smartconnect_0/aclk]

# Clocks to all GPIOs (100MHz)
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_ps/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_qc/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_tat/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_analog/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_digital/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_out_0/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_out_1/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_out_2/s_axi_aclk]
connect_bd_net [get_bd_ports sys_clk] [get_bd_pins axi_gpio_out_3/s_axi_aclk]

# 6MHz to clock divider (from clk_wiz), 1.5MHz to CADC
connect_bd_net [get_bd_pins clk_wiz_0/clk_out1] [get_bd_pins clock_divider_0/i_clk]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins clock_divider_0/i_rst_n]
connect_bd_net [get_bd_pins clock_divider_0/o_clk_div] [get_bd_pins cadc_top_0/i_clk_master]

#-------------------------------------------------------------------------------
# Connect Resets
#-------------------------------------------------------------------------------

connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_uart_0/i_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_protocol_0/rst_n]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_smartconnect_0/aresetn]

# Resets to all GPIOs
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_ps/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_qc/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_tat/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_analog/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_digital/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_out_0/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_out_1/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_out_2/s_axi_aresetn]
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins axi_gpio_out_3/s_axi_aresetn]

# CADC reset (active high)
connect_bd_net [get_bd_pins proc_sys_reset_0/peripheral_aresetn] [get_bd_pins util_vector_logic_0/Op1]
connect_bd_net [get_bd_pins util_vector_logic_0/Res] [get_bd_pins cadc_top_0/i_rst]

#-------------------------------------------------------------------------------
# Connect UART to External Ports
#-------------------------------------------------------------------------------
connect_bd_net [get_bd_ports uart_rxd] [get_bd_pins axi_uart_0/i_rx]
connect_bd_net [get_bd_pins axi_uart_0/o_tx] [get_bd_ports uart_txd]

#-------------------------------------------------------------------------------
# Connect UART to Protocol Bridge (AXI-Stream)
# UART RX → Protocol (commands in)
# UART TX ← Protocol (responses out)
#-------------------------------------------------------------------------------

# UART master (RX data) → Protocol slave
connect_bd_net [get_bd_pins axi_uart_0/o_m_axis_tdata] [get_bd_pins axi_protocol_0/s_axis_tdata]
connect_bd_net [get_bd_pins axi_uart_0/o_m_axis_tvalid] [get_bd_pins axi_protocol_0/s_axis_tvalid]
connect_bd_net [get_bd_pins axi_protocol_0/s_axis_tready] [get_bd_pins axi_uart_0/i_m_axis_tready]

# Protocol master (responses) → UART slave (TX data)
connect_bd_net [get_bd_pins axi_protocol_0/m_axis_tdata] [get_bd_pins axi_uart_0/i_s_axis_tdata]
connect_bd_net [get_bd_pins axi_protocol_0/m_axis_tvalid] [get_bd_pins axi_uart_0/i_s_axis_tvalid]
connect_bd_net [get_bd_pins axi_uart_0/o_s_axis_tready] [get_bd_pins axi_protocol_0/m_axis_tready]

#-------------------------------------------------------------------------------
# Connect Protocol to AXI SmartConnect (interface connection)
#-------------------------------------------------------------------------------
connect_bd_intf_net [get_bd_intf_pins axi_protocol_0/m_axi] [get_bd_intf_pins axi_smartconnect_0/S00_AXI]

#-------------------------------------------------------------------------------
# Connect SmartConnect to GPIOs (AXI-Lite interfaces)
#-------------------------------------------------------------------------------

connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M00_AXI] [get_bd_intf_pins axi_gpio_ps/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M01_AXI] [get_bd_intf_pins axi_gpio_qc/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M02_AXI] [get_bd_intf_pins axi_gpio_tat/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M03_AXI] [get_bd_intf_pins axi_gpio_analog/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M04_AXI] [get_bd_intf_pins axi_gpio_digital/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M05_AXI] [get_bd_intf_pins axi_gpio_out_0/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M06_AXI] [get_bd_intf_pins axi_gpio_out_1/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M07_AXI] [get_bd_intf_pins axi_gpio_out_2/S_AXI]
connect_bd_intf_net [get_bd_intf_pins axi_smartconnect_0/M08_AXI] [get_bd_intf_pins axi_gpio_out_3/S_AXI]

#-------------------------------------------------------------------------------
# Connect Input GPIOs to CADC
#-------------------------------------------------------------------------------

connect_bd_net [get_bd_pins axi_gpio_ps/gpio_io_o] [get_bd_pins cadc_top_0/i_sensor_ps]
connect_bd_net [get_bd_pins axi_gpio_qc/gpio_io_o] [get_bd_pins cadc_top_0/i_sensor_qc]
connect_bd_net [get_bd_pins axi_gpio_tat/gpio_io_o] [get_bd_pins cadc_top_0/i_sensor_tat]
connect_bd_net [get_bd_pins axi_gpio_analog/gpio_io_o] [get_bd_pins cadc_top_0/i_sensor_analog]
connect_bd_net [get_bd_pins axi_gpio_digital/gpio_io_o] [get_bd_pins cadc_top_0/i_sensor_digital]
connect_bd_net [get_bd_pins axi_gpio_digital/gpio2_io_o] [get_bd_pins cadc_top_0/i_channel_active]

#-------------------------------------------------------------------------------
# Connect CADC Outputs to Output GPIOs
#-------------------------------------------------------------------------------

# GPIO out 0: Mach + Altitude
connect_bd_net [get_bd_pins cadc_top_0/o_out_mach] [get_bd_pins axi_gpio_out_0/gpio_io_i]
connect_bd_net [get_bd_pins cadc_top_0/o_out_alt] [get_bd_pins axi_gpio_out_0/gpio2_io_i]

# GPIO out 1: Airspeed + Vertical Speed
connect_bd_net [get_bd_pins cadc_top_0/o_out_airspd] [get_bd_pins axi_gpio_out_1/gpio_io_i]
connect_bd_net [get_bd_pins cadc_top_0/o_out_vspd] [get_bd_pins axi_gpio_out_1/gpio2_io_i]

# GPIO out 2: Wing Sweep + Flap
connect_bd_net [get_bd_pins cadc_top_0/o_out_wing] [get_bd_pins axi_gpio_out_2/gpio_io_i]
connect_bd_net [get_bd_pins cadc_top_0/o_out_flap] [get_bd_pins axi_gpio_out_2/gpio2_io_i]

# GPIO out 3: Glove + Status (concatenated)
connect_bd_net [get_bd_pins cadc_top_0/o_out_glove] [get_bd_pins axi_gpio_out_3/gpio_io_i]
connect_bd_net [get_bd_pins cadc_top_0/o_bit_status] [get_bd_pins xlconcat_status/In0]
connect_bd_net [get_bd_pins cadc_top_0/o_fail_detect] [get_bd_pins xlconcat_status/In1]
connect_bd_net [get_bd_pins xlconcat_status/dout] [get_bd_pins axi_gpio_out_3/gpio2_io_i]

#-------------------------------------------------------------------------------
# Validate and Save
#-------------------------------------------------------------------------------

regenerate_bd_layout
assign_bd_address
validate_bd_design
save_bd_design

# Print address map (auto-assigned by validate)
puts "=========================================="
puts "Block design created successfully!"
puts ""
puts "AXI Address Map (auto-assigned - check Address Editor):"
puts "  GPIO_PS       - i_sensor_ps[19:0]"
puts "  GPIO_QC       - i_sensor_qc[19:0]"
puts "  GPIO_TAT      - i_sensor_tat[19:0]"
puts "  GPIO_ANALOG   - i_sensor_analog[19:0]"
puts "  GPIO_DIGITAL  - i_sensor_digital[19:0] (CH1), i_channel_active[0] (CH2)"
puts "  GPIO_OUT_0    - o_out_mach[19:0] (CH1), o_out_alt[19:0] (CH2)"
puts "  GPIO_OUT_1    - o_out_airspd[19:0] (CH1), o_out_vspd[19:0] (CH2)"
puts "  GPIO_OUT_2    - o_out_wing[19:0] (CH1), o_out_flap[19:0] (CH2)"
puts "  GPIO_OUT_3    - o_out_glove[19:0] (CH1), {fail_detect, bit_status} (CH2)"
puts ""
puts "UART Protocol (ip_axi_protocol_lite):"
puts "  Single Write: 0x09 ADDR[4] LEN[1] DATA[4]"
puts "  Single Read:  0x05 ADDR[4] LEN[1] -> DATA[4]"
puts "=========================================="
