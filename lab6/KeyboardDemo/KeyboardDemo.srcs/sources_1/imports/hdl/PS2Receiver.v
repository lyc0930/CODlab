`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Digilent Inc.
// Engineer: Thomas Kappenman
// 
// Create Date: 03/03/2015 09:33:36 PM
// Design Name: 
// Module Name: PS2Receiver
// Project Name: Nexys4DDR Keyboard Demo
// Target Devices: Nexys4DDR
// Tool Versions: 
// Description: PS2 Receiver module used to shift in keycodes from a keyboard plugged into the PS2 port
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PS2_Receiver
(
    input clock,
    input key_clock,
    input key_data,
    output [31 : 0] key_code_out
);
    
    
    wire key_clock_s, key_data_s;
    reg [7 : 0] Data_current;
    reg [7 : 0] Data_previous;
    reg [3 : 0] Count;
    reg [31 : 0] key_code;
    reg flag;
    
    initial 
    begin
        key_code[31 : 0] <= 8'h00000000;
        Count <= 4'b0000;
        flag <= 1'b0;
    end
    
	Debouncer key_clock_debounce
	(
		.clock(clock),
		.signal_raw(key_clock),
		.signal_stable(key_clock_s)
	);
	
	Debouncer key_data_debounce(
		.clock(clock),
		.signal_raw(key_data),
		.signal_stable(key_data_s)
	);
    
	always @(negedge key_clock_s)
	begin
		case(Count)
			0 : ; // Start bit
			1 : Data_current[0] <= key_data_s;
			2 : Data_current[1] <= key_data_s;
			3 : Data_current[2] <= key_data_s;
			4 : Data_current[3] <= key_data_s;
			5 : Data_current[4] <= key_data_s;
			6 : Data_current[5] <= key_data_s;
			7 : Data_current[6] <= key_data_s;
			8 : Data_current[7] <= key_data_s;
			9 : flag <= 1'b1;
			10: flag <= 1'b0;
		endcase
		if (Count <= 9) 
			Count <= Count+1;
		else 
			if (Count == 10) 
				Count <= 0;		
	end

	always @(posedge flag)
	begin
		if (Data_previous != Data_current)
		begin
			key_code[31 : 24] <= key_code[23 : 16];
			key_code[23 : 16] <= key_code[15 : 8 ];
			key_code[15 : 8 ] <= Data_previous;
			key_code[ 7 : 0 ] <= Data_current;
			Data_previous <= Data_current;
		end
	end
    
	assign key_code_out = key_code;
    
endmodule
