`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 14:29:40
// Design Name: 
// Module Name: MouseDemo_top
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


module MouseDemo_top(
    input CLK100MHZ,
    input PS2_CLK,
    input PS2_DATA,
    output [6:0] SEG,
    output [7:0] AN,
    output DP
);
    
	reg CLK50MHZ = 0;    
	wire [31:0] Mouse_Data;

	always @(posedge(CLK100MHZ))
	begin
    	CLK50MHZ <= ~CLK50MHZ;
	end

	PS2_Receiver_Mouse Mouse
	(
		.clock(CLK50MHZ),
		.mouse_clock(PS2_CLK),
		.mouse_data(PS2_DATA),
		.mouse_status(Mouse_Data[23 : 16]),
		.X_direction(Mouse_Data[15 : 8]),
		.Y_direction(Mouse_Data[7 : 0])
	);

	Seg7_Hexadecimal sevenSeg 
	(
		.FullData(Mouse_Data[31 : 0]),
		.clock(CLK100MHZ),
		.seg(SEG[6:0]),
		.an(AN[7:0]),
		.dp(DP) 
	);
 
endmodule

