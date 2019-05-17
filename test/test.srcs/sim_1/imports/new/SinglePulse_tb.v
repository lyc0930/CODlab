`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 21:37:30
// Design Name: 
// Module Name: SinglePulse_tb
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


module SinglePulse_tb();
	wire clock;
	reg reset, signal;
	wire pulse;
	wire delay_0, delay_1;
	wire [10 : 0] count;
	GenerateClock CLK (clock);
	FixedLengthPulse #(3) FP (.clock(clock), .reset(reset), .signal(signal), .pulse(pulse), .count(count), .delay_0(delay_0), .delay_1(delay_1));
	initial
	begin
		reset = 0;
		signal = 0;
		#31;
		signal = 1;
		#20;
		signal = 0;
		#15;
		#20;
		signal = 1;
		#3;
		signal = 0;
		#7;
		#20;
		signal = 1;
		#7;
		signal = 0;
		#50;
		signal = 1;
		#10;
		signal = 0;
		#15;
		#20;
		signal = 1;
		#3;
		signal = 0;

	end
endmodule
