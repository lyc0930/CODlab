`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 21:02:45
// Design Name: 
// Module Name: Register
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


module Register #(parameter DIGIT = 32)(clock, reset, enable, In, Out);
	input clock, reset, enable;
	input      [DIGIT - 1 : 0] In;
	
	output reg [DIGIT - 1 : 0] Out;
	
	initial 
	begin
		Out = {DIGIT{1'b0}};
	end
	
	always@(posedge clock) 
	begin
		if (reset) 
		begin
            Out = {DIGIT{1'b0}}; // sync reset
        end
        else
        begin
        	if (enable == 1)
        	begin
            	Out <= In;
        	end
			else
			begin
				Out <= Out;
			end
		end
	end
	
endmodule
