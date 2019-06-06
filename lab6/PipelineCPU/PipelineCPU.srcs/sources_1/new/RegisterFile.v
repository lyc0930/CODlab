`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 23:08:39
// Design Name: 
// Module Name: RegisterFile
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

`define gp 28
`define sp 29
`define GPDEFAULT 32'h00001800
`define SPDEFAULT 32'h00002ffc

module RegisterFile #(parameter REGSIZE = 5, DIGIT = 32)
(clock, reset, Read_Address_0, Read_Address_1, Write_Address, Write_Data, 
Write_Enable, Read_Data_0, Read_Data_1);
	input clock, reset;
	input Write_Enable;
	input  [REGSIZE - 1 : 0] Read_Address_0, Read_Address_1;
	input  [REGSIZE - 1 : 0] Write_Address;
	input    [DIGIT - 1 : 0] Write_Data;
	
	output   [DIGIT - 1 : 0] Read_Data_0, Read_Data_1;
	
	reg [DIGIT - 1 : 0] Register [1 : (1 << REGSIZE) - 1];
	integer i;
	
	assign Read_Data_0 = (Read_Address_0 == 0) ? 'b0 : (((Read_Address_0 == Write_Address) && Write_Enable) ? Write_Data : Register[Read_Address_0]);
	assign Read_Data_1 = (Read_Address_1 == 0) ? 'b0 : (((Read_Address_1 == Write_Address) && Write_Enable) ? Write_Data : Register[Read_Address_1]);
	
	initial
	begin
		for (i = 1; i < DIGIT; i = i + 1)
			Register[i] = 'b0;
		Register[`sp] = `SPDEFAULT;
		Register[`gp] = `GPDEFAULT;
	end
	
	always  @(posedge clock or posedge reset)
	begin
		if (reset)
		begin
			for (i = 1; i < DIGIT; i = i + 1)
				Register[i] <= 0;
		end
		else
		begin
			if ((Write_Address != 0) && Write_Enable)
			begin
				Register[Write_Address] <= Write_Data;
				$display("%5d:[%m] Register[%d] <= %h", $time, Write_Address, Write_Data);
            	$display("Registers Data:");
            	for (i = 0; i < DIGIT; i = i + 1)
                	$display("Register[%2d] = %h", i, PipelineCPU.RF.Register[i]);
			end
		end
	end
endmodule
