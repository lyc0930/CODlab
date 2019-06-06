`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 17:49:30
// Design Name: 
// Module Name: ProgramCounter
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

`define initialPC 32'h00000000

module ProgramCounter #(parameter DIGIT = 32)(clock, reset, NextPC, PCWrite, IAddress);
	input clock;
	input reset;
	input      [DIGIT - 1 : 0] NextPC;
	input PCWrite;
	
	output reg [DIGIT - 1 : 0] IAddress;

	initial 
	begin
		IAddress = `initialPC;
	end
	
	always @(posedge clock or posedge reset)
	begin 
		if(reset) 
			IAddress <= `initialPC;
		else 
		begin
			if (PCWrite) 
				IAddress <= NextPC;
			else 
				IAddress <= IAddress;
		end
	end
endmodule
