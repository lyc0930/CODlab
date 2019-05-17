`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/09 18:06:33
// Design Name: 
// Module Name: FixedLengthPulse
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


module FixedLengthPulse #(parameter N = 3)(clock, reset, signal, pulse, count, delay_0, delay_1);
	input  clock;
	input  reset; 
	input  signal; 
	output pulse; 

	output reg [10:0] count;
	
	wire enable;
	output reg delay_0, delay_1;
	assign enable = delay_0 & ~delay_1;
	assign pulse = ((count > 'd0) && (count < N));
	initial
	begin
		delay_0 = 0;
		delay_1 = 0;
		count = 'd0;
	end
	
	always @(signal)
	begin
//		if (~enable)
			delay_0 <= signal;
	end
	
	always @(posedge clock)
	begin
		delay_1 <= delay_0;
	end
	
	always @(posedge enable or posedge clock)
	begin
		if (enable)
				count <= 'd1;
		else
			if (count > N - 2)		
				count <= 'd0;
			else
				if (count > 'd0)
					count <= count + 'd1;
	end
	
endmodule
