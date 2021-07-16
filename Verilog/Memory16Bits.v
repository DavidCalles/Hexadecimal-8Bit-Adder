// Memory16bit.vhd

/************************************************************************
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
--**********************************************************************/


/*------------------------------------------------------------------------
------------------------ Module Declaration ------------------------------
------------------------------------------------------------------------*/

module Memory16Bits(
							input clock,
							input reset,
							input selector,
							input activate,
							input [7:0] numIn,
							output [15:0] storedVals);
			
/*------------------------------------------------------------------------
------------------------- INTERMEDIATE SIGNALS ---------------------------
------------------------------------------------------------------------*/

	// Flip flop signals
	wire enable1;
	wire enable2;
	
	wire resetSignal; 
	wire preset = 1'b0;
	
	wire [15:0] dSign;
	wire [15:0] qSign;

/*------------------------------------------------------------------------
-------------------------- ARCHITECTURE LOGIC ----------------------------
------------------------------------------------------------------------*/

	assign resetSignal = ~reset;
		
		// Different enables for different slots
	assign enable1 = (~ activate) & selector;
	assign enable2 = (~ activate) & (~ selector);
	assign dSign[15:8] = numIn;	//First Number
	assign dSign[7:0]  = numIn;	//Second number
	
	//assign resetSignal = (~ reset); 
	
/*------------------------------------------------------------------------
-------------------------- COMPONENTS MAPPING ----------------------------
------------------------------------------------------------------------*/
	// Connections mapping for d flip flops
	// Second Input
	DFF_David DFF0 (clock, resetSignal, preset, enable1, dSign[0], qSign[0]);
	DFF_David DFF1 (clock, resetSignal, preset, enable1, dSign[1], qSign[1]);
	DFF_David DFF2 (clock, resetSignal, preset, enable1, dSign[2], qSign[2]);
	DFF_David DFF3 (clock, resetSignal, preset, enable1, dSign[3], qSign[3]);
	DFF_David DFF4 (clock, resetSignal, preset, enable1, dSign[4], qSign[4]);
	DFF_David DFF5 (clock, resetSignal, preset, enable1, dSign[5], qSign[5]);
	DFF_David DFF6 (clock, resetSignal, preset, enable1, dSign[6], qSign[6]);
	DFF_David DFF7 (clock, resetSignal, preset, enable1, dSign[7], qSign[7]);
	
	// First Input
	DFF_David DFF8 (clock, resetSignal, preset, enable2, dSign[8], qSign[8]);
	DFF_David DFF9 (clock, resetSignal, preset, enable2, dSign[9], qSign[9]);
	DFF_David DFF10 (clock, resetSignal, preset, enable2, dSign[10], qSign[10]);
	DFF_David DFF11 (clock, resetSignal, preset, enable2, dSign[11], qSign[11]);
	DFF_David DFF12 (clock, resetSignal, preset, enable2, dSign[12], qSign[12]);
	DFF_David DFF13 (clock, resetSignal, preset, enable2, dSign[13], qSign[13]);
	DFF_David DFF14 (clock, resetSignal, preset, enable2, dSign[14], qSign[14]);
	DFF_David DFF15 (clock, resetSignal, preset, enable2, dSign[15], qSign[15]);


	// Output of memory
	assign storedVals = qSign;

endmodule