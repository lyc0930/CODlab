`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date:    03/03/2015 09:08:33 PM 
// Design Name: 
// Module Name:    seg7decimal 
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: 7 segment display driver
// 
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module Seg7_Hexadecimal
(
	input [31 : 0] FullData,
    input clock,
    output reg [6 : 0] seg,
    output reg [7 : 0] an,
    output wire dp 
);
	 
	 
	wire [2 : 0] s;	 
	reg [3 : 0] Data;
	wire [7 : 0] an_enable;
	reg [19 : 0] Count;

	assign dp = 1;
	assign s = Count[19 : 17];
	assign an_enable = 8'b11111111; // all turned off initially

	// quad 8to1 MUFullData.
	always @(posedge clock)// or posedge clr)
	begin
		case(s)
			0:Data = FullData[ 3 : 0 ]; // s is 000 -->0 ;  Data gets assigned 4 bit value assigned to FullData[3:0]
			1:Data = FullData[ 7 : 4 ]; // s is 001 -->1 ;  Data gets assigned 4 bit value assigned to FullData[7:4]
			2:Data = FullData[11 : 8 ]; // s is 010 -->2 ;  Data gets assigned 4 bit value assigned to FullData[11:8]
			3:Data = FullData[15 : 12]; // s is 011 -->3 ;  Data gets assigned 4 bit value assigned to FullData[15:12]
			4:Data = FullData[19 : 16]; // s is 100 -->4 ;  Data gets assigned 4 bit value assigned to FullData[19:16]
			5:Data = FullData[23 : 20]; // s is 101 -->5 ;  Data gets assigned 4 bit value assigned to FullData[23:20]
			6:Data = FullData[27 : 24]; // s is 110 -->6 ;  Data gets assigned 4 bit value assigned to FullData[27:24]
			7:Data = FullData[31 : 28]; // s is 111 -->7 ;  Data gets assigned 4 bit value assigned to FullData[31:28]
			default:
				Data = FullData[3 : 0];
		endcase
	end	
	
	//decoder or truth-table for 7seg display values
	always @(*)
	begin
		case(Data)
		//////////<---MSB-LSB<---
		//////////////gfedcba////////////////////////////////////////////  
			'h0: seg = 7'b1000000; //// 0000							--a--							
			'h1: seg = 7'b1111001; //// 0001						  f|    |b		
			'h2: seg = 7'b0100100; //// 0010						   --g--				                                                                      __	
			'h3: seg = 7'b0110000; //// 0011                         e|    |c			 	 
			'h4: seg = 7'b0011001; //// 0100                          --d--				      
			'h5: seg = 7'b0010010; //// 0101                                           
			'h6: seg = 7'b0000010; //// 0110
			'h7: seg = 7'b1111000; //// 0111
			'h8: seg = 7'b0000000; //// 1000
			'h9: seg = 7'b0010000; //// 1001
			'hA: seg = 7'b0001000; //// 1010
			'hB: seg = 7'b0000011; //// 1011
			'hC: seg = 7'b1000110; //// 1100
			'hD: seg = 7'b0100001; //// 1101
			'hE: seg = 7'b0000110; //// 1110
			'hF: seg = 7'b0001110; //// 1111
			default: 
				seg = 7'b0000000;
		endcase
	end

	always @(*)
	begin
		an = 8'b11111111;
		if (an_enable[s] == 1)
			an[s] = 0;
	end

	//Count

	always @(posedge clock)
	begin
		Count <= Count + 1;
	end

endmodule
