-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:forw_back:0.0
-- IP Revision: 0

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_forw_back_0_0 IS
  PORT (
    s_axi_ctrl_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_ctrl_AWVALID : IN STD_LOGIC;
    s_axi_ctrl_AWREADY : OUT STD_LOGIC;
    s_axi_ctrl_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_ctrl_WVALID : IN STD_LOGIC;
    s_axi_ctrl_WREADY : OUT STD_LOGIC;
    s_axi_ctrl_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_BVALID : OUT STD_LOGIC;
    s_axi_ctrl_BREADY : IN STD_LOGIC;
    s_axi_ctrl_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_ctrl_ARVALID : IN STD_LOGIC;
    s_axi_ctrl_ARREADY : OUT STD_LOGIC;
    s_axi_ctrl_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_ctrl_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_ctrl_RVALID : OUT STD_LOGIC;
    s_axi_ctrl_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_data_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_data_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_data_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_data_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_data_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_data_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_data_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_data_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_data_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_data_AWVALID : OUT STD_LOGIC;
    m_axi_data_AWREADY : IN STD_LOGIC;
    m_axi_data_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_data_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_data_WLAST : OUT STD_LOGIC;
    m_axi_data_WVALID : OUT STD_LOGIC;
    m_axi_data_WREADY : IN STD_LOGIC;
    m_axi_data_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_data_BVALID : IN STD_LOGIC;
    m_axi_data_BREADY : OUT STD_LOGIC;
    m_axi_data_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_data_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_data_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_data_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_data_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_data_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_data_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_data_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_data_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_data_ARVALID : OUT STD_LOGIC;
    m_axi_data_ARREADY : IN STD_LOGIC;
    m_axi_data_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_data_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_data_RLAST : IN STD_LOGIC;
    m_axi_data_RVALID : IN STD_LOGIC;
    m_axi_data_RREADY : OUT STD_LOGIC
  );
END design_1_forw_back_0_0;

ARCHITECTURE design_1_forw_back_0_0_arch OF design_1_forw_back_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_forw_back_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT forw_back IS
    GENERIC (
      C_S_AXI_CTRL_ADDR_WIDTH : INTEGER;
      C_S_AXI_CTRL_DATA_WIDTH : INTEGER;
      C_M_AXI_DATA_ID_WIDTH : INTEGER;
      C_M_AXI_DATA_ADDR_WIDTH : INTEGER;
      C_M_AXI_DATA_DATA_WIDTH : INTEGER;
      C_M_AXI_DATA_AWUSER_WIDTH : INTEGER;
      C_M_AXI_DATA_ARUSER_WIDTH : INTEGER;
      C_M_AXI_DATA_WUSER_WIDTH : INTEGER;
      C_M_AXI_DATA_RUSER_WIDTH : INTEGER;
      C_M_AXI_DATA_BUSER_WIDTH : INTEGER;
      C_M_AXI_DATA_USER_VALUE : INTEGER;
      C_M_AXI_DATA_PROT_VALUE : INTEGER;
      C_M_AXI_DATA_CACHE_VALUE : INTEGER
    );
    PORT (
      s_axi_ctrl_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_ctrl_AWVALID : IN STD_LOGIC;
      s_axi_ctrl_AWREADY : OUT STD_LOGIC;
      s_axi_ctrl_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_ctrl_WVALID : IN STD_LOGIC;
      s_axi_ctrl_WREADY : OUT STD_LOGIC;
      s_axi_ctrl_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_BVALID : OUT STD_LOGIC;
      s_axi_ctrl_BREADY : IN STD_LOGIC;
      s_axi_ctrl_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_ctrl_ARVALID : IN STD_LOGIC;
      s_axi_ctrl_ARREADY : OUT STD_LOGIC;
      s_axi_ctrl_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_ctrl_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_ctrl_RVALID : OUT STD_LOGIC;
      s_axi_ctrl_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      m_axi_data_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_data_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_data_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_data_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_data_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_data_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_data_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_data_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_data_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_data_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_AWVALID : OUT STD_LOGIC;
      m_axi_data_AWREADY : IN STD_LOGIC;
      m_axi_data_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_data_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_data_WLAST : OUT STD_LOGIC;
      m_axi_data_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_WVALID : OUT STD_LOGIC;
      m_axi_data_WREADY : IN STD_LOGIC;
      m_axi_data_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_data_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_BVALID : IN STD_LOGIC;
      m_axi_data_BREADY : OUT STD_LOGIC;
      m_axi_data_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_data_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_data_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_data_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_data_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_data_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_data_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_data_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_data_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_data_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_ARVALID : OUT STD_LOGIC;
      m_axi_data_ARREADY : IN STD_LOGIC;
      m_axi_data_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_data_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_data_RLAST : IN STD_LOGIC;
      m_axi_data_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_data_RVALID : IN STD_LOGIC;
      m_axi_data_RREADY : OUT STD_LOGIC
    );
  END COMPONENT forw_back;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_forw_back_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_data_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_data, ADDR_WIDTH 32, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN d" & 
"esign_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_data_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_data AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_ctrl:m_axi_data, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_ctrl_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_ctrl, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 50000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THR" & 
"EADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_ctrl_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_ctrl AWADDR";
BEGIN
  U0 : forw_back
    GENERIC MAP (
      C_S_AXI_CTRL_ADDR_WIDTH => 7,
      C_S_AXI_CTRL_DATA_WIDTH => 32,
      C_M_AXI_DATA_ID_WIDTH => 1,
      C_M_AXI_DATA_ADDR_WIDTH => 32,
      C_M_AXI_DATA_DATA_WIDTH => 32,
      C_M_AXI_DATA_AWUSER_WIDTH => 1,
      C_M_AXI_DATA_ARUSER_WIDTH => 1,
      C_M_AXI_DATA_WUSER_WIDTH => 1,
      C_M_AXI_DATA_RUSER_WIDTH => 1,
      C_M_AXI_DATA_BUSER_WIDTH => 1,
      C_M_AXI_DATA_USER_VALUE => 0,
      C_M_AXI_DATA_PROT_VALUE => 0,
      C_M_AXI_DATA_CACHE_VALUE => 3
    )
    PORT MAP (
      s_axi_ctrl_AWADDR => s_axi_ctrl_AWADDR,
      s_axi_ctrl_AWVALID => s_axi_ctrl_AWVALID,
      s_axi_ctrl_AWREADY => s_axi_ctrl_AWREADY,
      s_axi_ctrl_WDATA => s_axi_ctrl_WDATA,
      s_axi_ctrl_WSTRB => s_axi_ctrl_WSTRB,
      s_axi_ctrl_WVALID => s_axi_ctrl_WVALID,
      s_axi_ctrl_WREADY => s_axi_ctrl_WREADY,
      s_axi_ctrl_BRESP => s_axi_ctrl_BRESP,
      s_axi_ctrl_BVALID => s_axi_ctrl_BVALID,
      s_axi_ctrl_BREADY => s_axi_ctrl_BREADY,
      s_axi_ctrl_ARADDR => s_axi_ctrl_ARADDR,
      s_axi_ctrl_ARVALID => s_axi_ctrl_ARVALID,
      s_axi_ctrl_ARREADY => s_axi_ctrl_ARREADY,
      s_axi_ctrl_RDATA => s_axi_ctrl_RDATA,
      s_axi_ctrl_RRESP => s_axi_ctrl_RRESP,
      s_axi_ctrl_RVALID => s_axi_ctrl_RVALID,
      s_axi_ctrl_RREADY => s_axi_ctrl_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      m_axi_data_AWADDR => m_axi_data_AWADDR,
      m_axi_data_AWLEN => m_axi_data_AWLEN,
      m_axi_data_AWSIZE => m_axi_data_AWSIZE,
      m_axi_data_AWBURST => m_axi_data_AWBURST,
      m_axi_data_AWLOCK => m_axi_data_AWLOCK,
      m_axi_data_AWREGION => m_axi_data_AWREGION,
      m_axi_data_AWCACHE => m_axi_data_AWCACHE,
      m_axi_data_AWPROT => m_axi_data_AWPROT,
      m_axi_data_AWQOS => m_axi_data_AWQOS,
      m_axi_data_AWVALID => m_axi_data_AWVALID,
      m_axi_data_AWREADY => m_axi_data_AWREADY,
      m_axi_data_WDATA => m_axi_data_WDATA,
      m_axi_data_WSTRB => m_axi_data_WSTRB,
      m_axi_data_WLAST => m_axi_data_WLAST,
      m_axi_data_WVALID => m_axi_data_WVALID,
      m_axi_data_WREADY => m_axi_data_WREADY,
      m_axi_data_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_data_BRESP => m_axi_data_BRESP,
      m_axi_data_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_data_BVALID => m_axi_data_BVALID,
      m_axi_data_BREADY => m_axi_data_BREADY,
      m_axi_data_ARADDR => m_axi_data_ARADDR,
      m_axi_data_ARLEN => m_axi_data_ARLEN,
      m_axi_data_ARSIZE => m_axi_data_ARSIZE,
      m_axi_data_ARBURST => m_axi_data_ARBURST,
      m_axi_data_ARLOCK => m_axi_data_ARLOCK,
      m_axi_data_ARREGION => m_axi_data_ARREGION,
      m_axi_data_ARCACHE => m_axi_data_ARCACHE,
      m_axi_data_ARPROT => m_axi_data_ARPROT,
      m_axi_data_ARQOS => m_axi_data_ARQOS,
      m_axi_data_ARVALID => m_axi_data_ARVALID,
      m_axi_data_ARREADY => m_axi_data_ARREADY,
      m_axi_data_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_data_RDATA => m_axi_data_RDATA,
      m_axi_data_RRESP => m_axi_data_RRESP,
      m_axi_data_RLAST => m_axi_data_RLAST,
      m_axi_data_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_data_RVALID => m_axi_data_RVALID,
      m_axi_data_RREADY => m_axi_data_RREADY
    );
END design_1_forw_back_0_0_arch;
