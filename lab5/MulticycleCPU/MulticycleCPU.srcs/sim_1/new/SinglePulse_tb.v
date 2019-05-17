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
	wire pulse_1, pulse_2;
	wire delay_0, delay_1;
	GenerateClock CLK (clock);
	SinglePulse      SP (.clock(clock), .reset(reset), .signal(signal), .pulse(pulse_1));
	FixedLengthPulse FP (.clock(clock), .reset(reset), .signal(signal), .pulse(pulse_2), .delay_0(delay_0), .delay_1(delay_1));
	initial
	begin
		reset = 0;
		signal = 0;
		#310;
		signal = 1;
		#200;
		signal = 0;
		#150;
		#200;
		signal = 1;
		#30;
		signal = 0;
		#70;
		#200;
		signal = 1;
		#70;
		signal = 0;
		#500;
		signal = 1;
		#100;
		signal = 0;
		#150;
		#200;
		signal = 1;
		#30;
		signal = 0;

	end
endmodule
