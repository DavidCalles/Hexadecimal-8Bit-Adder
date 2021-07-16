-- HalfAdder.vhd

--***********************************************************************
--	Description: Combinatory definition of a half adder
--
--	Inputs: 	In1; 1 bit first input.   
--				In2; 1 bit second input.

--	
--	Outputs: R;	1 bit result from sum.
--				OutC; 1 bit carry from sum.
--***********************************************************************

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_arith.ALL;

-- Entity declaration

ENTITY HalfAdder IS

    PORT (
        In1 : IN STD_LOGIC;
        In2 : IN STD_LOGIC;
        R : OUT STD_LOGIC;
        OutC : OUT STD_LOGIC);
END HalfAdder;

-- Architecture definition

ARCHITECTURE RTL OF HalfAdder IS

BEGIN

    --------------------------------------------------------------------------
    -------------------------- ARCHITECTURE LOGIC ----------------------------
    --------------------------------------------------------------------------

    R <= (In1 AND (NOT In2)) OR (In2 AND (NOT In1));

    OutC <= (In1 AND In2);
END;