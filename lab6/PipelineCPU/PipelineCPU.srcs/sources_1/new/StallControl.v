`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/26 20:32:55
// Design Name: 
// Module Name: StallControl
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

module StallControl(Instruction_D,Instruction_E,Instruction_M,Stall);
    input [31 : 0] Instruction_D,Instruction_E,Instruction_M;
    output Stall;

    MIPS_Decoder D(.IR(Instruction_D)),
                 E(.IR(Instruction_E)),
                 M(.IR(Instruction_M));
                 
	wire Stall_B_Normal, Stall_B_Zero, Stall_Jump_Register, Stall_ld;
	
    assign Stall_B_Normal = 
    (
    	(D.B_Normal === 1) 
    	&& 
        (
        	(
                (E.Cal_R_Normal || E.Cal_R_Shift || E.Move_Register) 
                &&
                (
                	(Instruction_D[`rs] == Instruction_E[`rd]) 
                	|| 
                	(Instruction_D[`rt] == Instruction_E[`rd])
                )
		  	)
		  	||
		  	(
                (E.ld || E.Cal_I || E.LUI) 
                &&
                (
                	(Instruction_D[`rs] == Instruction_E[`rt]) 
                	||
                 	(Instruction_D[`rt] == Instruction_E[`rt])
                 )
		  	)
		  	||
		 	(
                (M.ld) 
                &&
                (
                	(Instruction_D[`rs] == Instruction_E[`rt]) 
                	||
                 	(Instruction_D[`rt] == Instruction_E[`rt])
                )
		  	)
		)
	);

    assign Stall_B_Zero = 
    (
    	(D.B_Zero === 1)
    	&& 
    	(
    		(
    			(E.Cal_R_Normal || E.Cal_R_Shift || E.Move_Register) 
    			&&
                (Instruction_D[`rs] == Instruction_E[`rd])
			) 
		  	||
		  	(
                (E.ld || E.Cal_I || E.LUI) 
                &&
                (Instruction_D[`rs] == Instruction_E[`rt]) 
		  	)
		  	||
            (
                (M.ld)
                &&
                (Instruction_D[`rs] == Instruction_E[`rt]) 
		  	)
		)
	);

    assign Stall_Jump_Register = 
    (
    	(D.Jump_Register === 1)
    	&& 
        (
        	(
        		(E.Cal_R_Normal || E.Cal_R_Shift || E.Move_Register) 
        		&&
                (Instruction_D[`rs] == Instruction_E[`rd])
		  	) 
		  	||
		  	(
                (E.ld || E.Cal_I || E.LUI) 
                &&
                (Instruction_D[`rs] == Instruction_E[`rt]) 
		  	) 
		  	||
		  	(
                (M.ld)
                &&
                (Instruction_D[`rs] == Instruction_E[`rt]) 
		 	)
		)
	);

    assign Stall_ld = 
    (
    	(E.ld === 1) 
    	&&
		(
	  		(
                (D.ld || D.st || D.Cal_R_Normal || D.Cal_R_MUL || D.Cal_I)
                &&
                (Instruction_D[`rs] == Instruction_E[`rt])
		  	)
		  	||
		  	(
                (D.Cal_R) 
                &&
                (Instruction_D[`rd] == Instruction_E[`rt])
		  	)
		)
	);
	
    assign Stall = Stall_B_Normal || Stall_B_Zero || Stall_Jump_Register || Stall_ld;
    
endmodule

