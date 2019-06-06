`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 19:17:08
// Design Name: 
// Module Name: Control
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


module Control(
    input [5:0] Op,
    input clk,
    input rst,
    output reg PCWriteCond1,
    output reg PCWriteCond2,
    output reg PCWrite,
    output reg IorD,
    output reg MemRead,
    output reg MemWrite,
    output reg MemtoReg,
    output reg IRWrite,
    output reg [1:0] PCSource,
    output reg [1:0] ALUOp,
    output reg [1:0] ALUSrcB,
    output reg ALUSrcA,
    output reg RegWrite,
    output reg RegDst,
    output [3:0] STATE,NEXTSTATE
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
    
    parameter start = 4'b1101;
    parameter IF = 4'b0000;
    parameter ID = 4'b0001;
    parameter E_LWorSW = 4'b0010;
    parameter C_LW = 4'b0011;
    parameter WB = 4'b0100;
    parameter C_SW = 4'b0101;
    parameter E_R = 4'b0110;
    parameter C_R = 4'b0111;
    parameter E_I = 4'b1000;
    parameter C_I = 4'b1001;
    parameter C_BEQ = 4'b1010;
    parameter C_BNE = 4'b1011;
    parameter C_J = 4'b1100;
    
    reg [3:0] state,nextstate;
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            state <= start;
        else
            state <= nextstate;
    end
    
    always@(*)
    begin
        case(state)
            start,C_J,C_BNE,C_BEQ,C_R,C_I,WB,C_SW:
                nextstate = IF;
            IF:
                nextstate = ID;
            ID:
            begin
                case(Op)
                    R_type: nextstate = E_R;
                    LW: nextstate = E_LWorSW;
                    SW: nextstate = E_LWorSW;
                    BEQ: nextstate = C_BEQ;
                    BNE: nextstate = C_BNE;
                    J: nextstate = C_J;
                    addi: nextstate = E_I;
                    andi: nextstate = E_I;
                    ori: nextstate = E_I;
                    xori: nextstate = E_I;
                    slti: nextstate = E_I;
                endcase
            end
            E_LWorSW:
            begin
                if(Op == 6'b100011)
                    nextstate = C_LW;
                else if(Op == 6'b101011)
                    nextstate = C_SW;
            end
            C_LW:
                nextstate = WB;
            E_R:
                nextstate = C_R;
            E_I:
                nextstate = C_I;
            default:
                nextstate = start;
        endcase
    end
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            PCWriteCond1 <= 'b0;
            PCWriteCond2 <= 'b0;
            PCWrite <= 'b0;
            IorD <= 'b0;
            MemRead <= 'b0;
            MemWrite <= 'b0;
            MemtoReg <= 'b0;
            IRWrite <= 'b0;
            PCSource <= 'b0;
            ALUOp <= 'b0;
            ALUSrcB <= 'b0;
            ALUSrcA <= 'b0;
            RegWrite <= 'b0;
            RegDst <= 'b0;
        end
        else
        begin
            case(nextstate)
                IF:
                begin
                    PCWriteCond1 <= 'b0;
                    PCWriteCond2 <= 'b0;
                    PCWrite <= 1'b1;
                    IorD <= 'b0;
                    MemRead <= 1'b1;
                    MemWrite <= 'b0;
                    MemtoReg <= 'b0;
                    IRWrite <= 1'b1;
                    PCSource <= 2'b00;
                    ALUOp <= 2'b00;
                    ALUSrcB <= 2'b01;
                    ALUSrcA <= 'b0;
                    RegWrite <= 'b0;
                    RegDst <= 'b0;
                end
                ID:
                begin
                    PCWrite <= 'b0;
                    IRWrite <= 'b0;
                    ALUSrcB <= 2'b11;
                end
                E_LWorSW:
                begin
                    ALUOp <= 2'b00;
                    ALUSrcB <= 2'b10;
                    ALUSrcA <= 1'b1;
                end
                C_LW:
                begin
                    IorD <= 1'b1;
                    MemRead <= 1'b1;
                end
                WB:
                begin
                    MemtoReg <= 1'b1;
                    RegWrite <= 1'b1;
                    RegDst <= 1'b0;
                end
                C_SW:
                begin
                    IorD <= 1'b1;
                    MemWrite <= 1'b1;
                end
                E_R:
                begin
                    ALUOp <= 2'b10;
                    ALUSrcB <= 2'b00;
                    ALUSrcA <= 1'b1;
                end
                E_I:
                begin
                    ALUOp <= 2'b11;
                    ALUSrcB <= 2'b10;
                    ALUSrcA <= 1'b1;
                end
                C_R:
                begin
                    MemtoReg <= 1'b0;
                    RegWrite <= 1'b1;
                    RegDst <= 1'b1;
                end
                C_I:
                begin
                    MemtoReg <= 1'b0;
                    RegWrite <= 1'b1;
                    RegDst <= 1'b0;
                end
                C_BEQ:
                begin
                    PCWriteCond1 <= 1'b1;
                    PCSource <= 2'b01;
                    ALUOp <= 2'b01;
                    ALUSrcB <= 2'b00;
                    ALUSrcA <= 1'b1;
                end
                C_BNE:
                begin
                    PCWriteCond2 <= 1'b1;
                    PCSource <= 2'b01;
                    ALUOp <= 2'b01;
                    ALUSrcB <= 2'b00;
                    ALUSrcA <= 1'b1;
                end
                C_J:
                begin
                    PCWrite <= 1'b1;
                    PCSource <= 2'b10;
                    ALUOp <= 2'b00;
                end
            endcase
        end
    end
    assign STATE = state;
    assign NEXTSTATE = nextstate;
endmodule
