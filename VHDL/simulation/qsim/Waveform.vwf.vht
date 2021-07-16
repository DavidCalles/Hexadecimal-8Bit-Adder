-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/15/2021 09:45:20"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Dcalles_Lab6_Adders
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Dcalles_Lab6_Adders_vhd_vec_tst IS
END Dcalles_Lab6_Adders_vhd_vec_tst;
ARCHITECTURE Dcalles_Lab6_Adders_arch OF Dcalles_Lab6_Adders_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL activate : STD_LOGIC;
SIGNAL carryOut : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL input8 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL segmentL1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segmentL2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segmentR1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segmentR2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segmentSumL : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL segmentSumR : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL selector : STD_LOGIC;
COMPONENT Dcalles_Lab6_Adders
	PORT (
	activate : IN STD_LOGIC;
	carryOut : OUT STD_LOGIC;
	clk : IN STD_LOGIC;
	input8 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC;
	segmentL1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segmentL2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segmentR1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segmentR2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segmentSumL : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	segmentSumR : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	selector : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Dcalles_Lab6_Adders
	PORT MAP (
-- list connections between master ports and signals
	activate => activate,
	carryOut => carryOut,
	clk => clk,
	input8 => input8,
	reset => reset,
	segmentL1 => segmentL1,
	segmentL2 => segmentL2,
	segmentR1 => segmentR1,
	segmentR2 => segmentR2,
	segmentSumL => segmentSumL,
	segmentSumR => segmentSumR,
	selector => selector
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- activate
t_prcs_activate: PROCESS
BEGIN
	activate <= '1';
	WAIT FOR 110000 ps;
	activate <= '0';
	WAIT FOR 40000 ps;
	activate <= '1';
	WAIT FOR 120000 ps;
	activate <= '0';
	WAIT FOR 40000 ps;
	activate <= '1';
	WAIT FOR 120000 ps;
	activate <= '0';
	WAIT FOR 40000 ps;
	activate <= '1';
	WAIT FOR 120000 ps;
	activate <= '0';
	WAIT FOR 40000 ps;
	activate <= '1';
WAIT;
END PROCESS t_prcs_activate;

-- selector
t_prcs_selector: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		selector <= '0';
		WAIT FOR 160000 ps;
		selector <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	selector <= '0';
WAIT;
END PROCESS t_prcs_selector;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
	WAIT FOR 360000 ps;
	reset <= '0';
	WAIT FOR 40000 ps;
	reset <= '1';
	WAIT FOR 270000 ps;
	reset <= '0';
	WAIT FOR 110000 ps;
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
-- input8[7]
t_prcs_input8_7: PROCESS
BEGIN
	input8(7) <= '0';
	WAIT FOR 190000 ps;
	input8(7) <= '1';
	WAIT FOR 160000 ps;
	input8(7) <= '0';
WAIT;
END PROCESS t_prcs_input8_7;
-- input8[6]
t_prcs_input8_6: PROCESS
BEGIN
	input8(6) <= '1';
	WAIT FOR 350000 ps;
	input8(6) <= '0';
WAIT;
END PROCESS t_prcs_input8_6;
-- input8[5]
t_prcs_input8_5: PROCESS
BEGIN
	input8(5) <= '1';
	WAIT FOR 520000 ps;
	input8(5) <= '0';
WAIT;
END PROCESS t_prcs_input8_5;
-- input8[4]
t_prcs_input8_4: PROCESS
BEGIN
	input8(4) <= '1';
	WAIT FOR 190000 ps;
	input8(4) <= '0';
	WAIT FOR 160000 ps;
	input8(4) <= '1';
	WAIT FOR 620000 ps;
	input8(4) <= '0';
WAIT;
END PROCESS t_prcs_input8_4;
-- input8[3]
t_prcs_input8_3: PROCESS
BEGIN
	input8(3) <= '1';
	WAIT FOR 190000 ps;
	input8(3) <= '0';
	WAIT FOR 160000 ps;
	input8(3) <= '1';
	WAIT FOR 620000 ps;
	input8(3) <= '0';
WAIT;
END PROCESS t_prcs_input8_3;
-- input8[2]
t_prcs_input8_2: PROCESS
BEGIN
	input8(2) <= '0';
	WAIT FOR 350000 ps;
	input8(2) <= '1';
	WAIT FOR 620000 ps;
	input8(2) <= '0';
WAIT;
END PROCESS t_prcs_input8_2;
-- input8[1]
t_prcs_input8_1: PROCESS
BEGIN
	input8(1) <= '0';
	WAIT FOR 350000 ps;
	input8(1) <= '1';
	WAIT FOR 620000 ps;
	input8(1) <= '0';
WAIT;
END PROCESS t_prcs_input8_1;
-- input8[0]
t_prcs_input8_0: PROCESS
BEGIN
	input8(0) <= '0';
	WAIT FOR 190000 ps;
	input8(0) <= '1';
	WAIT FOR 330000 ps;
	input8(0) <= '0';
WAIT;
END PROCESS t_prcs_input8_0;
END Dcalles_Lab6_Adders_arch;
