`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 21:21:46
// Design Name: 
// Module Name: ALU_Control
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


module ALU_Control(
    input [1:0] ALUOp,
    input [5:0] Funct,
    input [5:0] Op,
    output reg [3:0] ALU_ctrl
    );

    parameter R_type = 6'b000000;
    parameter LW = 6'b100011;
    parameter SW = 6'b101011;
    parameter BEQ = 6'b000100;
    parameter BNE = 6'b000101;
    parameter J = 6'b000010;
    parameter addi = 6'b001000;
    parameter andi = 6'b001100;
    parameter ori = 6'b001101;
    parameter xori = 6'b001110;
    parameter slti = 6'b001010;

    parameter ADD = 4'b0000;
    parameter SUB = 4'b0001;
    parameter AND = 4'b0010;
    parameter OR = 4'b0011;
    parameter XOR = 4'b0100;
    parameter NOR = 4'b0101;
    parameter SLT = 4'b0110;

    always@(*)
    begin
        case(ALUOp)
            2'b00: ALU_ctrl = ADD;
            2'b01: ALU_ctrl = SUB;
            2'b10: 
                case(Funct)
                    6'b100000: ALU_ctrl = ADD;
                    6'b100010: ALU_ctrl = SUB;
                    6'b100100: ALU_ctrl = AND;
                    6'b100101: ALU_ctrl = OR;
                    6'b100110: ALU_ctrl = XOR;
                    6'b100111: ALU_ctrl = NOR;
                    6'b101010: ALU_ctrl = SLT;
                endcase
            2'b11:
                case(Op)
                    addi: ALU_ctrl = ADD;
                    andi: ALU_ctrl = AND;
                    ori: ALU_ctrl = OR;
                    xori: ALU_ctrl = XOR;
                    slti: ALU_ctrl = SLT;
                endcase
        endcase
    end
endmodule
