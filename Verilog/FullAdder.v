// FullAdder.vhd

/************************************************************************
--	Description: Combinatory definition of a full adder
--
--	Inputs: 	In1; 1 bit first input.   
--				In2; 1 bit second input.
--				InC; 1 bit third input (from carry).

--	
--	Outputs: R;	1 bit result from sum.
--				OutC; 1 bit carry from sum.
--**********************************************************************/

// Module declaration

module FullAdder(
						input In1,    
						input In2,
						input InC,    
						output R,
						output OutC);
	
/*------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
------------------------------------------------------------------------*/

assign R = (In1 & In2 & InC) | (In1 & (~ In2) & (~ InC)) | 
		(In2 & (~ In1) & (~ InC)) | (InC & (~ In1) & (~ In2));

assign OutC = (In1 & In2) | (In2 & InC) | (InC & In1);


endmodule