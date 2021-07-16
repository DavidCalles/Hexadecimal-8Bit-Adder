-- Adder8Bits.vhd

--***********************************************************************
--	Description: 8 bit adder with full adder and half adder combinatory
--					 blocks
--	
--	Inputs: 		InA [7:0]; First input   
--					InB [7:0]; Second input 
--	
--	Outputs: 	R [8:0]; 9-Bit result
--***********************************************************************

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_arith.ALL;

-- Entity declaration

entity Adder8Bits is

    port(InA	: in std_logic_vector(7 downto 0);    
         InB	: in std_logic_vector(7 downto 0);   
         R		: out std_logic_vector(8 downto 0));
			

end Adder8Bits;

-- Architecture definition

architecture RTL of Adder8Bits is

--------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
--------------------------------------------------------------------------

	-- Full Adder
	COMPONENT FullAdder
		PORT(	In1	: in std_logic;    
				In2	: in std_logic;
				InC	: in std_logic;    
				R		: out std_logic;
				OutC	: out std_logic);
	END COMPONENT;
	
	-- Half Adder
	COMPONENT HalfAdder
		PORT(	In1	: in std_logic;    
				In2	: in std_logic;
				R		: out std_logic;
				OutC	: out std_logic);
	END COMPONENT;
	


--------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
--------------------------------------------------------------------------
	SIGNAL carrySignal : std_logic_vector(7 DOWNTO 0);
	SIGNAL resultSignal: std_logic_vector(7 DOWNTO 0);
	
BEGIN
--------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
--------------------------------------------------------------------------
	-- HalfAdder Bit 0 (LSB)
	HalfAdder0 : HalfAdder
	PORT MAP(InA(0), InB(0), resultSignal(0), carrySignal(0));
	
	-- FullAdder Bit 1
	FullAdder1 : FullAdder
	PORT MAP(InA(1), InB(1), carrySignal(0), resultSignal(1),
				carrySignal(1));
	
	-- FullAdder Bit 2
	FullAdder2 : FullAdder
	PORT MAP(InA(2), InB(2), carrySignal(1), resultSignal(2),
				carrySignal(2));
				
	-- FullAdder Bit 3
	FullAdder3 : FullAdder
	PORT MAP(InA(3), InB(3), carrySignal(2), resultSignal(3),
				carrySignal(3));
	
	-- FullAdder Bit 4
	FullAdder4 : FullAdder
	PORT MAP(InA(4), InB(4), carrySignal(3), resultSignal(4),
				carrySignal(4));
	
	-- FullAdder Bit 5
	FullAdder5 : FullAdder
	PORT MAP(InA(5), InB(5), carrySignal(4), resultSignal(5),
				carrySignal(5));
	
	-- FullAdder Bit 6
	FullAdder6 : FullAdder
	PORT MAP(InA(6), InB(6), carrySignal(5), resultSignal(6),
				carrySignal(6));
	
	-- FullAdder Bit 7 (MSB)
	FullAdder7 : FullAdder
	PORT MAP(InA(7), InB(7), carrySignal(6), resultSignal(7),
				carrySignal(7));

--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------

-- Output

R(8) <= carrySignal(7);
R(7 downto 0) <= resultSignal;

end;