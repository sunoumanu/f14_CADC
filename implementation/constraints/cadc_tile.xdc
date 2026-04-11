## F-14A CADC Constraints for Tile/Carrier Card with RPi Interface
## Target: xc7s25csga225-1
##
## UPDATE PIN ASSIGNMENTS FOR YOUR SPECIFIC CARRIER BOARD

#-------------------------------------------------------------------------------
# System Clock (100MHz input)\n#-------------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN M9    IOSTANDARD LVCMOS33 } [get_ports { sys_clk }]
create_clock -add -name sys_clk_pin -period 10.000 -waveform {0 5.000} [get_ports {sys_clk}]

#-------------------------------------------------------------------------------
# Reset (active-low)
#-------------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN F2    IOSTANDARD LVCMOS33 } [get_ports { sys_rst_n }]

#-------------------------------------------------------------------------------
# UART to Raspberry Pi
#-------------------------------------------------------------------------------
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { uart_rxd }]
set_property -dict { PACKAGE_PIN J15   IOSTANDARD LVCMOS33 } [get_ports { uart_txd }]

#-------------------------------------------------------------------------------
# Clock Domain Crossing Constraints
#-------------------------------------------------------------------------------

# Generated clock for 1.5 MHz CADC clock
create_generated_clock -name clk_cadc_1p5mhz \
    -source [get_pins cadc_system_i/clk_wiz_0/clk_out2] \
    -divide_by 4 \
    [get_pins cadc_system_i/clock_divider_0/U0/clk_reg_reg/Q]

# OOC synthesis clock groups (avoid false violations)
set_clock_groups -physically_exclusive \
    -group [get_clocks -quiet clk_out1_cadc_system_clk_wiz_0_0] \
    -group [get_clocks -quiet clk_out1_cadc_system_clk_wiz_0_0_1]
set_clock_groups -physically_exclusive \
    -group [get_clocks -quiet clk_out2_cadc_system_clk_wiz_0_0] \
    -group [get_clocks -quiet clk_out2_cadc_system_clk_wiz_0_0_1]

#-------------------------------------------------------------------------------
# Bitstream Configuration for XC7S25
#-------------------------------------------------------------------------------
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

#-------------------------------------------------------------------------------
# Debug - Keep CADC hierarchy for visibility
#-------------------------------------------------------------------------------
set_property KEEP_HIERARCHY TRUE [get_cells -hierarchical cadc_top_0]

#-------------------------------------------------------------------------------
# Optional LED outputs (UPDATE pins for your board)
# Useful for status indication
#-------------------------------------------------------------------------------
# set_property -dict { PACKAGE_PIN M1    IOSTANDARD LVCMOS33 } [get_ports { led[0] }]
# set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { led[1] }]

#-------------------------------------------------------------------------------
# PACKAGE PIN REFERENCE for xc7s25csga225-1
# Bank 14 (VCCO = 3.3V typical): A1-A15, B1-B15, C1-C15...
# Bank 34 (VCCO = user selectable): H6-H15, J6-J15, K6-K15...
#
# Common pins on CSG225:
#   CCLK:     R11
#   DONE:     P13
#   PROGRAM_B: P14
#   INIT_B:   T12
#   M0:       R14
#   M1:       R15
#   GND:      Multiple
#   VCCINT:   Multiple (1.0V)
#   VCCAUX:   Multiple (1.8V)
#   VCCO_14:  Multiple (3.3V typical)
#   VCCO_34:  Multiple (user selectable)
#-------------------------------------------------------------------------------
