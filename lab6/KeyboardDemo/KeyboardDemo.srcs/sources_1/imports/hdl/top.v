`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date: 03/03/2015 09:06:31 PM
// Design Name: 
// Module Name: top
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: This project takes keyboard input from the PS2 port,
//  and outputs the keyboard scan code to the 7 segment display on the board.
//  The scan code is shifted left 2 characters each time a new code is
//  read.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module top
(
    input CLK100MHZ,
    input PS2_CLK,
    input PS2_DATA,
    output [6:0] SEG,
    output [7:0] AN,
    output DP,
    output UART_TXD
);
    
	reg CLK50MHZ = 0;    
	wire [31:0] keycode;

	always @(posedge(CLK100MHZ))
	begin
    	CLK50MHZ <= ~CLK50MHZ;
	end

	PS2_Receiver Keyboard 
	(
		.clock(CLK50MHZ),
		.key_clock(PS2_CLK),
		.key_data(PS2_DATA),
		.key_code_out(keycode[31:0])
	);

	Seg7_Hexadecimal sevenSeg 
	(
		.FullData(keycode[31:0]),
		.clock(CLK100MHZ),
		.seg(SEG[6:0]),
		.an(AN[7:0]),
		.dp(DP) 
	);
 
endmodule
