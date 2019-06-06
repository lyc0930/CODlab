`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 19:08:43
// Design Name: 
// Module Name: MIPS_Decoder
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

module MIPS_Decoder #(parameter DIGIT = 32)(
	input [DIGIT - 1 : 0] Instruction,
    output ld, 
    	   st, 
    	   Cal_R_Normal, 
    	   Cal_R_Mul_Div, 
    	   Cal_R_Shift, 
		   Cal_R, 
    	   Cal_I, 
    	   LUI, 
    	   B_Normal, 
    	   B_Zero, 
    	   Branch, 
    	   J, 
    	   JAL, 
    	   JALR, 
    	   JR, 
		   Jump, 
		   Jump_Unlink, 
 		   Jump_Link, 
 		   Jump_Register, 
    	   MFHI, 
    	   MFLO,
 		   Move_Register, 
 		   Zero_extend, 
    	   Sign_extend, 
 		   WBTnew);
 		   
    assign            ld = ((Instruction[`opcode] == `LB ) ||
                            (Instruction[`opcode] == `LBU) ||
                            (Instruction[`opcode] == `LH ) ||
                            (Instruction[`opcode] == `LHU) ||
                            (Instruction[`opcode] == `LW ));
   
	assign            st = ((Instruction[`opcode] == `SB) ||
					   	    (Instruction[`opcode] == `SH) ||
						    (Instruction[`opcode] == `SW));
    
    assign  Cal_R_Normal = ((Instruction[`opcode] == `R_type) && 
                           ((Instruction[ `funct] == `ADD )||
                            (Instruction[ `funct] == `ADDU)||
                            (Instruction[ `funct] == `SUB )||
                            (Instruction[ `funct] == `SUBU)||
                            (Instruction[ `funct] == `SLLV)||
                            (Instruction[ `funct] == `SRLV)||
                            (Instruction[ `funct] == `SRAV)||
                            (Instruction[ `funct] == `AND )||
                            (Instruction[ `funct] == `OR  )||
                            (Instruction[ `funct] == `XOR )||
                            (Instruction[ `funct] == `NOR )||
                            (Instruction[ `funct] == `SLT )||
                            (Instruction[ `funct] == `SLTU)));
                            
    assign Cal_R_Mul_Div = ((Instruction[`opcode] == `R_type) && 
                           ((Instruction[ `funct] == `MULT )||
                            (Instruction[ `funct] == `MULTU)||
                            (Instruction[ `funct] == `DIV  )||
                            (Instruction[ `funct] == `DIVU)));
                            
    assign   Cal_R_Shift = ((Instruction[`opcode] == `R_type) && 
                           ((Instruction[ `funct] == `SLL)||
                            (Instruction[ `funct] == `SRL)||
                            (Instruction[ `funct] == `SRA)));
                            
	assign         Cal_R = Cal_R_Normal || Cal_R_Mul_Div ||Cal_R_Shift;
        
    assign         Cal_I =  (Instruction[`opcode] >= 6'b001000) && 
    			            (Instruction[`opcode] <= 6'b001110);
    
    assign           LUI =   Instruction[`opcode] == `LUI;
    
    assign      B_Normal = ((Instruction[`opcode] == `BEQ ) ||
                            (Instruction[`opcode] == `BNE ));

    assign        B_Zero = ((Instruction[`opcode] == `BLEZ) ||
                            (Instruction[`opcode] == `BGTZ) ||
                            (Instruction[`opcode] == `BLTZ) ||
                            (Instruction[`opcode] == `BGEZ));
                     
	assign        Branch = B_Normal || B_Zero;
	
    assign             J =  (Instruction[`opcode] == `J);
    
    assign           JAL =  (Instruction[`opcode] == `JAL);
    
    assign          JALR = ((Instruction[`opcode] == `R_type) && 
                            (Instruction[ `funct] == `JALR));
    
    assign            JR = ((Instruction[`opcode] == `R_type) && 
                            (Instruction[ `funct] == `JR  ));
    
    assign Jump          = J || JAL || JALR || JR;
    
    assign Jump_Unlink   = J                || JR;
    
    assign Jump_Link     =      JAL || JALR      ;
    
    assign Jump_Register =             JALR || JR;
    
    assign          MFHI = ((Instruction[`opcode] == `R_type) && 
    	                    (Instruction[ `funct] == `MFHI));
    
    assign          MFLO = ((Instruction[`opcode] == `R_type) && 
                            (Instruction[ `funct] == `MFLO));

    assign Move_Register = MFHI || MFLO;

    assign   Zero_extend = ((Instruction[`opcode] == `ANDI) ||
                            (Instruction[`opcode] == `ORI ) ||
                            (Instruction[`opcode] == `XORI));
                          
    assign   Sign_extend = ! Zero_extend;
    
    assign WBTnew = ld           || Cal_R_Normal ||
                    Cal_R_Shift || Cal_I        ||
                    LUI          || Jump_Link           ||
                    Move_Register       ;


endmodule

