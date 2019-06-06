`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 21:11:23
// Design Name: 
// Module Name: Multiplexer
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


module Multiplexer #(parameter N = 2, DATASIZE = 32)(in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7, s, out);
	input      [DATASIZE - 1 : 0] in_0, in_1, in_2, in_3, in_4, in_5, in_6, in_7;
	input                 [2 : 0] s;
	
	output reg [DATASIZE - 1 : 0] out;

	initial
	begin
		out = 'b0;
	end
	
	always @(*)
	begin
		if (s >= N)
            out = 'b0;
        else
			case (s)
				3'b111: out = in_7;
				3'b110: out = in_6;
				3'b101: out = in_5;
				3'b100: out = in_4;
				default:
					case (s[1 : 0])
						2'b11: out = in_3;
						2'b10: out = in_2;
						default:
							case (s[0])
								1'b1: out = in_1;
								1'b0: out = in_0;
								default:
									out = 'b0;
							endcase
					endcase
			endcase
        end
endmodule
