//-- DCalles_Lab6_Adders.v

/************************************************************************
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
--	Outputs: 	segmentL1 [6:0]; Left segment of first number
--					segmentL2 [6:0]; Right segment of first number
--					
--					segmentR1 [6:0]; Left segment of second number
--					segmentR2 [6:0]; Right segment of second number
--					
--					segmentSumL [6:0];	Left segment of result of sum
--					segmentSumR [6:0];	Right segment of result of sum
--					carryOut;				9nth bit of 8-bit sum.
--**********************************************************************/


// Top-Entity declaration

module DCalles_Lab6_Adders(
			input clk,
			input reset,
			input selector,
			input activate,
			input [7:0] input8,
			
			output [15:0]memoryOut,
			
         output [6:0] segmentL1,
			output [6:0] segmentL2,
			
			output [6:0] segmentR1,
			output [6:0] segmentR2,
			
			output [6:0] segmentSumL,
			output [6:0] segmentSumR,
			output carryOut
			); 

/*------------------------------------------------------------------------
    ------------------------- INTERMEDIATE SIGNALS ---------------------------
    ------------------------------------------------------------------------*/
	
	wire [6:0] segmentL1Signal;
	wire [6:0] segmentL2Signal;
	
	wire [6:0] segmentR1Signal;
	wire [6:0] segmentR2Signal;
	
	wire [6:0] segmentSumLSignal;
	wire [6:0] segmentSumRSignal;
	
	wire [15:0] memorySignal;
	wire [8:0] resultSignal;
	

/*------------------------------------------------------------------------
---------------- COMPONENTS DEFINED IN SEPARATE FILES --------------------
-------------------------------------------------------------------------*/	
	
	// 7 segmentL1
	SevenSegments SevenSegmentsL1(
			memorySignal[15:12], segmentL1Signal);	
	
	// 7 segmentL2
	SevenSegments SevenSegmentsL2(
			memorySignal[11:8], segmentL2Signal);
	
	// 7 segmentR1
	SevenSegments SevenSegmentsR1(
			memorySignal[7:4], segmentR1Signal);

	// 7 segmentR2
	SevenSegments SevenSegmentsR2(
			memorySignal[3:0], segmentR2Signal);
	
	// 7 segmentSumL 
	SevenSegments SevenSegmentsSumL(
			resultSignal[7:4], segmentSumLSignal);
	
	// 7 segmentSumR 
	SevenSegments SevenSegmentsSumR(
			resultSignal[3:0], segmentSumRSignal);

	// Memory to store both sum inputs
	Memory16Bits Memory16Bits1(
			clk, reset, input8, selector, activate, memorySignal);
	
	// 8-bit adder made of 1 half adder and 7 full adders
	Adder8Bits Adder8Bits1(
			memorySignal[15:8], memorySignal[7:0], resultSignal);

	// outputs
	assign segmentL1 = segmentL1Signal;
	assign segmentL2 = segmentL2Signal;
	assign segmentR1 = segmentR1Signal;
	assign segmentR2 = segmentR2Signal;
	
	assign segmentSumR = segmentSumRSignal;
	assign segmentSumL = segmentSumLSignal;
	
	assign carryOut = resultSignal[8];
	assign memoryOut = memorySignal;

endmodule