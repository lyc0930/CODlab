`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/28 21:06:17
// Design Name: 
// Module Name: Debouncer
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


module Debouncer
(
    input clock,
    input signal_raw,
    output reg signal_stable
);
    
    reg [4:0] Count;
    reg delay = 0;
    
	always @(posedge clock)
	begin
    	if (signal_raw == delay)
    	begin
        	if (Count == 19)
        		signal_stable <= signal_raw;
        	else 
        		Count <= Count + 1;
      	end
    	else 
    	begin
        	Count <= "00000";
        	delay <= signal_raw;
    	end
    end
    
endmodule
