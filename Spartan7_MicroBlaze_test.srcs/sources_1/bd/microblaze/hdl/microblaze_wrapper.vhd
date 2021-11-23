--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
--Date        : Tue Nov 23 13:58:55 2021
--Host        : operator-PC running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target microblaze_wrapper.bd
--Design      : microblaze_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity microblaze_wrapper is
  port (
    CLK12MHZ : in STD_LOGIC;
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ck_rst : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    uart_rxd_out : out STD_LOGIC;
    uart_txd_in : in STD_LOGIC
  );
end microblaze_wrapper;

architecture STRUCTURE of microblaze_wrapper is
  component microblaze is
  port (
    CLK12MHZ : in STD_LOGIC;
    uart_txd_in : in STD_LOGIC;
    uart_rxd_out : out STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    btn : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ck_rst : in STD_LOGIC
  );
  end component microblaze;
begin
microblaze_i: component microblaze
     port map (
      CLK12MHZ => CLK12MHZ,
      btn(3 downto 0) => btn(3 downto 0),
      ck_rst => ck_rst,
      led(3 downto 0) => led(3 downto 0),
      uart_rxd_out => uart_rxd_out,
      uart_txd_in => uart_txd_in
    );
end STRUCTURE;
