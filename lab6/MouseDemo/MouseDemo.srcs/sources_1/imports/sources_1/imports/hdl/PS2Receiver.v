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


module PS2_Receiver_Keyboard
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
			Count <= Count + 1;
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

//module PS2_Receiver_Mouse
//(
//    input clock,
//    input mouse_clock,
//    input mouse_data,
//    output reg [7 : 0] mouse_status,
//    output reg [7 : 0] X_direction,
//    output reg [7 : 0] Y_direction
//);
    
    
//    wire mouse_clock_s, mouse_data_s;
//    reg [3 : 0] Count_10;
//    reg [1 : 0] Count_2;
//	reg [7 : 0] status;
//    reg [7 : 0] x;
//    reg [7 : 0] y;
//    reg flag;

    
//    initial 
//    begin
//    	mouse_status <= 8'b0;
//    	X_direction <= 8'b0;
//    	Y_direction <= 8'b0;
//        status <= 8'b0;
//        x <= 8'b0;
//        y <= 8'b0;
//        Count_10 <= 4'b0000;
//        Count_2 <= 2'b00;
//        flag <= 1'b0;
//    end
    
//	Debouncer mouse_clock_debounce
//	(
//		.clock(clock),
//		.signal_raw(mouse_clock),
//		.signal_stable(mouse_clock_s)
//	);
	
//	Debouncer mouse_data_debounce(
//		.clock(clock),
//		.signal_raw(mouse_data),
//		.signal_stable(mouse_data_s)
//	);
    
//	always @(negedge mouse_clock_s)
//	begin
//		case (Count_2)
//			'd0:
//				case(Count_10)
//					'd0 : ; // Start bit
//					'd9 : flag <= 1'b1;
//					'd10: flag <= 1'b0;
//					default :
//						status[Count_10 - 'd1] <= mouse_data_s;
//				endcase
//			'd1:
//				case(Count_10)
//					'd0 : ; // Start bit
//					'd9 : flag <= 1'b1;
//					'd10: flag <= 1'b0;
//					default :
//						x[Count_10 - 'd1] <= mouse_data_s;
//				endcase 
//			'd2:
//				case(Count_10)
//					'd0 : ; // Start bit
//					'd9 : flag <= 1'b1;
//					'd10: flag <= 1'b0;
//					default :
//						y[Count_10 - 'd1] <= mouse_data_s;
//				endcase 
//		endcase
//		if (Count_10 <= 'd9) 
//			Count_10 <= Count_10 + 'd1;
//		else 
//			if (Count_10 == 'd10) 
//			begin
//				Count_10 <= 'd0;	
//				if (Count_2 <= 'd1)
//					Count_2 <= Count_2 + 'd1;
//				else 
//					if (Count_2 == 'd2)
//						Count_2 <= 'd0;
//			end	
//	end

//	always @(posedge flag)
//	begin
//		if (mouse_status != status)
//			mouse_status <= status;
//		if (X_direction != x)
//			X_direction <= x;
//		if (Y_direction != y)
//			Y_direction <= y;
//	end
    
//endmodule
module PS2_Receiver_Mouse
(
    input clock,
    input mouse_clock,
    input mouse_data,
    output [7 : 0] mouse_status,
    output [7 : 0] X_direction,
    output [7 : 0] Y_direction
);
    
    
    wire mouse_clock_s, mouse_data_s;
    reg [6 : 0] Count;
    reg [23 : 0] Data_current;
    reg [23 : 0] Data_previous;
	reg [7 : 0] status;
    reg [7 : 0] x;
    reg [7 : 0] y;
    reg flag;
	
	assign mouse_status = status;
	assign X_direction = x;
	assign Y_direction = y;
    
    initial 
    begin
    	Data_current <= 24'b0;
    	Data_previous <= 24'b0;
        status <= 8'b0;
        x <= 8'b0;
        y <= 8'b0;
        Count <= 6'b000000;
        flag <= 1'b0;
    end
    
	Debouncer mouse_clock_debounce
	(
		.clock(clock),
		.signal_raw(mouse_clock),
		.signal_stable(mouse_clock_s)
	);
	
	Debouncer mouse_data_debounce(
		.clock(clock),
		.signal_raw(mouse_data),
		.signal_stable(mouse_data_s)
	);
    
	always @(negedge mouse_clock_s)
	begin
		case(Count)
			'd0 : ; // Start bit
			'd9 : ; // P
			'd10: ; // Stop bit
			'd11: ; // Start bit
			'd20: ; // P
			'd21: ; // Stop bit
			'd22: ; // Start bit
			'd31: flag <= 1'b1; // P
			'd32: flag <= 1'b0; // Stop bit
			default :
			begin
				if (('d0 < Count) && (Count < 'd9))
					Data_current[Count - 'd1] <= mouse_data_s;
				else if (('d11 < Count) && (Count < 'd20))
					Data_current[Count - 'd12] <= mouse_data_s;
				else if (('d22 < Count) && (Count < 'd31))
					Data_current[Count - 'd23] <= mouse_data_s;
			end
		endcase
		
		if (Count <= 'd31) 
			Count <= Count + 'd1;
		else 
			if (Count == 'd32) 
				Count <= 'd0;		
	end

	always @(posedge flag)
	begin
		if (Data_previous != Data_current)
		begin
			status <= Data_current[23 : 16];
			x <= Data_current[15 : 8];
			y <= Data_current[7 : 0];
			Data_previous <= Data_current;
		end
	end
    
endmodule