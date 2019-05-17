
`timescale 1ns / 1ps

module Counter(
	input clock,             
	input reset,             
	input [15:0] Range,     
	output reg [15:0] Counter 
);

	always@(posedge clock or posedge reset) 
	begin
		if (reset) 
			Counter <= 0;
		else 
			if(Counter == Range - 1) 
				Counter <= 0;
			else 
				Counter <= Counter + 1;
	end

endmodule