`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/07 15:44:59
// Design Name: 
// Module Name: Multiplexer_tb
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


module Multiplexer_tb();
	wire [15 : 0] out1, out2, out3;
	reg s1;
	reg [1 : 0] s2, s3;
	Multiplexer #(2, 16) MUX1 ('d0, 'd1, 'd2, 'd3, s1, out1);
	Multiplexer #(3, 16) MUX2 ('d0, 'd1, 'd2, 'd3, s2, out2);
	Multiplexer #(4, 16) MUX3 ('d0, 'd1, 'd2, 'd3, s3, out3);
	
	initial
	begin
		s1 = 'b0;
		s2 = 'b00;
		s3 = 'b00;
		#20;
		s1 = 'b1;
		s2 = 'b01;
		s3 = 'b01;
		#20;
		s2 = 'b10;
		s3 = 'b10;
		#20;
		s3 = 'b11;
		#20;
	end
endmodule
