`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/30 17:28:16
// Design Name: 
// Module Name: Segment7DisplayUnit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Segment7DisplayUnit#(DIGIT = 32, DEBUGSIZE = 8)(CLK100MHZ, reset, Data, AN, seg);
	input CLK100MHZ, reset;
	input [DIGIT - 1 : 0] Data;
	
	output [7 : 0] AN;
	output [6 : 0] seg;


	wire         [2 : 0] pulse;
	reg          [3 : 0] SegmentData;

	initial
	begin
		SegmentData  = 'b0;
	end

	DisplayPulse       SegmentChoose (CLK100MHZ, 'b0, pulse); 
	Hex7SegmentDisplay SegmentDecode (SegmentData, seg);
	
	always @(*)
	begin
		case (pulse)
			'd0: SegmentData <= Data[ 3 :  0];
			'd1: SegmentData <= Data[ 7 :  4];
			'd2: SegmentData <= Data[11 :  8];
			'd3: SegmentData <= Data[15 : 12];
			'd4: SegmentData <= Data[19 : 16];
			'd5: SegmentData <= Data[23 : 20];
			'd6: SegmentData <= Data[27 : 24];
			'd7: SegmentData <= Data[31 : 28];
		endcase 
	end

	genvar i;
	generate
		for (i = 0; i < 8; i = i + 1) 
		begin: SegmentDisplaySignal
			assign AN[i] = (pulse == i) ? 0 : 1;
		end
	endgenerate

	
endmodule
