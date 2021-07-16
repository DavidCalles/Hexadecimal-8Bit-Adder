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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "07/15/2021 10:05:38"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Dcalles_Lab6_Adders IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	selector : IN std_logic;
	activate : IN std_logic;
	input8 : IN std_logic_vector(7 DOWNTO 0);
	segmentL1 : OUT std_logic_vector(6 DOWNTO 0);
	segmentL2 : OUT std_logic_vector(6 DOWNTO 0);
	segmentR1 : OUT std_logic_vector(6 DOWNTO 0);
	segmentR2 : OUT std_logic_vector(6 DOWNTO 0);
	segmentSumL : OUT std_logic_vector(6 DOWNTO 0);
	segmentSumR : OUT std_logic_vector(6 DOWNTO 0);
	carryOut : OUT std_logic
	);
END Dcalles_Lab6_Adders;

-- Design Ports Information
-- segmentL1[0]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL1[1]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL1[2]	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL1[3]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL1[4]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL1[5]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL1[6]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL2[0]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL2[1]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL2[2]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL2[4]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL2[5]	=>  Location: PIN_V23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentL2[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR1[0]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR1[1]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR1[2]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR1[3]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR1[4]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR1[5]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR1[6]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR2[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR2[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR2[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR2[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR2[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR2[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentR2[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumL[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumL[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumL[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumL[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumL[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumL[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumL[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumR[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumR[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumR[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumR[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumR[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumR[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- segmentSumR[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryOut	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- selector	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- activate	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input8[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Dcalles_Lab6_Adders IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_selector : std_logic;
SIGNAL ww_activate : std_logic;
SIGNAL ww_input8 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_segmentL1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentL2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentR1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentR2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentSumL : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_segmentSumR : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_carryOut : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \input8[4]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \selector~input_o\ : std_logic;
SIGNAL \activate~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF15|q~0_combout\ : std_logic;
SIGNAL \Memory16Bits1|DFF12|q~q\ : std_logic;
SIGNAL \input8[6]~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF14|q~q\ : std_logic;
SIGNAL \input8[7]~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF15|q~q\ : std_logic;
SIGNAL \input8[5]~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF13|q~q\ : std_logic;
SIGNAL \SevenSegmentsL1|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL1|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL1|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL1|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL1|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL1|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL1|Mux0~0_combout\ : std_logic;
SIGNAL \input8[0]~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF8|q~q\ : std_logic;
SIGNAL \input8[2]~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF10|q~q\ : std_logic;
SIGNAL \input8[1]~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF9|q~q\ : std_logic;
SIGNAL \input8[3]~input_o\ : std_logic;
SIGNAL \Memory16Bits1|DFF11|q~q\ : std_logic;
SIGNAL \SevenSegmentsL2|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL2|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL2|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL2|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL2|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL2|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL2|Mux0~0_combout\ : std_logic;
SIGNAL \Memory16Bits1|DFF7|q~0_combout\ : std_logic;
SIGNAL \Memory16Bits1|DFF4|q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF5|q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF7|q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF6|q~q\ : std_logic;
SIGNAL \SevenSegmentsR1|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR1|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR1|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR1|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR1|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR1|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR1|Mux0~0_combout\ : std_logic;
SIGNAL \Memory16Bits1|DFF1|q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF3|q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF0|q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF2|q~q\ : std_logic;
SIGNAL \SevenSegmentsR2|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR2|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR2|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR2|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR2|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR2|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR2|Mux0~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder2|OutC~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|OutC~1_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|OutC~2_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|OutC~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder7|R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder4|R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder3|OutC~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder6|R~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|Mux0~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder1|R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder2|R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|HalfAdder0|R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder3|R~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumR|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumR|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumR|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumR|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumR|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumR|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumR|Mux0~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder7|OutC~0_combout\ : std_logic;
SIGNAL \ALT_INV_activate~input_o\ : std_logic;
SIGNAL \ALT_INV_selector~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \SevenSegmentsSumR|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \SevenSegmentsSumL|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|ALT_INV_OutC~2_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|ALT_INV_OutC~1_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|ALT_INV_OutC~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder3|ALT_INV_OutC~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\ : std_logic;
SIGNAL \Adder8Bits1|FullAdder2|ALT_INV_OutC~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegmentsR1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegmentsL1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \Memory16Bits1|DFF3|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF2|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF1|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF0|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF7|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF6|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF5|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF4|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF11|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF10|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF9|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF8|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF15|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF14|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF13|ALT_INV_q~q\ : std_logic;
SIGNAL \Memory16Bits1|DFF12|ALT_INV_q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_selector <= selector;
ww_activate <= activate;
ww_input8 <= input8;
segmentL1 <= ww_segmentL1;
segmentL2 <= ww_segmentL2;
segmentR1 <= ww_segmentR1;
segmentR2 <= ww_segmentR2;
segmentSumL <= ww_segmentSumL;
segmentSumR <= ww_segmentSumR;
carryOut <= ww_carryOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_activate~input_o\ <= NOT \activate~input_o\;
\ALT_INV_selector~input_o\ <= NOT \selector~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\SevenSegmentsSumR|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsSumR|Mux0~0_combout\;
\Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|FullAdder3|R~0_combout\;
\Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|FullAdder2|R~0_combout\;
\Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|FullAdder1|R~0_combout\;
\Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|HalfAdder0|R~0_combout\;
\SevenSegmentsSumL|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsSumL|Mux0~0_combout\;
\Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|FullAdder7|R~0_combout\;
\Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|FullAdder6|R~0_combout\;
\Adder8Bits1|FullAdder5|ALT_INV_OutC~2_combout\ <= NOT \Adder8Bits1|FullAdder5|OutC~2_combout\;
\Adder8Bits1|FullAdder5|ALT_INV_OutC~1_combout\ <= NOT \Adder8Bits1|FullAdder5|OutC~1_combout\;
\Adder8Bits1|FullAdder5|ALT_INV_OutC~0_combout\ <= NOT \Adder8Bits1|FullAdder5|OutC~0_combout\;
\Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|FullAdder5|R~0_combout\;
\Adder8Bits1|FullAdder3|ALT_INV_OutC~0_combout\ <= NOT \Adder8Bits1|FullAdder3|OutC~0_combout\;
\Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\ <= NOT \Adder8Bits1|FullAdder4|R~0_combout\;
\Adder8Bits1|FullAdder2|ALT_INV_OutC~0_combout\ <= NOT \Adder8Bits1|FullAdder2|OutC~0_combout\;
\SevenSegmentsR2|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsR2|Mux0~0_combout\;
\SevenSegmentsR1|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsR1|Mux0~0_combout\;
\SevenSegmentsL2|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsL2|Mux0~0_combout\;
\SevenSegmentsL1|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegmentsL1|Mux0~0_combout\;
\Memory16Bits1|DFF3|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF3|q~q\;
\Memory16Bits1|DFF2|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF2|q~q\;
\Memory16Bits1|DFF1|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF1|q~q\;
\Memory16Bits1|DFF0|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF0|q~q\;
\Memory16Bits1|DFF7|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF7|q~q\;
\Memory16Bits1|DFF6|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF6|q~q\;
\Memory16Bits1|DFF5|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF5|q~q\;
\Memory16Bits1|DFF4|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF4|q~q\;
\Memory16Bits1|DFF11|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF11|q~q\;
\Memory16Bits1|DFF10|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF10|q~q\;
\Memory16Bits1|DFF9|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF9|q~q\;
\Memory16Bits1|DFF8|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF8|q~q\;
\Memory16Bits1|DFF15|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF15|q~q\;
\Memory16Bits1|DFF14|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF14|q~q\;
\Memory16Bits1|DFF13|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF13|q~q\;
\Memory16Bits1|DFF12|ALT_INV_q~q\ <= NOT \Memory16Bits1|DFF12|q~q\;

-- Location: IOOBUF_X89_Y20_N62
\segmentL1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL1(0));

-- Location: IOOBUF_X89_Y21_N56
\segmentL1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL1(1));

-- Location: IOOBUF_X89_Y25_N22
\segmentL1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL1(2));

-- Location: IOOBUF_X89_Y23_N22
\segmentL1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL1(3));

-- Location: IOOBUF_X89_Y9_N56
\segmentL1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL1(4));

-- Location: IOOBUF_X89_Y23_N5
\segmentL1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL1(5));

-- Location: IOOBUF_X89_Y9_N39
\segmentL1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL1(6));

-- Location: IOOBUF_X89_Y11_N45
\segmentL2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL2(0));

-- Location: IOOBUF_X89_Y13_N5
\segmentL2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL2(1));

-- Location: IOOBUF_X89_Y13_N22
\segmentL2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL2(2));

-- Location: IOOBUF_X89_Y8_N22
\segmentL2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL2(3));

-- Location: IOOBUF_X89_Y15_N22
\segmentL2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL2(4));

-- Location: IOOBUF_X89_Y15_N5
\segmentL2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL2(5));

-- Location: IOOBUF_X89_Y20_N45
\segmentL2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsL2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentL2(6));

-- Location: IOOBUF_X89_Y16_N5
\segmentR1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR1(0));

-- Location: IOOBUF_X89_Y16_N22
\segmentR1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR1(1));

-- Location: IOOBUF_X89_Y4_N45
\segmentR1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR1(2));

-- Location: IOOBUF_X89_Y4_N62
\segmentR1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR1(3));

-- Location: IOOBUF_X89_Y21_N39
\segmentR1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR1(4));

-- Location: IOOBUF_X89_Y11_N62
\segmentR1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR1(5));

-- Location: IOOBUF_X89_Y9_N5
\segmentR1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR1(6));

-- Location: IOOBUF_X89_Y9_N22
\segmentR2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR2(0));

-- Location: IOOBUF_X89_Y23_N39
\segmentR2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR2(1));

-- Location: IOOBUF_X89_Y23_N56
\segmentR2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR2(2));

-- Location: IOOBUF_X89_Y20_N79
\segmentR2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR2(3));

-- Location: IOOBUF_X89_Y25_N39
\segmentR2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR2(4));

-- Location: IOOBUF_X89_Y20_N96
\segmentR2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR2(5));

-- Location: IOOBUF_X89_Y25_N56
\segmentR2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsR2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentR2(6));

-- Location: IOOBUF_X89_Y6_N39
\segmentSumL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumL|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumL(0));

-- Location: IOOBUF_X89_Y6_N56
\segmentSumL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumL|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumL(1));

-- Location: IOOBUF_X89_Y16_N39
\segmentSumL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumL|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumL(2));

-- Location: IOOBUF_X89_Y16_N56
\segmentSumL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumL|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumL(3));

-- Location: IOOBUF_X89_Y15_N39
\segmentSumL[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumL|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumL(4));

-- Location: IOOBUF_X89_Y15_N56
\segmentSumL[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumL|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumL(5));

-- Location: IOOBUF_X89_Y8_N56
\segmentSumL[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumL|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumL(6));

-- Location: IOOBUF_X89_Y8_N39
\segmentSumR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumR|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumR(0));

-- Location: IOOBUF_X89_Y11_N79
\segmentSumR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumR|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumR(1));

-- Location: IOOBUF_X89_Y11_N96
\segmentSumR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumR|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumR(2));

-- Location: IOOBUF_X89_Y4_N79
\segmentSumR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumR|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumR(3));

-- Location: IOOBUF_X89_Y13_N56
\segmentSumR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumR|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumR(4));

-- Location: IOOBUF_X89_Y13_N39
\segmentSumR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumR|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumR(5));

-- Location: IOOBUF_X89_Y4_N96
\segmentSumR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegmentsSumR|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_segmentSumR(6));

-- Location: IOOBUF_X60_Y0_N19
\carryOut~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Adder8Bits1|FullAdder7|OutC~0_combout\,
	devoe => ww_devoe,
	o => ww_carryOut);

-- Location: IOIBUF_X32_Y0_N1
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G6
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X2_Y0_N41
\input8[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(4),
	o => \input8[4]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\selector~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selector,
	o => \selector~input_o\);

-- Location: IOIBUF_X36_Y0_N1
\activate~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_activate,
	o => \activate~input_o\);

-- Location: LABCELL_X85_Y12_N3
\Memory16Bits1|DFF15|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Memory16Bits1|DFF15|q~0_combout\ = ( \reset~input_o\ & ( (!\selector~input_o\ & !\activate~input_o\) ) ) # ( !\reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_selector~input_o\,
	datad => \ALT_INV_activate~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \Memory16Bits1|DFF15|q~0_combout\);

-- Location: FF_X84_Y12_N35
\Memory16Bits1|DFF12|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[4]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF12|q~q\);

-- Location: IOIBUF_X4_Y0_N35
\input8[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(6),
	o => \input8[6]~input_o\);

-- Location: FF_X84_Y12_N11
\Memory16Bits1|DFF14|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[6]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF14|q~q\);

-- Location: IOIBUF_X4_Y0_N1
\input8[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(7),
	o => \input8[7]~input_o\);

-- Location: FF_X84_Y12_N14
\Memory16Bits1|DFF15|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[7]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF15|q~q\);

-- Location: IOIBUF_X16_Y0_N18
\input8[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(5),
	o => \input8[5]~input_o\);

-- Location: FF_X84_Y12_N32
\Memory16Bits1|DFF13|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[5]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF13|q~q\);

-- Location: MLABCELL_X84_Y12_N36
\SevenSegmentsL1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL1|Mux6~0_combout\ = ( \Memory16Bits1|DFF13|q~q\ & ( (\Memory16Bits1|DFF12|q~q\ & (!\Memory16Bits1|DFF14|q~q\ & \Memory16Bits1|DFF15|q~q\)) ) ) # ( !\Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF12|q~q\ & (\Memory16Bits1|DFF14|q~q\ & 
-- !\Memory16Bits1|DFF15|q~q\)) # (\Memory16Bits1|DFF12|q~q\ & (!\Memory16Bits1|DFF14|q~q\ $ (\Memory16Bits1|DFF15|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \SevenSegmentsL1|Mux6~0_combout\);

-- Location: MLABCELL_X84_Y12_N39
\SevenSegmentsL1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL1|Mux5~0_combout\ = ( \Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF12|q~q\ & (\Memory16Bits1|DFF14|q~q\)) # (\Memory16Bits1|DFF12|q~q\ & ((\Memory16Bits1|DFF15|q~q\))) ) ) # ( !\Memory16Bits1|DFF13|q~q\ & ( (\Memory16Bits1|DFF14|q~q\ & 
-- (!\Memory16Bits1|DFF12|q~q\ $ (!\Memory16Bits1|DFF15|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \SevenSegmentsL1|Mux5~0_combout\);

-- Location: MLABCELL_X84_Y12_N42
\SevenSegmentsL1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL1|Mux4~0_combout\ = ( \Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF14|q~q\ & (!\Memory16Bits1|DFF12|q~q\ & !\Memory16Bits1|DFF15|q~q\)) # (\Memory16Bits1|DFF14|q~q\ & ((\Memory16Bits1|DFF15|q~q\))) ) ) # ( !\Memory16Bits1|DFF13|q~q\ & 
-- ( (!\Memory16Bits1|DFF12|q~q\ & (\Memory16Bits1|DFF14|q~q\ & \Memory16Bits1|DFF15|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010000011100000111000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \SevenSegmentsL1|Mux4~0_combout\);

-- Location: MLABCELL_X84_Y12_N45
\SevenSegmentsL1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL1|Mux3~0_combout\ = ( \Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF12|q~q\ & (!\Memory16Bits1|DFF14|q~q\ & \Memory16Bits1|DFF15|q~q\)) # (\Memory16Bits1|DFF12|q~q\ & (\Memory16Bits1|DFF14|q~q\)) ) ) # ( !\Memory16Bits1|DFF13|q~q\ & ( 
-- (!\Memory16Bits1|DFF12|q~q\ & (\Memory16Bits1|DFF14|q~q\ & !\Memory16Bits1|DFF15|q~q\)) # (\Memory16Bits1|DFF12|q~q\ & (!\Memory16Bits1|DFF14|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001010000010110100101000000000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \SevenSegmentsL1|Mux3~0_combout\);

-- Location: MLABCELL_X84_Y12_N15
\SevenSegmentsL1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL1|Mux2~0_combout\ = ( \Memory16Bits1|DFF13|q~q\ & ( (\Memory16Bits1|DFF12|q~q\ & !\Memory16Bits1|DFF15|q~q\) ) ) # ( !\Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF14|q~q\ & (\Memory16Bits1|DFF12|q~q\)) # (\Memory16Bits1|DFF14|q~q\ & 
-- ((!\Memory16Bits1|DFF15|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010001110100011101000111010001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \SevenSegmentsL1|Mux2~0_combout\);

-- Location: MLABCELL_X84_Y12_N6
\SevenSegmentsL1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL1|Mux1~0_combout\ = ( \Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF15|q~q\ & ((!\Memory16Bits1|DFF14|q~q\) # (\Memory16Bits1|DFF12|q~q\))) ) ) # ( !\Memory16Bits1|DFF13|q~q\ & ( (\Memory16Bits1|DFF12|q~q\ & (!\Memory16Bits1|DFF14|q~q\ 
-- $ (\Memory16Bits1|DFF15|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000011000011000000001111001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \SevenSegmentsL1|Mux1~0_combout\);

-- Location: MLABCELL_X84_Y12_N12
\SevenSegmentsL1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL1|Mux0~0_combout\ = ( \Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF12|q~q\) # ((!\Memory16Bits1|DFF14|q~q\) # (\Memory16Bits1|DFF15|q~q\)) ) ) # ( !\Memory16Bits1|DFF13|q~q\ & ( (!\Memory16Bits1|DFF14|q~q\ & 
-- ((\Memory16Bits1|DFF15|q~q\))) # (\Memory16Bits1|DFF14|q~q\ & ((!\Memory16Bits1|DFF15|q~q\) # (\Memory16Bits1|DFF12|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111011101001100111101110111101110111111111110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \SevenSegmentsL1|Mux0~0_combout\);

-- Location: IOIBUF_X12_Y0_N18
\input8[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(0),
	o => \input8[0]~input_o\);

-- Location: FF_X83_Y12_N5
\Memory16Bits1|DFF8|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[0]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF8|q~q\);

-- Location: IOIBUF_X8_Y0_N35
\input8[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(2),
	o => \input8[2]~input_o\);

-- Location: FF_X83_Y12_N2
\Memory16Bits1|DFF10|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[2]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF10|q~q\);

-- Location: IOIBUF_X16_Y0_N1
\input8[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(1),
	o => \input8[1]~input_o\);

-- Location: FF_X83_Y12_N41
\Memory16Bits1|DFF9|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[1]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF9|q~q\);

-- Location: IOIBUF_X4_Y0_N52
\input8[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input8(3),
	o => \input8[3]~input_o\);

-- Location: FF_X83_Y12_N44
\Memory16Bits1|DFF11|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[3]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF15|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF11|q~q\);

-- Location: LABCELL_X83_Y12_N39
\SevenSegmentsL2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL2|Mux6~0_combout\ = ( \Memory16Bits1|DFF11|q~q\ & ( (\Memory16Bits1|DFF8|q~q\ & (!\Memory16Bits1|DFF10|q~q\ $ (!\Memory16Bits1|DFF9|q~q\))) ) ) # ( !\Memory16Bits1|DFF11|q~q\ & ( (!\Memory16Bits1|DFF9|q~q\ & (!\Memory16Bits1|DFF8|q~q\ $ 
-- (!\Memory16Bits1|DFF10|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	combout => \SevenSegmentsL2|Mux6~0_combout\);

-- Location: LABCELL_X83_Y12_N33
\SevenSegmentsL2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL2|Mux5~0_combout\ = ( \Memory16Bits1|DFF11|q~q\ & ( (!\Memory16Bits1|DFF8|q~q\ & (\Memory16Bits1|DFF10|q~q\)) # (\Memory16Bits1|DFF8|q~q\ & ((\Memory16Bits1|DFF9|q~q\))) ) ) # ( !\Memory16Bits1|DFF11|q~q\ & ( (\Memory16Bits1|DFF10|q~q\ & 
-- (!\Memory16Bits1|DFF9|q~q\ $ (!\Memory16Bits1|DFF8|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101000100000100010100010001010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	combout => \SevenSegmentsL2|Mux5~0_combout\);

-- Location: LABCELL_X83_Y12_N6
\SevenSegmentsL2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL2|Mux4~0_combout\ = ( \Memory16Bits1|DFF11|q~q\ & ( (\Memory16Bits1|DFF10|q~q\ & ((!\Memory16Bits1|DFF8|q~q\) # (\Memory16Bits1|DFF9|q~q\))) ) ) # ( !\Memory16Bits1|DFF11|q~q\ & ( (\Memory16Bits1|DFF9|q~q\ & (!\Memory16Bits1|DFF10|q~q\ & 
-- !\Memory16Bits1|DFF8|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000001111000000110000111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	combout => \SevenSegmentsL2|Mux4~0_combout\);

-- Location: LABCELL_X83_Y12_N9
\SevenSegmentsL2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL2|Mux3~0_combout\ = ( \Memory16Bits1|DFF11|q~q\ & ( (!\Memory16Bits1|DFF10|q~q\ & (!\Memory16Bits1|DFF9|q~q\ $ (!\Memory16Bits1|DFF8|q~q\))) # (\Memory16Bits1|DFF10|q~q\ & (\Memory16Bits1|DFF9|q~q\ & \Memory16Bits1|DFF8|q~q\)) ) ) # ( 
-- !\Memory16Bits1|DFF11|q~q\ & ( (!\Memory16Bits1|DFF10|q~q\ & (!\Memory16Bits1|DFF9|q~q\ & \Memory16Bits1|DFF8|q~q\)) # (\Memory16Bits1|DFF10|q~q\ & (!\Memory16Bits1|DFF9|q~q\ $ (\Memory16Bits1|DFF8|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010100110010010001010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	combout => \SevenSegmentsL2|Mux3~0_combout\);

-- Location: LABCELL_X83_Y12_N12
\SevenSegmentsL2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL2|Mux2~0_combout\ = ( \Memory16Bits1|DFF11|q~q\ & ( (!\Memory16Bits1|DFF9|q~q\ & (\Memory16Bits1|DFF8|q~q\ & !\Memory16Bits1|DFF10|q~q\)) ) ) # ( !\Memory16Bits1|DFF11|q~q\ & ( ((!\Memory16Bits1|DFF9|q~q\ & \Memory16Bits1|DFF10|q~q\)) # 
-- (\Memory16Bits1|DFF8|q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	combout => \SevenSegmentsL2|Mux2~0_combout\);

-- Location: LABCELL_X83_Y12_N30
\SevenSegmentsL2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL2|Mux1~0_combout\ = ( \Memory16Bits1|DFF11|q~q\ & ( (\Memory16Bits1|DFF10|q~q\ & (!\Memory16Bits1|DFF9|q~q\ & \Memory16Bits1|DFF8|q~q\)) ) ) # ( !\Memory16Bits1|DFF11|q~q\ & ( (!\Memory16Bits1|DFF10|q~q\ & ((\Memory16Bits1|DFF8|q~q\) # 
-- (\Memory16Bits1|DFF9|q~q\))) # (\Memory16Bits1|DFF10|q~q\ & (\Memory16Bits1|DFF9|q~q\ & \Memory16Bits1|DFF8|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101100101011001010110010101100000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	combout => \SevenSegmentsL2|Mux1~0_combout\);

-- Location: LABCELL_X83_Y12_N24
\SevenSegmentsL2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsL2|Mux0~0_combout\ = ( \Memory16Bits1|DFF11|q~q\ & ( ((!\Memory16Bits1|DFF10|q~q\) # (\Memory16Bits1|DFF9|q~q\)) # (\Memory16Bits1|DFF8|q~q\) ) ) # ( !\Memory16Bits1|DFF11|q~q\ & ( (!\Memory16Bits1|DFF9|q~q\ & ((\Memory16Bits1|DFF10|q~q\))) 
-- # (\Memory16Bits1|DFF9|q~q\ & ((!\Memory16Bits1|DFF8|q~q\) # (!\Memory16Bits1|DFF10|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111000111110001111100011111011110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	combout => \SevenSegmentsL2|Mux0~0_combout\);

-- Location: LABCELL_X85_Y12_N6
\Memory16Bits1|DFF7|q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Memory16Bits1|DFF7|q~0_combout\ = ( \reset~input_o\ & ( (\selector~input_o\ & !\activate~input_o\) ) ) # ( !\reset~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_selector~input_o\,
	datac => \ALT_INV_activate~input_o\,
	dataf => \ALT_INV_reset~input_o\,
	combout => \Memory16Bits1|DFF7|q~0_combout\);

-- Location: FF_X84_Y12_N50
\Memory16Bits1|DFF4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[4]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF4|q~q\);

-- Location: FF_X84_Y12_N29
\Memory16Bits1|DFF5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[5]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF5|q~q\);

-- Location: FF_X84_Y12_N26
\Memory16Bits1|DFF7|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[7]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF7|q~q\);

-- Location: FF_X84_Y12_N5
\Memory16Bits1|DFF6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[6]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF6|q~q\);

-- Location: LABCELL_X85_Y12_N33
\SevenSegmentsR1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR1|Mux6~0_combout\ = ( \Memory16Bits1|DFF6|q~q\ & ( (!\Memory16Bits1|DFF5|q~q\ & (!\Memory16Bits1|DFF4|q~q\ $ (\Memory16Bits1|DFF7|q~q\))) ) ) # ( !\Memory16Bits1|DFF6|q~q\ & ( (\Memory16Bits1|DFF4|q~q\ & (!\Memory16Bits1|DFF5|q~q\ $ 
-- (\Memory16Bits1|DFF7|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010110100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	combout => \SevenSegmentsR1|Mux6~0_combout\);

-- Location: LABCELL_X85_Y12_N36
\SevenSegmentsR1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR1|Mux5~0_combout\ = ( \Memory16Bits1|DFF6|q~q\ & ( (!\Memory16Bits1|DFF7|q~q\ & (!\Memory16Bits1|DFF5|q~q\ $ (!\Memory16Bits1|DFF4|q~q\))) # (\Memory16Bits1|DFF7|q~q\ & ((!\Memory16Bits1|DFF4|q~q\) # (\Memory16Bits1|DFF5|q~q\))) ) ) # ( 
-- !\Memory16Bits1|DFF6|q~q\ & ( (\Memory16Bits1|DFF7|q~q\ & (\Memory16Bits1|DFF5|q~q\ & \Memory16Bits1|DFF4|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	combout => \SevenSegmentsR1|Mux5~0_combout\);

-- Location: LABCELL_X85_Y12_N12
\SevenSegmentsR1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR1|Mux4~0_combout\ = ( \Memory16Bits1|DFF6|q~q\ & ( (\Memory16Bits1|DFF7|q~q\ & ((!\Memory16Bits1|DFF4|q~q\) # (\Memory16Bits1|DFF5|q~q\))) ) ) # ( !\Memory16Bits1|DFF6|q~q\ & ( (!\Memory16Bits1|DFF7|q~q\ & (\Memory16Bits1|DFF5|q~q\ & 
-- !\Memory16Bits1|DFF4|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000001010001010100010101000101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	combout => \SevenSegmentsR1|Mux4~0_combout\);

-- Location: LABCELL_X85_Y12_N51
\SevenSegmentsR1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR1|Mux3~0_combout\ = ( \Memory16Bits1|DFF6|q~q\ & ( (!\Memory16Bits1|DFF4|q~q\ & (!\Memory16Bits1|DFF5|q~q\ & !\Memory16Bits1|DFF7|q~q\)) # (\Memory16Bits1|DFF4|q~q\ & (\Memory16Bits1|DFF5|q~q\)) ) ) # ( !\Memory16Bits1|DFF6|q~q\ & ( 
-- (!\Memory16Bits1|DFF4|q~q\ & (\Memory16Bits1|DFF5|q~q\ & \Memory16Bits1|DFF7|q~q\)) # (\Memory16Bits1|DFF4|q~q\ & (!\Memory16Bits1|DFF5|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011010010100000101101010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	combout => \SevenSegmentsR1|Mux3~0_combout\);

-- Location: LABCELL_X85_Y12_N54
\SevenSegmentsR1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR1|Mux2~0_combout\ = ( \Memory16Bits1|DFF4|q~q\ & ( (!\Memory16Bits1|DFF7|q~q\) # ((!\Memory16Bits1|DFF6|q~q\ & !\Memory16Bits1|DFF5|q~q\)) ) ) # ( !\Memory16Bits1|DFF4|q~q\ & ( (\Memory16Bits1|DFF6|q~q\ & (!\Memory16Bits1|DFF5|q~q\ & 
-- !\Memory16Bits1|DFF7|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011111000111110001111100011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	combout => \SevenSegmentsR1|Mux2~0_combout\);

-- Location: LABCELL_X85_Y12_N57
\SevenSegmentsR1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR1|Mux1~0_combout\ = ( \Memory16Bits1|DFF4|q~q\ & ( !\Memory16Bits1|DFF7|q~q\ $ (((\Memory16Bits1|DFF6|q~q\ & !\Memory16Bits1|DFF5|q~q\))) ) ) # ( !\Memory16Bits1|DFF4|q~q\ & ( (!\Memory16Bits1|DFF6|q~q\ & (\Memory16Bits1|DFF5|q~q\ & 
-- !\Memory16Bits1|DFF7|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010110100101101001011010010110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	combout => \SevenSegmentsR1|Mux1~0_combout\);

-- Location: LABCELL_X85_Y12_N0
\SevenSegmentsR1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR1|Mux0~0_combout\ = ( \Memory16Bits1|DFF6|q~q\ & ( (!\Memory16Bits1|DFF4|q~q\ & ((!\Memory16Bits1|DFF7|q~q\) # (\Memory16Bits1|DFF5|q~q\))) # (\Memory16Bits1|DFF4|q~q\ & ((!\Memory16Bits1|DFF5|q~q\) # (\Memory16Bits1|DFF7|q~q\))) ) ) # ( 
-- !\Memory16Bits1|DFF6|q~q\ & ( (\Memory16Bits1|DFF7|q~q\) # (\Memory16Bits1|DFF5|q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111111100111111001111110011111100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	combout => \SevenSegmentsR1|Mux0~0_combout\);

-- Location: FF_X83_Y12_N29
\Memory16Bits1|DFF1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[1]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF1|q~q\);

-- Location: FF_X83_Y12_N26
\Memory16Bits1|DFF3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[3]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF3|q~q\);

-- Location: FF_X83_Y12_N23
\Memory16Bits1|DFF0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[0]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF0|q~q\);

-- Location: FF_X83_Y12_N20
\Memory16Bits1|DFF2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	asdata => \input8[2]~input_o\,
	sclr => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Memory16Bits1|DFF7|q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Memory16Bits1|DFF2|q~q\);

-- Location: LABCELL_X83_Y12_N15
\SevenSegmentsR2|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR2|Mux6~0_combout\ = ( \Memory16Bits1|DFF2|q~q\ & ( (!\Memory16Bits1|DFF1|q~q\ & (!\Memory16Bits1|DFF3|q~q\ $ (\Memory16Bits1|DFF0|q~q\))) ) ) # ( !\Memory16Bits1|DFF2|q~q\ & ( (\Memory16Bits1|DFF0|q~q\ & (!\Memory16Bits1|DFF1|q~q\ $ 
-- (\Memory16Bits1|DFF3|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	combout => \SevenSegmentsR2|Mux6~0_combout\);

-- Location: LABCELL_X83_Y12_N48
\SevenSegmentsR2|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR2|Mux5~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( (!\Memory16Bits1|DFF0|q~q\ & (\Memory16Bits1|DFF2|q~q\)) # (\Memory16Bits1|DFF0|q~q\ & ((\Memory16Bits1|DFF1|q~q\))) ) ) # ( !\Memory16Bits1|DFF3|q~q\ & ( (\Memory16Bits1|DFF2|q~q\ & 
-- (!\Memory16Bits1|DFF1|q~q\ $ (!\Memory16Bits1|DFF0|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010000010100000101000001010001010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \SevenSegmentsR2|Mux5~0_combout\);

-- Location: LABCELL_X83_Y12_N51
\SevenSegmentsR2|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR2|Mux4~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( (\Memory16Bits1|DFF2|q~q\ & ((!\Memory16Bits1|DFF0|q~q\) # (\Memory16Bits1|DFF1|q~q\))) ) ) # ( !\Memory16Bits1|DFF3|q~q\ & ( (!\Memory16Bits1|DFF2|q~q\ & (\Memory16Bits1|DFF1|q~q\ & 
-- !\Memory16Bits1|DFF0|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \SevenSegmentsR2|Mux4~0_combout\);

-- Location: LABCELL_X83_Y12_N42
\SevenSegmentsR2|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR2|Mux3~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( (!\Memory16Bits1|DFF2|q~q\ & (!\Memory16Bits1|DFF1|q~q\ $ (!\Memory16Bits1|DFF0|q~q\))) # (\Memory16Bits1|DFF2|q~q\ & (\Memory16Bits1|DFF1|q~q\ & \Memory16Bits1|DFF0|q~q\)) ) ) # ( 
-- !\Memory16Bits1|DFF3|q~q\ & ( (!\Memory16Bits1|DFF2|q~q\ & (!\Memory16Bits1|DFF1|q~q\ & \Memory16Bits1|DFF0|q~q\)) # (\Memory16Bits1|DFF2|q~q\ & (!\Memory16Bits1|DFF1|q~q\ $ (\Memory16Bits1|DFF0|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100101001001010010010100100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \SevenSegmentsR2|Mux3~0_combout\);

-- Location: LABCELL_X83_Y12_N45
\SevenSegmentsR2|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR2|Mux2~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( (!\Memory16Bits1|DFF2|q~q\ & (!\Memory16Bits1|DFF1|q~q\ & \Memory16Bits1|DFF0|q~q\)) ) ) # ( !\Memory16Bits1|DFF3|q~q\ & ( ((\Memory16Bits1|DFF2|q~q\ & !\Memory16Bits1|DFF1|q~q\)) # 
-- (\Memory16Bits1|DFF0|q~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010011111111010001001111111100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \SevenSegmentsR2|Mux2~0_combout\);

-- Location: LABCELL_X83_Y12_N57
\SevenSegmentsR2|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR2|Mux1~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( (\Memory16Bits1|DFF2|q~q\ & (!\Memory16Bits1|DFF1|q~q\ & \Memory16Bits1|DFF0|q~q\)) ) ) # ( !\Memory16Bits1|DFF3|q~q\ & ( (!\Memory16Bits1|DFF2|q~q\ & ((\Memory16Bits1|DFF0|q~q\) # 
-- (\Memory16Bits1|DFF1|q~q\))) # (\Memory16Bits1|DFF2|q~q\ & (\Memory16Bits1|DFF1|q~q\ & \Memory16Bits1|DFF0|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010111011001000101011101100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \SevenSegmentsR2|Mux1~0_combout\);

-- Location: LABCELL_X83_Y12_N54
\SevenSegmentsR2|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsR2|Mux0~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( ((!\Memory16Bits1|DFF2|q~q\) # (\Memory16Bits1|DFF0|q~q\)) # (\Memory16Bits1|DFF1|q~q\) ) ) # ( !\Memory16Bits1|DFF3|q~q\ & ( (!\Memory16Bits1|DFF1|q~q\ & (\Memory16Bits1|DFF2|q~q\)) # 
-- (\Memory16Bits1|DFF1|q~q\ & ((!\Memory16Bits1|DFF2|q~q\) # (!\Memory16Bits1|DFF0|q~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111100001111110011110011110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \SevenSegmentsR2|Mux0~0_combout\);

-- Location: LABCELL_X83_Y12_N0
\Adder8Bits1|FullAdder2|OutC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder2|OutC~0_combout\ = ( \Memory16Bits1|DFF10|q~q\ & ( \Memory16Bits1|DFF2|q~q\ ) ) # ( !\Memory16Bits1|DFF10|q~q\ & ( \Memory16Bits1|DFF2|q~q\ & ( (!\Memory16Bits1|DFF9|q~q\ & (\Memory16Bits1|DFF8|q~q\ & (\Memory16Bits1|DFF0|q~q\ & 
-- \Memory16Bits1|DFF1|q~q\))) # (\Memory16Bits1|DFF9|q~q\ & (((\Memory16Bits1|DFF8|q~q\ & \Memory16Bits1|DFF0|q~q\)) # (\Memory16Bits1|DFF1|q~q\))) ) ) ) # ( \Memory16Bits1|DFF10|q~q\ & ( !\Memory16Bits1|DFF2|q~q\ & ( (!\Memory16Bits1|DFF9|q~q\ & 
-- (\Memory16Bits1|DFF8|q~q\ & (\Memory16Bits1|DFF0|q~q\ & \Memory16Bits1|DFF1|q~q\))) # (\Memory16Bits1|DFF9|q~q\ & (((\Memory16Bits1|DFF8|q~q\ & \Memory16Bits1|DFF0|q~q\)) # (\Memory16Bits1|DFF1|q~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010011011100000001001101111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	datae => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder2|OutC~0_combout\);

-- Location: MLABCELL_X84_Y12_N21
\Adder8Bits1|FullAdder5|OutC~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder5|OutC~1_combout\ = ( !\Memory16Bits1|DFF13|q~q\ & ( !\Memory16Bits1|DFF5|q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder5|OutC~1_combout\);

-- Location: MLABCELL_X84_Y12_N0
\Adder8Bits1|FullAdder5|OutC~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder5|OutC~2_combout\ = ( !\Adder8Bits1|FullAdder5|OutC~1_combout\ & ( \Memory16Bits1|DFF4|q~q\ & ( ((!\Memory16Bits1|DFF3|q~q\ & (\Adder8Bits1|FullAdder2|OutC~0_combout\ & \Memory16Bits1|DFF11|q~q\)) # (\Memory16Bits1|DFF3|q~q\ & 
-- ((\Memory16Bits1|DFF11|q~q\) # (\Adder8Bits1|FullAdder2|OutC~0_combout\)))) # (\Memory16Bits1|DFF12|q~q\) ) ) ) # ( !\Adder8Bits1|FullAdder5|OutC~1_combout\ & ( !\Memory16Bits1|DFF4|q~q\ & ( (\Memory16Bits1|DFF12|q~q\ & ((!\Memory16Bits1|DFF3|q~q\ & 
-- (\Adder8Bits1|FullAdder2|OutC~0_combout\ & \Memory16Bits1|DFF11|q~q\)) # (\Memory16Bits1|DFF3|q~q\ & ((\Memory16Bits1|DFF11|q~q\) # (\Adder8Bits1|FullAdder2|OutC~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000000000000000011111011111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	datab => \Adder8Bits1|FullAdder2|ALT_INV_OutC~0_combout\,
	datac => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	datae => \Adder8Bits1|FullAdder5|ALT_INV_OutC~1_combout\,
	dataf => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder5|OutC~2_combout\);

-- Location: MLABCELL_X84_Y12_N30
\Adder8Bits1|FullAdder5|OutC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder5|OutC~0_combout\ = (\Memory16Bits1|DFF5|q~q\ & \Memory16Bits1|DFF13|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder5|OutC~0_combout\);

-- Location: MLABCELL_X84_Y12_N51
\Adder8Bits1|FullAdder7|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder7|R~0_combout\ = ( \Adder8Bits1|FullAdder5|OutC~2_combout\ & ( \Adder8Bits1|FullAdder5|OutC~0_combout\ & ( !\Memory16Bits1|DFF15|q~q\ $ (!\Memory16Bits1|DFF7|q~q\ $ (((\Memory16Bits1|DFF14|q~q\) # (\Memory16Bits1|DFF6|q~q\)))) ) ) ) 
-- # ( !\Adder8Bits1|FullAdder5|OutC~2_combout\ & ( \Adder8Bits1|FullAdder5|OutC~0_combout\ & ( !\Memory16Bits1|DFF15|q~q\ $ (!\Memory16Bits1|DFF7|q~q\ $ (((\Memory16Bits1|DFF14|q~q\) # (\Memory16Bits1|DFF6|q~q\)))) ) ) ) # ( 
-- \Adder8Bits1|FullAdder5|OutC~2_combout\ & ( !\Adder8Bits1|FullAdder5|OutC~0_combout\ & ( !\Memory16Bits1|DFF15|q~q\ $ (!\Memory16Bits1|DFF7|q~q\ $ (((\Memory16Bits1|DFF14|q~q\) # (\Memory16Bits1|DFF6|q~q\)))) ) ) ) # ( 
-- !\Adder8Bits1|FullAdder5|OutC~2_combout\ & ( !\Adder8Bits1|FullAdder5|OutC~0_combout\ & ( !\Memory16Bits1|DFF15|q~q\ $ (!\Memory16Bits1|DFF7|q~q\ $ (((\Memory16Bits1|DFF6|q~q\ & \Memory16Bits1|DFF14|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001011110001000011101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	datae => \Adder8Bits1|FullAdder5|ALT_INV_OutC~2_combout\,
	dataf => \Adder8Bits1|FullAdder5|ALT_INV_OutC~0_combout\,
	combout => \Adder8Bits1|FullAdder7|R~0_combout\);

-- Location: MLABCELL_X84_Y12_N18
\Adder8Bits1|FullAdder4|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder4|R~0_combout\ = ( \Memory16Bits1|DFF4|q~q\ & ( !\Memory16Bits1|DFF12|q~q\ $ (((!\Memory16Bits1|DFF3|q~q\ & (\Adder8Bits1|FullAdder2|OutC~0_combout\ & \Memory16Bits1|DFF11|q~q\)) # (\Memory16Bits1|DFF3|q~q\ & 
-- ((\Memory16Bits1|DFF11|q~q\) # (\Adder8Bits1|FullAdder2|OutC~0_combout\))))) ) ) # ( !\Memory16Bits1|DFF4|q~q\ & ( !\Memory16Bits1|DFF12|q~q\ $ (((!\Memory16Bits1|DFF3|q~q\ & ((!\Adder8Bits1|FullAdder2|OutC~0_combout\) # (!\Memory16Bits1|DFF11|q~q\))) # 
-- (\Memory16Bits1|DFF3|q~q\ & (!\Adder8Bits1|FullAdder2|OutC~0_combout\ & !\Memory16Bits1|DFF11|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011111101000000101111110100011101000000101111110100000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	datab => \Adder8Bits1|FullAdder2|ALT_INV_OutC~0_combout\,
	datac => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder4|R~0_combout\);

-- Location: MLABCELL_X84_Y12_N54
\Adder8Bits1|FullAdder3|OutC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder3|OutC~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( (\Adder8Bits1|FullAdder2|OutC~0_combout\) # (\Memory16Bits1|DFF11|q~q\) ) ) # ( !\Memory16Bits1|DFF3|q~q\ & ( (\Memory16Bits1|DFF11|q~q\ & \Adder8Bits1|FullAdder2|OutC~0_combout\) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000101110111011101110111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	datab => \Adder8Bits1|FullAdder2|ALT_INV_OutC~0_combout\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder3|OutC~0_combout\);

-- Location: MLABCELL_X84_Y12_N33
\Adder8Bits1|FullAdder5|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder5|R~0_combout\ = ( \Memory16Bits1|DFF4|q~q\ & ( !\Memory16Bits1|DFF5|q~q\ $ (!\Memory16Bits1|DFF13|q~q\ $ (((\Memory16Bits1|DFF12|q~q\) # (\Adder8Bits1|FullAdder3|OutC~0_combout\)))) ) ) # ( !\Memory16Bits1|DFF4|q~q\ & ( 
-- !\Memory16Bits1|DFF5|q~q\ $ (!\Memory16Bits1|DFF13|q~q\ $ (((\Adder8Bits1|FullAdder3|OutC~0_combout\ & \Memory16Bits1|DFF12|q~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001101001010110100110100101101001101001010110100110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF5|ALT_INV_q~q\,
	datab => \Adder8Bits1|FullAdder3|ALT_INV_OutC~0_combout\,
	datac => \Memory16Bits1|DFF13|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF12|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF4|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder5|R~0_combout\);

-- Location: MLABCELL_X84_Y12_N9
\Adder8Bits1|FullAdder6|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder6|R~0_combout\ = ( \Adder8Bits1|FullAdder5|OutC~0_combout\ & ( !\Memory16Bits1|DFF6|q~q\ $ (\Memory16Bits1|DFF14|q~q\) ) ) # ( !\Adder8Bits1|FullAdder5|OutC~0_combout\ & ( !\Adder8Bits1|FullAdder5|OutC~2_combout\ $ 
-- (!\Memory16Bits1|DFF6|q~q\ $ (\Memory16Bits1|DFF14|q~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010111110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder5|ALT_INV_OutC~2_combout\,
	datac => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	dataf => \Adder8Bits1|FullAdder5|ALT_INV_OutC~0_combout\,
	combout => \Adder8Bits1|FullAdder6|R~0_combout\);

-- Location: LABCELL_X85_Y12_N9
\SevenSegmentsSumL|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumL|Mux6~0_combout\ = ( \Adder8Bits1|FullAdder6|R~0_combout\ & ( (!\Adder8Bits1|FullAdder5|R~0_combout\ & (!\Adder8Bits1|FullAdder7|R~0_combout\ $ (\Adder8Bits1|FullAdder4|R~0_combout\))) ) ) # ( !\Adder8Bits1|FullAdder6|R~0_combout\ & ( 
-- (\Adder8Bits1|FullAdder4|R~0_combout\ & (!\Adder8Bits1|FullAdder7|R~0_combout\ $ (\Adder8Bits1|FullAdder5|R~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\,
	datad => \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumL|Mux6~0_combout\);

-- Location: LABCELL_X85_Y12_N42
\SevenSegmentsSumL|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumL|Mux5~0_combout\ = ( \Adder8Bits1|FullAdder6|R~0_combout\ & ( (!\Adder8Bits1|FullAdder7|R~0_combout\ & (!\Adder8Bits1|FullAdder4|R~0_combout\ $ (!\Adder8Bits1|FullAdder5|R~0_combout\))) # (\Adder8Bits1|FullAdder7|R~0_combout\ & 
-- ((!\Adder8Bits1|FullAdder4|R~0_combout\) # (\Adder8Bits1|FullAdder5|R~0_combout\))) ) ) # ( !\Adder8Bits1|FullAdder6|R~0_combout\ & ( (\Adder8Bits1|FullAdder7|R~0_combout\ & (\Adder8Bits1|FullAdder4|R~0_combout\ & \Adder8Bits1|FullAdder5|R~0_combout\)) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110110111010110011011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\,
	datab => \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\,
	datad => \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumL|Mux5~0_combout\);

-- Location: LABCELL_X85_Y12_N18
\SevenSegmentsSumL|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumL|Mux4~0_combout\ = ( \Adder8Bits1|FullAdder6|R~0_combout\ & ( (\Adder8Bits1|FullAdder7|R~0_combout\ & ((!\Adder8Bits1|FullAdder4|R~0_combout\) # (\Adder8Bits1|FullAdder5|R~0_combout\))) ) ) # ( !\Adder8Bits1|FullAdder6|R~0_combout\ & ( 
-- (!\Adder8Bits1|FullAdder7|R~0_combout\ & (!\Adder8Bits1|FullAdder4|R~0_combout\ & \Adder8Bits1|FullAdder5|R~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100001000100010101010100010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\,
	datab => \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\,
	datad => \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumL|Mux4~0_combout\);

-- Location: LABCELL_X85_Y12_N21
\SevenSegmentsSumL|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumL|Mux3~0_combout\ = ( \Adder8Bits1|FullAdder6|R~0_combout\ & ( (!\Adder8Bits1|FullAdder4|R~0_combout\ & (!\Adder8Bits1|FullAdder7|R~0_combout\ & !\Adder8Bits1|FullAdder5|R~0_combout\)) # (\Adder8Bits1|FullAdder4|R~0_combout\ & 
-- ((\Adder8Bits1|FullAdder5|R~0_combout\))) ) ) # ( !\Adder8Bits1|FullAdder6|R~0_combout\ & ( (!\Adder8Bits1|FullAdder4|R~0_combout\ & (\Adder8Bits1|FullAdder7|R~0_combout\ & \Adder8Bits1|FullAdder5|R~0_combout\)) # (\Adder8Bits1|FullAdder4|R~0_combout\ & 
-- ((!\Adder8Bits1|FullAdder5|R~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010000000011110101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\,
	datad => \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumL|Mux3~0_combout\);

-- Location: LABCELL_X85_Y12_N24
\SevenSegmentsSumL|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumL|Mux2~0_combout\ = ( \Adder8Bits1|FullAdder6|R~0_combout\ & ( (!\Adder8Bits1|FullAdder7|R~0_combout\ & ((!\Adder8Bits1|FullAdder5|R~0_combout\) # (\Adder8Bits1|FullAdder4|R~0_combout\))) ) ) # ( !\Adder8Bits1|FullAdder6|R~0_combout\ & ( 
-- (\Adder8Bits1|FullAdder4|R~0_combout\ & ((!\Adder8Bits1|FullAdder7|R~0_combout\) # (!\Adder8Bits1|FullAdder5|R~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010101010001000101010101000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\,
	datab => \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\,
	datad => \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumL|Mux2~0_combout\);

-- Location: LABCELL_X85_Y12_N27
\SevenSegmentsSumL|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumL|Mux1~0_combout\ = ( \Adder8Bits1|FullAdder6|R~0_combout\ & ( (\Adder8Bits1|FullAdder4|R~0_combout\ & (!\Adder8Bits1|FullAdder7|R~0_combout\ $ (!\Adder8Bits1|FullAdder5|R~0_combout\))) ) ) # ( !\Adder8Bits1|FullAdder6|R~0_combout\ & ( 
-- (!\Adder8Bits1|FullAdder7|R~0_combout\ & ((\Adder8Bits1|FullAdder5|R~0_combout\) # (\Adder8Bits1|FullAdder4|R~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101000101010001010100010101000010010000100100001001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\,
	datab => \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumL|Mux1~0_combout\);

-- Location: LABCELL_X85_Y12_N45
\SevenSegmentsSumL|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumL|Mux0~0_combout\ = ( \Adder8Bits1|FullAdder6|R~0_combout\ & ( (!\Adder8Bits1|FullAdder7|R~0_combout\ & ((!\Adder8Bits1|FullAdder4|R~0_combout\) # (!\Adder8Bits1|FullAdder5|R~0_combout\))) # (\Adder8Bits1|FullAdder7|R~0_combout\ & 
-- ((\Adder8Bits1|FullAdder5|R~0_combout\) # (\Adder8Bits1|FullAdder4|R~0_combout\))) ) ) # ( !\Adder8Bits1|FullAdder6|R~0_combout\ & ( (\Adder8Bits1|FullAdder5|R~0_combout\) # (\Adder8Bits1|FullAdder7|R~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111111111010101011111111110101111111101011010111111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder7|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder4|ALT_INV_R~0_combout\,
	datad => \Adder8Bits1|FullAdder5|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder6|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumL|Mux0~0_combout\);

-- Location: LABCELL_X83_Y12_N27
\Adder8Bits1|FullAdder1|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder1|R~0_combout\ = !\Memory16Bits1|DFF9|q~q\ $ (!\Memory16Bits1|DFF1|q~q\ $ (((\Memory16Bits1|DFF8|q~q\ & \Memory16Bits1|DFF0|q~q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011011001001001101101100100100110110110010010011011011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder1|R~0_combout\);

-- Location: LABCELL_X83_Y12_N18
\Adder8Bits1|FullAdder2|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder2|R~0_combout\ = ( \Memory16Bits1|DFF2|q~q\ & ( \Memory16Bits1|DFF1|q~q\ & ( !\Memory16Bits1|DFF10|q~q\ $ ((((\Memory16Bits1|DFF8|q~q\ & \Memory16Bits1|DFF0|q~q\)) # (\Memory16Bits1|DFF9|q~q\))) ) ) ) # ( !\Memory16Bits1|DFF2|q~q\ & 
-- ( \Memory16Bits1|DFF1|q~q\ & ( !\Memory16Bits1|DFF10|q~q\ $ (((!\Memory16Bits1|DFF9|q~q\ & ((!\Memory16Bits1|DFF8|q~q\) # (!\Memory16Bits1|DFF0|q~q\))))) ) ) ) # ( \Memory16Bits1|DFF2|q~q\ & ( !\Memory16Bits1|DFF1|q~q\ & ( !\Memory16Bits1|DFF10|q~q\ $ 
-- (((\Memory16Bits1|DFF8|q~q\ & (\Memory16Bits1|DFF9|q~q\ & \Memory16Bits1|DFF0|q~q\)))) ) ) ) # ( !\Memory16Bits1|DFF2|q~q\ & ( !\Memory16Bits1|DFF1|q~q\ & ( !\Memory16Bits1|DFF10|q~q\ $ (((!\Memory16Bits1|DFF8|q~q\) # ((!\Memory16Bits1|DFF9|q~q\) # 
-- (!\Memory16Bits1|DFF0|q~q\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100011110111100001110000100111100011110001100001110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	datab => \Memory16Bits1|DFF9|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF10|ALT_INV_q~q\,
	datad => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	datae => \Memory16Bits1|DFF2|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF1|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder2|R~0_combout\);

-- Location: LABCELL_X83_Y12_N36
\Adder8Bits1|HalfAdder0|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|HalfAdder0|R~0_combout\ = !\Memory16Bits1|DFF8|q~q\ $ (!\Memory16Bits1|DFF0|q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF8|ALT_INV_q~q\,
	datac => \Memory16Bits1|DFF0|ALT_INV_q~q\,
	combout => \Adder8Bits1|HalfAdder0|R~0_combout\);

-- Location: MLABCELL_X84_Y12_N57
\Adder8Bits1|FullAdder3|R~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder3|R~0_combout\ = ( \Memory16Bits1|DFF3|q~q\ & ( !\Memory16Bits1|DFF11|q~q\ $ (\Adder8Bits1|FullAdder2|OutC~0_combout\) ) ) # ( !\Memory16Bits1|DFF3|q~q\ & ( !\Memory16Bits1|DFF11|q~q\ $ (!\Adder8Bits1|FullAdder2|OutC~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Memory16Bits1|DFF11|ALT_INV_q~q\,
	datab => \Adder8Bits1|FullAdder2|ALT_INV_OutC~0_combout\,
	dataf => \Memory16Bits1|DFF3|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder3|R~0_combout\);

-- Location: LABCELL_X88_Y12_N0
\SevenSegmentsSumR|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumR|Mux6~0_combout\ = ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( !\Adder8Bits1|FullAdder1|R~0_combout\ $ (!\Adder8Bits1|FullAdder2|R~0_combout\) ) ) ) # ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( 
-- !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder1|R~0_combout\ & !\Adder8Bits1|FullAdder2|R~0_combout\) ) ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder1|R~0_combout\ 
-- & \Adder8Bits1|FullAdder2|R~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100110000001100000000000000000000000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\,
	datae => \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumR|Mux6~0_combout\);

-- Location: LABCELL_X88_Y12_N39
\SevenSegmentsSumR|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumR|Mux5~0_combout\ = ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( \Adder8Bits1|FullAdder1|R~0_combout\ ) ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( 
-- \Adder8Bits1|FullAdder2|R~0_combout\ ) ) ) # ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (\Adder8Bits1|FullAdder2|R~0_combout\ & !\Adder8Bits1|FullAdder1|R~0_combout\) ) ) ) # ( 
-- !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (\Adder8Bits1|FullAdder2|R~0_combout\ & \Adder8Bits1|FullAdder1|R~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101010100000101000001010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\,
	datae => \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumR|Mux5~0_combout\);

-- Location: LABCELL_X88_Y12_N42
\SevenSegmentsSumR|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumR|Mux4~0_combout\ = ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( (\Adder8Bits1|FullAdder1|R~0_combout\ & \Adder8Bits1|FullAdder2|R~0_combout\) ) ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( 
-- \Adder8Bits1|FullAdder3|R~0_combout\ & ( \Adder8Bits1|FullAdder2|R~0_combout\ ) ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (\Adder8Bits1|FullAdder1|R~0_combout\ & !\Adder8Bits1|FullAdder2|R~0_combout\) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000000000000000000000001111000011110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\,
	datae => \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumR|Mux4~0_combout\);

-- Location: LABCELL_X88_Y12_N51
\SevenSegmentsSumR|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumR|Mux3~0_combout\ = ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( !\Adder8Bits1|FullAdder2|R~0_combout\ $ (\Adder8Bits1|FullAdder1|R~0_combout\) ) ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( 
-- \Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder2|R~0_combout\ & \Adder8Bits1|FullAdder1|R~0_combout\) ) ) ) # ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( !\Adder8Bits1|FullAdder2|R~0_combout\ $ 
-- (\Adder8Bits1|FullAdder1|R~0_combout\) ) ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (\Adder8Bits1|FullAdder2|R~0_combout\ & !\Adder8Bits1|FullAdder1|R~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000101001011010010100001010000010101010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\,
	datae => \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumR|Mux3~0_combout\);

-- Location: LABCELL_X88_Y12_N54
\SevenSegmentsSumR|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumR|Mux2~0_combout\ = ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder1|R~0_combout\ & !\Adder8Bits1|FullAdder2|R~0_combout\) ) ) ) # ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( 
-- !\Adder8Bits1|FullAdder3|R~0_combout\ ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder1|R~0_combout\ & \Adder8Bits1|FullAdder2|R~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111111111111111100000000000000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\,
	datae => \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumR|Mux2~0_combout\);

-- Location: LABCELL_X88_Y12_N33
\SevenSegmentsSumR|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumR|Mux1~0_combout\ = ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( (\Adder8Bits1|FullAdder2|R~0_combout\ & !\Adder8Bits1|FullAdder1|R~0_combout\) ) ) ) # ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( 
-- !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder2|R~0_combout\) # (\Adder8Bits1|FullAdder1|R~0_combout\) ) ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder2|R~0_combout\ 
-- & \Adder8Bits1|FullAdder1|R~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111100000000000000000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\,
	datae => \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumR|Mux1~0_combout\);

-- Location: LABCELL_X88_Y12_N6
\SevenSegmentsSumR|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SevenSegmentsSumR|Mux0~0_combout\ = ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ ) ) # ( !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( \Adder8Bits1|FullAdder3|R~0_combout\ & ( (!\Adder8Bits1|FullAdder2|R~0_combout\) # 
-- (\Adder8Bits1|FullAdder1|R~0_combout\) ) ) ) # ( \Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( !\Adder8Bits1|FullAdder1|R~0_combout\ $ (!\Adder8Bits1|FullAdder2|R~0_combout\) ) ) ) # ( 
-- !\Adder8Bits1|HalfAdder0|R~0_combout\ & ( !\Adder8Bits1|FullAdder3|R~0_combout\ & ( (\Adder8Bits1|FullAdder2|R~0_combout\) # (\Adder8Bits1|FullAdder1|R~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111000011110011110011111100111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Adder8Bits1|FullAdder1|ALT_INV_R~0_combout\,
	datac => \Adder8Bits1|FullAdder2|ALT_INV_R~0_combout\,
	datae => \Adder8Bits1|HalfAdder0|ALT_INV_R~0_combout\,
	dataf => \Adder8Bits1|FullAdder3|ALT_INV_R~0_combout\,
	combout => \SevenSegmentsSumR|Mux0~0_combout\);

-- Location: MLABCELL_X84_Y12_N24
\Adder8Bits1|FullAdder7|OutC~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Adder8Bits1|FullAdder7|OutC~0_combout\ = ( \Memory16Bits1|DFF7|q~q\ & ( \Memory16Bits1|DFF6|q~q\ & ( (((\Memory16Bits1|DFF14|q~q\) # (\Adder8Bits1|FullAdder5|OutC~0_combout\)) # (\Memory16Bits1|DFF15|q~q\)) # (\Adder8Bits1|FullAdder5|OutC~2_combout\) ) ) 
-- ) # ( !\Memory16Bits1|DFF7|q~q\ & ( \Memory16Bits1|DFF6|q~q\ & ( (\Memory16Bits1|DFF15|q~q\ & (((\Memory16Bits1|DFF14|q~q\) # (\Adder8Bits1|FullAdder5|OutC~0_combout\)) # (\Adder8Bits1|FullAdder5|OutC~2_combout\))) ) ) ) # ( \Memory16Bits1|DFF7|q~q\ & ( 
-- !\Memory16Bits1|DFF6|q~q\ & ( ((\Memory16Bits1|DFF14|q~q\ & ((\Adder8Bits1|FullAdder5|OutC~0_combout\) # (\Adder8Bits1|FullAdder5|OutC~2_combout\)))) # (\Memory16Bits1|DFF15|q~q\) ) ) ) # ( !\Memory16Bits1|DFF7|q~q\ & ( !\Memory16Bits1|DFF6|q~q\ & ( 
-- (\Memory16Bits1|DFF15|q~q\ & (\Memory16Bits1|DFF14|q~q\ & ((\Adder8Bits1|FullAdder5|OutC~0_combout\) # (\Adder8Bits1|FullAdder5|OutC~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011001100110111111100010011001100110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Adder8Bits1|FullAdder5|ALT_INV_OutC~2_combout\,
	datab => \Memory16Bits1|DFF15|ALT_INV_q~q\,
	datac => \Adder8Bits1|FullAdder5|ALT_INV_OutC~0_combout\,
	datad => \Memory16Bits1|DFF14|ALT_INV_q~q\,
	datae => \Memory16Bits1|DFF7|ALT_INV_q~q\,
	dataf => \Memory16Bits1|DFF6|ALT_INV_q~q\,
	combout => \Adder8Bits1|FullAdder7|OutC~0_combout\);

-- Location: LABCELL_X11_Y31_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


