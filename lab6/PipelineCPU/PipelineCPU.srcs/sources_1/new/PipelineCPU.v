`include "MIPS_opcode.vh"
`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/21 13:35:55
// Design Name: 
// Module Name: PipelineCPU
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

module Pipeline#(parameter DIGIT = 32, FIELDWIDTH = 5, ADDRWIDTH = 16, DEBUGSIZE = 8)
(clock, reset, run, MemData, MemWrite, MemAddress);

    input clock ; 
    input reset ; 
	input run;
	input      [DIGIT - 1 : 0] MemData;
	
	output MemWrite;
	output [ADDRWIDTH - 1 : 0] MemAddress;

	// IF

    wire [DIGIT - 1 : 0] PCOut  ;
    wire [DIGIT - 1 : 0] NextPC ;
    wire [DIGIT - 1 : 0] IR  ;
    wire [DIGIT - 1 : 0] ADD4;

    wire [DIGIT - 1 : 0]  IR_D;
    wire [DIGIT - 1 : 0] PC4_D;
    wire [DIGIT - 1 : 0]  IR_E;
    wire [DIGIT - 1 : 0] PC4_E;
    wire [DIGIT - 1 : 0]  RS_E;
    wire [DIGIT - 1 : 0]  RT_E;
    wire [DIGIT - 1 : 0] EXT_E;

    wire [DIGIT - 1 : 0] SA;
    
    wire [DIGIT - 1 : 0]  IR_M;
    wire [DIGIT - 1 : 0] PC4_M;
    wire [DIGIT - 1 : 0]  AO_M;
    wire [DIGIT - 1 : 0]  RT_M; 
    wire [DIGIT - 1 : 0]  IR_W;
    wire [DIGIT - 1 : 0] PC4_W;
    wire [DIGIT - 1 : 0]  AO_W;
    wire [DIGIT - 1 : 0]  DR_W;
	
	wire PCWe, IF_ID_We;
	
    assign PCWe = !(StallCTRL.Stall);

    ProgramCounter PC (clock, reset, PCMUX.Q, PCWe, PCOut);

	assign MemAddress = PCOut[ADDRWIDTH - 1 : 0];
	
    Multiplexer #(3, DIGIT) MUX_PC (.in_0(PCOut + 'd4), .in_1(NextPC), .in_2(MFRSD.Q), .s(IDCTRL.PCSel));

    Multiplexer #(2, 2 * DIGIT) MUX_Flush (.in_0({IR,PCOut + 'd4}), .in_1(64'b0), .s(IDCTRL.Flush));
    
	// ID

    ForwardControl ForwardCTRL (IR_D,IR_E,IR_M,IR_W, , , , , );
    
	StallCTRL StallControl (IR_D,IR_E,IR_M,);
	
    assign IF_ID_We = !StallCTRL.Stall && IDCTRL.PCSel == 0;// cancel branch delay slot
    
    Register #(2 * DIGIT) IF_ID (clock, reset, !StallCTRL.Stall, FLUSHMUX.Q, {IR_D, PC4_D}); // IR@D.en = !stall

    Multiplexer #(5, DIGIT) MFRSD(.in_0(RF.Read_Data_0), .in_1(PC4_E), .in_2(AO_M), .in_3(PC4_M), .in_4(WDMUX.Q), .s(ForwardCTRL.rsD));

    Multiplexer #(5, DIGIT) MFRTD(.in_0(RF.Read_Data_1), .in_1(PC4_E), .in_2(AO_M), .in_3(PC4_M), .in_4(WDMUX.Q), .s(ForwardCTRL.rtD));

	RegisterFile RF (clock, reset, IR_D[`rs], IR_D[`rt], A3MUX.Q, WDMUX.Q, 'b1, , );
    
    CMP CMP(
        .D1(MFRSD.Q),
        .D2(MFRTD.Q),
        .Op(IDCTRL.CMPOp)
    );

    NextPC NextPC(
        .PC4(PC4_D),
        .i26(IR_D[25 : 0]),
        .Op(IDCTRL.NextPCOp), 
        .NextPC(NextPC)
    );

    EXT EXT(
        .Op(IDCTRL.EXTOp),
        .in(IR_D[15 : 0])
    );

    //zero_extend
    zero_extend #(5,32) SA_EXT(.in(IR_D[`shamt]));
    assign SA =  SA_EXT.out;//{{27{1'b0}},IR_D[`sa]} ;


    MUX RS_EMUX(
        .in_0(MFRSD.Q),
        .in_1(SA),
        .A(IDCTRL.RS_ESel)
    );
    IDCTRL IDCTRL(.IR(IR_D),.CMPOut(CMP.Q));
    
    /**
     * EX
     */

    assign  ID_EX_reset = reset || STALLCTRL.stall;
    PLR #(160) ID_EX(
        .clock(clock),
        .reset(ID_EX_reset),
        .We(1),
        .d({
            IR_D,
            PC4_D,
            RS_EMUX.Q,
            MFRTD.Q,
            EXT.out
        }),
        .q({
            IR_E,
            PC4_E,
            RS_E,
            RT_E,
            EXT_E
        })
    );

    MUX4 MFRSE(
        .in_0(RS_E),
        .in_1(AO_M),
        .in_2(PC4_M),
        .in_3(WDMUX.Q),
        .A(ForwardCTRL.rsE)
    );

    MUX4 MFRTE(
        .in_0(RT_E),
        .in_1(AO_M),
        .in_2(PC4_M),
        .in_3(WDMUX.Q),
        .A(ForwardCTRL.rtE)
    );

    MUX ALUBMUX(
        .in_0(EXT_E),
        .in_1(MFRTE.Q),
        .A(EXCTRL.ALUBSel)
    );

    ALU ALU(
        .A(MFRSE.Q),
        .B(ALUBMUX.Q),
        .Op(EXCTRL.ALUOp)
    );
    MULTIPLIER MULTIPLIER(
        .A(MFRSE.Q),
        .B(MFRTE.Q),
        .Op(EXCTRL.MULOp)
    );
    MUX4 AO_MMUX(
        .in_0(ALU.C),
        .in_1(MULTIPLIER.HI),
        .in_2(MULTIPLIER.LO),
        .A(EXCTRL.AOSel)
    );

    EXCTRL EXCTRL(.IR(IR_E));

    /**
     * MEM 
     */

    PLR #(128) EX_MEM(
        .clock(clock),
        .reset(reset),
        .We(1),
        .d({
            IR_E,
            PC4_E,
            AO_MMUX.Q,
            MFRTE.Q
        }),
        .q({
            IR_M,
            PC4_M,
            AO_M,
            RT_M
        })
    );

    MUX MFRTM(
        .in_0(RT_M),
        .in_1(WDMUX.Q),
        .A(ForwardCTRL.rtM)
    );
    MEMCTRL MEMCTRL(.IR(IR_M));
    DM DM(
        .clock(clock),
        .A(AO_M[11:0]),// byte address
        .WD(MFRTM.Q),
        .We(MEMCTRL.DMWe),
        .BE(MEMCTRL.BE)
    );


    /**
     * WB 
     */


    PLR #(128) MEM_WB(
        .clock(clock),
        .reset(reset),
        .We(1),
        .d({
            IR_M,
            PC4_M,
            AO_M,
            DM.RD
        }),
        .q({
            IR_W,
            PC4_W,
            AO_W,
            DR_W
        })
    );

    WBCTRL WBCTRL(.IR(IR_W));

    LDEXT LDEXT(
        .DR(DR_W),
        .Op(WBCTRL.LDEXTOp),
        .BE(WBCTRL.LDEXTBE)
    );
    MUX4 #(5) A3MUX(
        .in_0(IR_W[`rt]),
        .in_1(IR_W[`rd]),
        .in_2(5'b11111),
        .A(WBCTRL.A3Sel)
    );

    MUX4 WDMUX(
        .in_0(LDEXT.out),
        .in_1(AO_W),
        .in_2(PC4_W),
        .A(WBCTRL.WDSel)
    );
endmodule
