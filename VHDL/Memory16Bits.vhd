-- Memory16bit.vhd

--***********************************************************************
--	Description: 2 block 8-bit memory. A single signal of 8 bits
--					is stored in the first or second part of memory.
--					The slot is selected with the "selector" signal, and 
--					saved when "activate" is ON. The DFF can be turned to 0
--					with a reset signal.
--
--	Inputs: 		clock	; clock signal.
--					reset	; Reset all memory to 0 when ON (Low).
--					numIn [7:0]; 8bit data input.
--					selector ; choose between 2 slots of memory.	
--					activate	; Save input in chosen slot.     		
--	
--	Outputs: 	storedVals [15:0] ; Memory output.
--***********************************************************************

--------------------------------------------------------------------------
---------------------------- LIBRARIES -----------------------------------
--------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;

--------------------------------------------------------------------------
------------------------ Entity Declaration ------------------------------
--------------------------------------------------------------------------

entity Memory16Bits is

    port(clock			: in std_logic;
			reset			: in std_logic;
			numIn 		: in std_logic_vector(7 downto 0);
			selector		: in std_logic;
			activate		: in std_logic;
        	storedVals 	: out std_logic_vector(15 downto 0)
			);
			

end Memory16Bits;

-- Architecture definition

architecture Behavioural of Memory16Bits is


--------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
--------------------------------------------------------------------------

-- Get DATA FLIP FLOP (Behavioural)
	component DFF_David
		port( clock	: in std_logic;
				rst 	: in std_logic;
				pre 	: in std_logic;
				en  	: in std_logic;    
				d 		: in std_logic;
				q 		: out std_logic);
	end component;

--------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
--------------------------------------------------------------------------
	-- Flip flop signals
	signal enable1  : std_logic;
	signal enable2  : std_logic;
	signal resetSignal	: std_logic := '0';
	signal preset	: std_logic := '0';
	
	signal dSign 	: std_logic_vector(15 downto 0);
	signal qSign	: std_logic_vector(15 downto 0);

--------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
--------------------------------------------------------------------------
	
begin
	resetSignal <= (not reset); 
	
	dSign(15 downto 8) <= numIn;	--First Number
	dSign(7 downto 0)  <= numIn;	--Second number
	
	-- Different enables for different slots
	enable1 <= (not activate) and selector;
	enable2 <= (not activate) and (not selector);
	
	-- Connections mapping for d flip flops
	-- Second Input
	DFF0: DFF_David port map (clock, resetSignal, preset, enable1, dSign(0), qSign(0));
	DFF1: DFF_David port map (clock, resetSignal, preset, enable1, dSign(1), qSign(1));
	DFF2: DFF_David port map (clock, resetSignal, preset, enable1, dSign(2), qSign(2));
	DFF3: DFF_David port map (clock, resetSignal, preset, enable1, dSign(3), qSign(3));
	DFF4: DFF_David port map (clock, resetSignal, preset, enable1, dSign(4), qSign(4));
	DFF5: DFF_David port map (clock, resetSignal, preset, enable1, dSign(5), qSign(5));
	DFF6: DFF_David port map (clock, resetSignal, preset, enable1, dSign(6), qSign(6));
	DFF7: DFF_David port map (clock, resetSignal, preset, enable1, dSign(7), qSign(7));
	
	-- First Input
	DFF8: DFF_David port map (clock, resetSignal, preset, enable2, dSign(8), qSign(8));
	DFF9: DFF_David port map (clock, resetSignal, preset, enable2, dSign(9), qSign(9));
	DFF10: DFF_David port map (clock, resetSignal, preset, enable2, dSign(10), qSign(10));
	DFF11: DFF_David port map (clock, resetSignal, preset, enable2, dSign(11), qSign(11));
	DFF12: DFF_David port map (clock, resetSignal, preset, enable2, dSign(12), qSign(12));
	DFF13: DFF_David port map (clock, resetSignal, preset, enable2, dSign(13), qSign(13));
	DFF14: DFF_David port map (clock, resetSignal, preset, enable2, dSign(14), qSign(14));
	DFF15: DFF_David port map (clock, resetSignal, preset, enable2, dSign(15), qSign(15));


-- Output of memory
storedVals <= qSign;

end;