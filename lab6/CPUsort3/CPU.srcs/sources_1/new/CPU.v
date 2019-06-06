`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 19:17:37
// Design Name: 
// Module Name: CPU
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


module CPU(
    input clk,
    input rst,
    input [31:0] MemData,
    input [4:0] reg_addr,
    output [31:0] MemAddr,
    output MemWrite,
    output [31:0] WriteData,
    output [31:0] reg_data,
    output [31:0] PC_out
    );
    wire PCWriteCond1,PCWriteCond2,MemRead,PCWrite,IorD,MemtoReg,IRWrite,ALUSrcA,RegWrite,RegDst,zero;
    wire [1:0] PCSource,ALUOp,ALUSrcB;
    wire [31:0] PCoutput,ALUout,MDRout,ReadData1,ReadData2,ALUresult,Aoutput,Boutput;
    wire [5:0] op;
    wire [4:0] rs,rt,rd;
    wire [15:0] immediate;
    wire [3:0] ALUctrl;
    wire [31:0] RegDstout,MemtoRegout,Aout,Bout,PCSourceout;
    PC Pc(PCSourceout,clk,rst,((zero & PCWriteCond1) | PCWrite | (~zero & PCWriteCond2)),PCoutput);
    Instruction_Register IR(MemData,clk,rst,IRWrite,op,rs,rt,rd,immediate);
    Control Ctrl(op,clk,rst,PCWriteCond1,PCWriteCond2,PCWrite,IorD,MemRead,MemWrite,MemtoReg,IRWrite,PCSource,ALUOp,ALUSrcB,ALUSrcA,RegWrite,RegDst);
    Reg32 MDR(MemData,clk,rst,MDRout);
    RegFile Registers(rs,rt,RegDstout,MemtoRegout,reg_addr,RegWrite,rst,clk,ReadData1,ReadData2,reg_data);
    Reg32 A(ReadData1,clk,rst,Aoutput);
    Reg32 B(ReadData2,clk,rst,Boutput);
    ALU_Control ALU_ctrl(ALUOp,immediate[5:0],op,ALUctrl);
    ALU ALu(ALUctrl,Aout,Bout,zero,ALUresult);
    Reg32 ALUOut(ALUresult,clk,rst,ALUout);
    MUX Iord({0,IorD},PCoutput,ALUout,,,MemAddr);
    MUX Regdst({0,RegDst},rt,rd,,,RegDstout);
    MUX Memtoreg({0,MemtoReg},ALUout,MDRout,,,MemtoRegout);
    MUX AlusrcA({0,ALUSrcA},PCoutput,Aoutput,,,Aout);
    MUX AlusrcB(ALUSrcB,Boutput,'d4,{16'b0,immediate},({16'b0,immediate}<<2),Bout);
    MUX Pcsource(PCSource,ALUresult,ALUout,{PCoutput[31:28],rs,rt,immediate,2'b00},,PCSourceout);
    assign WriteData = Boutput;
    assign PC_out = PCoutput;
endmodule
