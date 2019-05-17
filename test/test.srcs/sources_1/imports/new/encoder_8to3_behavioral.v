`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/10/25 23:02:21
// Design Name: 
// Module Name: encoder_8to3_behavioral
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


module encoder_8to3_behavioral(
    input [7:0] x,
    input en_in,
    output reg [2:0] y,
    output reg en_out,
    output reg gs
    );
    integer i;
    always @(*)
    begin
    	if (en_in == 1)
    	begin
    		en_out = 1;
    		gs = 1;
    		y='b111;
    	end
    	else
    	begin
    		if (x == 'b11111111)
    		begin
    			en_out = 0;
    			gs = 1;
    			y='b111;
    		end
    		else
    		begin
    			en_out = 1;
    		    gs = 0;
    			for ( i = 0 ; (i < 8) && ( x[i] != 0 ) ; i = i + 1)
    			begin
    			end
    			y = i;
    		end
    	end
    end
    		
endmodule
