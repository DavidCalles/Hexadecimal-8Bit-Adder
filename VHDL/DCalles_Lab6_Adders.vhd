-- Dcalles_Lab6_Adders.vhd

--***********************************************************************
--	Description: Sum of 2 8-bit numbers. WIth single 8-bit input and 
--					 memory slots for each input. 
--					 Input numbers and output shown in 7 segments in
--					 hexadecimal.
--	
--	Inputs: 		clk; clock signal
--					reset;	reset memory space to 0.
--					selector; select in which memory slot to save input
--					activate; save input in selected slot
--					input8 [7:0]; 8 bit data input
--					
--	Outputs: 		segmentL1 [6:0]; Left segment of first number
--					segmentL2 [6:0]; Right segment of first number
--					
--					segmentR1 [6:0]; Left segment of second number
--					segmentR2 [6:0]; Right segment of second number
--					
--					segmentSumL [6:0];	Left segment of result of sum
--					segmentSumR [6:0];	Right segment of result of sum
--					carryOut;				9nth bit of 8-bit sum.
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_arith.ALL;

-- Entity declaration

ENTITY Dcalles_Lab6_Adders IS

	PORT (
		clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		selector : IN STD_LOGIC;
		activate : IN STD_LOGIC;
		input8 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

		segmentL1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		segmentL2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);

		segmentR1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		segmentR2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);

		segmentSumL : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		segmentSumR : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		carryOut : OUT STD_LOGIC
	);

END Dcalles_Lab6_Adders;

-- Architecture definition

ARCHITECTURE Behavioral OF Dcalles_Lab6_Adders IS

	--------------------------------------------------------------------------
	---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
	--------------------------------------------------------------------------

	-- Integer to 7segment decoder
	COMPONENT SevenSegments
		PORT (
			binNumber : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			segmentLed : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
	END COMPONENT;

	-- 8 Bits adder
	COMPONENT Adder8Bits
		PORT (
			InA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			InB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			R : OUT STD_LOGIC_VECTOR(8 DOWNTO 0));
	END COMPONENT;

	-- Memory block
	COMPONENT Memory16Bits
		PORT (
			clock : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			numIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			selector : IN STD_LOGIC;
			activate : IN STD_LOGIC;
			storedVals : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;
	--------------------------------------------------------------------------
	------------------------- INTERMEDIATE SIGNALS ---------------------------
	--------------------------------------------------------------------------

	SIGNAL segmentL1Signal : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL segmentL2Signal : STD_LOGIC_VECTOR(6 DOWNTO 0);

	SIGNAL segmentR1Signal : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL segmentR2Signal : STD_LOGIC_VECTOR(6 DOWNTO 0);

	SIGNAL segmentSumLSignal : STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL segmentSumRSignal : STD_LOGIC_VECTOR(6 DOWNTO 0);

	SIGNAL memorySignal : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL resultSignal : STD_LOGIC_VECTOR(8 DOWNTO 0);
BEGIN

	--------------------------------------------------------------------------
	-------------------------- COMPONENTS MAPPING ----------------------------
	--------------------------------------------------------------------------	

	-- 7 segmentL1
	SevenSegmentsL1 : SevenSegments
	PORT MAP(memorySignal(15 DOWNTO 12), segmentL1Signal);

	-- 7 segmentL2
	SevenSegmentsL2 : SevenSegments
	PORT MAP(memorySignal(11 DOWNTO 8), segmentL2Signal);

	-- 7 segmentR1
	SevenSegmentsR1 : SevenSegments
	PORT MAP(memorySignal(7 DOWNTO 4), segmentR1Signal);

	-- 7 segmentR1
	SevenSegmentsR2 : SevenSegments
	PORT MAP(memorySignal(3 DOWNTO 0), segmentR2Signal);

	-- 7 segmentSumL 
	SevenSegmentsSumL : SevenSegments
	PORT MAP(resultSignal(7 DOWNTO 4), segmentSumLSignal);

	-- 7 segmentSumR 
	SevenSegmentsSumR : SevenSegments
	PORT MAP(resultSignal(3 DOWNTO 0), segmentSumRSignal);

	-- Memory to store both sum inputs
	Memory16Bits1 : Memory16Bits
	PORT MAP(clk, reset, input8, selector, activate, memorySignal);

	-- 8-bit adder made of 1 half adder and 7 full adders
	Adder8Bits1 : Adder8Bits
	PORT MAP(memorySignal(15 DOWNTO 8), memorySignal(7 DOWNTO 0), resultSignal);

	-- outputs
	segmentL1 <= segmentL1Signal;
	segmentL2 <= segmentL2Signal;
	segmentR1 <= segmentR1Signal;
	segmentR2 <= segmentR2Signal;

	segmentSumR <= segmentSumRSignal;
	segmentSumL <= segmentSumLSignal;

	carryOut <= resultSignal(8);

END;