// HalfAdder.vhd

/************************************************************************
--	Description: Combinatory definition of a half adder
--
--	Inputs: 	In1; 1 bit first input.   
--				In2; 1 bit second input.

--	
--	Outputs: R;	1 bit result from sum.
--				OutC; 1 bit carry from sum.
--**********************************************************************/

// Entity declaration

module HalfAdder(
						input In1,    
						input In2,   
						output R,
						output OutC);
			
/*------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
------------------------------------------------------------------------*/

assign R = (In1 & (~ In2)) | (In2 & (~ In1));

assign OutC = (In1 & In2);


endmodule