`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 18:20:55
// Design Name: 
// Module Name: ForwardControl
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

`include "MIPS_opcode.vh"

module ForwardControl (Instruction_D,Instruction_E,Instruction_M,Instruction_W,rsD,rtD,rsE,rtE,rtM);
    input  [31 : 0] Instruction_D;
    input  [31 : 0] Instruction_E;
    input  [31 : 0] Instruction_M;
    input  [31 : 0] Instruction_W;
    output [ 2 : 0] rsD,rtD;
    output [ 1 : 0] rsE,rtE;
    output        rtM;

    MIPS_Decoder D(.Instruction(Instruction_D)),
           		 E(.Instruction(Instruction_E)),
           	     M(.Instruction(Instruction_M)),
                 W(.Instruction(Instruction_W));
                 
	wire rtEIR, rsEIR, rsDIR;
	
    assign rtM = M.st && W.ld            && (Instruction_M[`rt] == Instruction_W[`rt]) ? 1 :
                 M.st && W.Cal_R_Normal  && (Instruction_M[`rt] == Instruction_W[`rd]) ? 1 :
                 M.st && W.Cal_R_Shift   && (Instruction_M[`rt] == Instruction_W[`rd]) ? 1 :
                 M.st && W.Cal_I         && (Instruction_M[`rt] == Instruction_W[`rt]) ? 1 :
                 M.st && W.LUI           && (Instruction_M[`rt] == Instruction_W[`rt]) ? 1 :
                 M.st && W.Jump_Link     && (Instruction_M[`rt] == Instruction_W[`rd]) ? 1 :
                 M.st && W.Move_Register && (Instruction_M[`rt] == Instruction_W[`rd]) ? 1 :
                                                                                         0;
    assign rtEIR = E.Cal_R || E.st;                                                               
    assign rtE = rtEIR && M.Cal_R_Normal  && (Instruction_E[`rt] == Instruction_M[`rd]) ? 1 :
                 rtEIR && M.Cal_R_Shift   && (Instruction_E[`rt] == Instruction_M[`rd]) ? 1 :
                 rtEIR && M.Cal_I         && (Instruction_E[`rt] == Instruction_M[`rt]) ? 1 :
                 rtEIR && M.LUI           && (Instruction_E[`rt] == Instruction_M[`rt]) ? 1 :
                 rtEIR && M.Move_Register && (Instruction_E[`rt] == Instruction_M[`rd]) ? 1 :
                 rtEIR && M.Jump_Link     && (Instruction_E[`rt] == Instruction_M[`rd]) ? 2 :
                 rtEIR && W.ld            && (Instruction_E[`rt] == Instruction_W[`rt]) ? 3 :
                 rtEIR && W.Cal_R_Normal  && (Instruction_E[`rt] == Instruction_W[`rd]) ? 3 :
                 rtEIR && W.Cal_R_Shift   && (Instruction_E[`rt] == Instruction_W[`rd]) ? 3 :
                 rtEIR && W.Cal_I         && (Instruction_E[`rt] == Instruction_W[`rt]) ? 3 :
                 rtEIR && W.LUI           && (Instruction_E[`rt] == Instruction_W[`rt]) ? 3 :
                 rtEIR && W.Jump_Link     && (Instruction_E[`rt] == Instruction_W[`rd]) ? 3 :
                 rtEIR && W.Move_Register && (Instruction_E[`rt] == Instruction_W[`rd]) ? 3 :
                                                                                          0;
    assign rsEIR = E.ld || E.st || E.Cal_R || E.Cal_I;
    assign rsE = rsEIR && M.Cal_R_Normal  && (Instruction_E[`rs] == Instruction_M[`rd]) ? 1 :
                 rsEIR && M.Cal_R_Shift   && (Instruction_E[`rs] == Instruction_M[`rd]) ? 1 :
                 rsEIR && M.Cal_I         && (Instruction_E[`rs] == Instruction_M[`rt]) ? 1 :
                 rsEIR && M.LUI           && (Instruction_E[`rs] == Instruction_M[`rt]) ? 1 :
                 rsEIR && M.Move_Register && (Instruction_E[`rs] == Instruction_M[`rd]) ? 1 :
                 rsEIR && M.Jump_Link     && (Instruction_E[`rs] == Instruction_M[`rd]) ? 2 :
                 rsEIR && W.ld            && (Instruction_E[`rs] == Instruction_W[`rt]) ? 3 :
                 rsEIR && W.Cal_R_Normal  && (Instruction_E[`rs] == Instruction_W[`rd]) ? 3 :
                 rsEIR && W.Cal_R_Shift   && (Instruction_E[`rs] == Instruction_W[`rd]) ? 3 :
                 rsEIR && W.Cal_I         && (Instruction_E[`rs] == Instruction_W[`rt]) ? 3 :
                 rsEIR && W.LUI           && (Instruction_E[`rs] == Instruction_W[`rt]) ? 3 :
                 rsEIR && W.Jump_Link     && (Instruction_E[`rs] == Instruction_W[`rd]) ? 3 :
                 rsEIR && W.Move_Register && (Instruction_E[`rs] == Instruction_W[`rd]) ? 3 :
                                                                                          0;

    assign rtD = D.B_Normal && E.Jump_Link     && (Instruction_D[`rt] == Instruction_E[`rd]) ? 1 :
                 D.B_Normal && M.Cal_R_Normal  && (Instruction_D[`rt] == Instruction_M[`rd]) ? 2 :
                 D.B_Normal && M.Cal_R_Shift   && (Instruction_D[`rt] == Instruction_M[`rd]) ? 2 :
                 D.B_Normal && M.Cal_I         && (Instruction_D[`rt] == Instruction_M[`rt]) ? 2 :
                 D.B_Normal && M.LUI           && (Instruction_D[`rt] == Instruction_M[`rt]) ? 2 :
                 D.B_Normal && M.Move_Register && (Instruction_D[`rt] == Instruction_M[`rd]) ? 2 :
                 D.B_Normal && M.Jump_Link     && (Instruction_D[`rt] == Instruction_M[`rd]) ? 3 :
                 D.B_Normal && W.ld            && (Instruction_D[`rt] == Instruction_W[`rt]) ? 4 :
                 D.B_Normal && W.Cal_R_Normal  && (Instruction_D[`rt] == Instruction_W[`rd]) ? 4 :
                 D.B_Normal && W.Cal_R_Shift   && (Instruction_D[`rt] == Instruction_W[`rd]) ? 4 :
                 D.B_Normal && W.Cal_I         && (Instruction_D[`rt] == Instruction_W[`rt]) ? 4 :
                 D.B_Normal && W.LUI           && (Instruction_D[`rt] == Instruction_W[`rt]) ? 4 :
                 D.B_Normal && W.Jump_Link     && (Instruction_D[`rt] == Instruction_W[`rd]) ? 4 :
                 D.B_Normal && W.Move_Register && (Instruction_D[`rt] == Instruction_W[`rd]) ? 4 :
                                                                                               0;

    assign rsDIR = D.B_Normal || D.B_Zero || D.JALR || D.JR;                                                         
    assign rsD = rsDIR && E.Jump_Link     && (Instruction_D[`rs] == Instruction_E[`rd]) ? 1 :
                 rsDIR && M.Cal_R_Normal  && (Instruction_D[`rs] == Instruction_M[`rd]) ? 2 :
                 rsDIR && M.Cal_R_Shift   && (Instruction_D[`rs] == Instruction_M[`rd]) ? 2 :
                 rsDIR && M.Cal_I         && (Instruction_D[`rs] == Instruction_M[`rt]) ? 2 :
                 rsDIR && M.LUI           && (Instruction_D[`rs] == Instruction_M[`rt]) ? 2 :
                 rsDIR && M.Move_Register && (Instruction_D[`rs] == Instruction_M[`rd]) ? 2 :
                 rsDIR && M.Jump_Link     && (Instruction_D[`rs] == Instruction_M[`rd]) ? 3 :
                 rsDIR && W.ld            && (Instruction_D[`rs] == Instruction_W[`rt]) ? 4 :
                 rsDIR && W.Cal_R_Normal  && (Instruction_D[`rs] == Instruction_W[`rd]) ? 4 :
                 rsDIR && W.Cal_R_Shift   && (Instruction_D[`rs] == Instruction_W[`rd]) ? 4 :
                 rsDIR && W.Cal_I         && (Instruction_D[`rs] == Instruction_W[`rt]) ? 4 :
                 rsDIR && W.LUI           && (Instruction_D[`rs] == Instruction_W[`rt]) ? 4 :
                 rsDIR && W.Jump_Link     && (Instruction_D[`rs] == Instruction_W[`rd]) ? 4 :
                 rsDIR && W.Move_Register && (Instruction_D[`rs] == Instruction_W[`rd]) ? 4 :
                                                                                          0;

endmodule

