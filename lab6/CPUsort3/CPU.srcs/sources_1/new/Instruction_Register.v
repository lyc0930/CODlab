`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 21:54:06
// Design Name: 
// Module Name: Instruction_Register
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


module Instruction_Register(
    input [31:0] Instruction,
    input clk,
    input rst,
    input IRWrite,
    output reg [5:0] op,
    output reg [4:0] rs,
    output reg [4:0] rt,
    output reg [4:0] rd,
    output reg [15:0] immediate
    );
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            op <= 'b0;
            rs <= 'b0;
            rt <= 'b0;
            rd <= 'b0;
            immediate <= 'b0;
        end
        else 
        begin
            if(IRWrite == 1)
            begin
                op <= Instruction[31:26];
                rs <= Instruction[25:21];
                rt <= Instruction[20:16];
                rd <= Instruction[15:11];
                immediate <= Instruction[15:0];
            end
            else
            begin
                op <= op;
                rs <= rs;
                rt <= rt;
                rd <= rd;
                immediate <= immediate;
            end
        end
    end
endmodule
