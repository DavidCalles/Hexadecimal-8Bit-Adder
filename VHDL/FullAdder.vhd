-- FullAdder.vhd

--***********************************************************************
--	Description: Combinatory definition of a full adder
--
--	Inputs: 	In1; 1 bit first input.   
--				In2; 1 bit second input.
--				InC; 1 bit third input (from carry).

--	
--	Outputs: R;	1 bit result from sum.
--				OutC; 1 bit carry from sum.
--***********************************************************************

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;
USE IEEE.std_logic_arith.ALL;

-- Entity declaration

entity FullAdder is

    port(In1	: in std_logic;    
         In2	: in std_logic;
			InC	: in std_logic;    
         R		: out std_logic;
			OutC	: out std_logic);
			

end FullAdder;

-- Architecture definition

architecture RTL of FullAdder is

begin
	
--------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
--------------------------------------------------------------------------

R <= (In1 and In2 and InC) or (In1 and (not In2) and (not InC)) or 
		(In2 and (not In1) and (not InC)) or (InC and (not In1) and (not In2));

OutC <= (In1 and In2) or (In2 and InC) or (InC and In1);


end;