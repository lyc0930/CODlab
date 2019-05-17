`timescale 1ns / 1ps

// Use code in https://github.com/Smart-Hypercube/fpga_csgo/blob/master/vga.v
// and slightly modified.
// Chinese comments are removed to avoid encoding problems.

module vga(
	input CLK100MHZ,         
	input reset,
	input [11:0] Brush_Colour, //RGB
	output [3:0] VGA_R,
	output [3:0] VGA_G,
	output [3:0] VGA_B,
	output VGA_HS,
	output VGA_VS
);
	wire CLK50MHZ;
	wire [9:0] Point_X;
	wire [9:0] Point_Y;
	wire DisplayEnable;
	
	// 800x600@72Hz
	parameter H_SYNC = 120;    // horizontal sync pulse
	parameter H_BEGIN = 184;  // horizontal data begin
	parameter H_END = 984;    // horizontal data end
	parameter H_PERIOD = 1040; // horizontal whole line length
	parameter V_SYNC = 6;     // vertical sync pulse
	parameter V_BEGIN = 29;   // vertical data begin
	parameter V_END = 629;    // vertical data end
	parameter V_PERIOD = 666; // vertical whole frame length

	clk_wiz_0 CLK100MHZ_to_CLK50MHZ (CLK50MHZ, CLK100MHZ);
	Counter H_COUNT (CLK50MHZ, reset, H_PERIOD, Point_X);
	Counter V_COUNT (~(Point_X[9]), reset, V_PERIOD, Point_Y);
	
	assign VGA_HS = ~(Point_X < H_SYNC);
	assign VGA_VS = ~(Point_Y < V_SYNC);
	assign DisplayEnable = (Point_Y >= V_BEGIN) && (Point_Y < V_END) && (Point_X >= H_BEGIN) && (Point_X < H_END);
	assign VGA_R = DisplayEnable ? Brush_Colour[11:8] : 0;
	assign VGA_G = DisplayEnable ? Brush_Colour[7:4] : 0;
	assign VGA_B = DisplayEnable ? Brush_Colour[3:0] : 0;

endmodule
