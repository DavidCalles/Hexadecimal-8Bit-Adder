// Adder8Bits.vhd

/************************************************************************
--	Description: 8 bit adder with full adder and half adder combinatory
--					 blocks
--	
--	Inputs: 		InA [7:0]; First input   
--					InB [7:0]; Second input 
--	
--	Outputs: 	R [8:0]; 9-Bit result
--**********************************************************************/

// Module declaration

module Adder8Bits(
						input [7:0] InA,    
						input [7:0] InB,   
						output [8:0] R);
						
/*------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
------------------------------------------------------------------------*/
	wire [7:0] carrySignal;
	wire [7:0] resultSignal;
	

/*------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
------------------------------------------------------------------------*/
	// HalfAdder Bit 0 (LSB)
	HalfAdder HalfAdder0(
			InA[0], InB[0], resultSignal[0], carrySignal[0]);
	
	// FullAdder Bit 1
	FullAdder FullAdder1(
			InA[1], InB[1], carrySignal[0], resultSignal[1],
			carrySignal[1]);
	
	// FullAdder Bit 2
	FullAdder FullAdder2(
			InA[2], InB[2], carrySignal[1], resultSignal[2],
			carrySignal[2]);
				
	// FullAdder Bit 3
	FullAdder FullAdder3(
			InA[3], InB[3], carrySignal[2], resultSignal[3],
			carrySignal[3]);
	
	// FullAdder Bit 4
	FullAdder FullAdder4(
			InA[4], InB[4], carrySignal[3], resultSignal[4],
			carrySignal[4]);
	
	// FullAdder Bit 5
	FullAdder FullAdder5(
			InA[5], InB[5], carrySignal[4], resultSignal[5],
			carrySignal[5]);
	
	// FullAdder Bit 6
	FullAdder FullAdder6(
			InA[6], InB[6], carrySignal[5], resultSignal[6],
			carrySignal[6]);
	
	// FullAdder Bit 7 (MSB)
	FullAdder FullAdder7(
			InA[7], InB[7], carrySignal[6], resultSignal[7],
			carrySignal[7]);

/*------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
------------------------------------------------------------------------*/

// Output

assign R[8] = carrySignal[7];
assign R[7:0] = resultSignal;

endmodule