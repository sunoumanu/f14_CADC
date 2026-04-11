-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:axi_uart_wrapper:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cadc_system_axi_uart_0_0 IS
  PORT (
    i_clk : IN STD_LOGIC;
    i_aresetn : IN STD_LOGIC;
    i_rx : IN STD_LOGIC;
    o_tx : OUT STD_LOGIC;
    i_m_axis_tready : IN STD_LOGIC;
    o_m_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    o_m_axis_tvalid : OUT STD_LOGIC;
    o_s_axis_tready : OUT STD_LOGIC;
    i_s_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    i_s_axis_tvalid : IN STD_LOGIC
  );
END cadc_system_axi_uart_0_0;

ARCHITECTURE cadc_system_axi_uart_0_0_arch OF cadc_system_axi_uart_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF cadc_system_axi_uart_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT axi_uart_wrapper IS
    PORT (
      i_clk : IN STD_LOGIC;
      i_aresetn : IN STD_LOGIC;
      i_rx : IN STD_LOGIC;
      o_tx : OUT STD_LOGIC;
      i_m_axis_tready : IN STD_LOGIC;
      o_m_axis_tdata : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      o_m_axis_tvalid : OUT STD_LOGIC;
      o_s_axis_tready : OUT STD_LOGIC;
      i_s_axis_tdata : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      i_s_axis_tvalid : IN STD_LOGIC
    );
  END COMPONENT axi_uart_wrapper;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF cadc_system_axi_uart_0_0_arch: ARCHITECTURE IS "axi_uart_wrapper,Vivado 2025.2";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF cadc_system_axi_uart_0_0_arch : ARCHITECTURE IS "cadc_system_axi_uart_0_0,axi_uart_wrapper,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF cadc_system_axi_uart_0_0_arch: ARCHITECTURE IS "cadc_system_axi_uart_0_0,axi_uart_wrapper,{x_ipProduct=Vivado 2025.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_uart_wrapper,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED}";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF cadc_system_axi_uart_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_MODE : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF i_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 i_aresetn RST";
  ATTRIBUTE X_INTERFACE_MODE OF i_aresetn: SIGNAL IS "slave i_aresetn";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_aresetn: SIGNAL IS "XIL_INTERFACENAME i_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 i_clk CLK";
  ATTRIBUTE X_INTERFACE_MODE OF i_clk: SIGNAL IS "slave i_clk";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_clk: SIGNAL IS "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN cadc_system_sys_clk, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_s_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 i_s_axis TDATA";
  ATTRIBUTE X_INTERFACE_MODE OF i_s_axis_tdata: SIGNAL IS "slave i_s_axis";
  ATTRIBUTE X_INTERFACE_PARAMETER OF i_s_axis_tdata: SIGNAL IS "XIL_INTERFACENAME i_s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF i_s_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 i_s_axis TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF o_m_axis_tdata: SIGNAL IS "xilinx.com:interface:axis:1.0 o_m_axis TDATA";
  ATTRIBUTE X_INTERFACE_MODE OF o_m_axis_tdata: SIGNAL IS "master o_m_axis";
  ATTRIBUTE X_INTERFACE_PARAMETER OF o_m_axis_tdata: SIGNAL IS "XIL_INTERFACENAME o_m_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF o_m_axis_tvalid: SIGNAL IS "xilinx.com:interface:axis:1.0 o_m_axis TVALID";
BEGIN
  U0 : axi_uart_wrapper
    PORT MAP (
      i_clk => i_clk,
      i_aresetn => i_aresetn,
      i_rx => i_rx,
      o_tx => o_tx,
      i_m_axis_tready => i_m_axis_tready,
      o_m_axis_tdata => o_m_axis_tdata,
      o_m_axis_tvalid => o_m_axis_tvalid,
      o_s_axis_tready => o_s_axis_tready,
      i_s_axis_tdata => i_s_axis_tdata,
      i_s_axis_tvalid => i_s_axis_tvalid
    );
END cadc_system_axi_uart_0_0_arch;
