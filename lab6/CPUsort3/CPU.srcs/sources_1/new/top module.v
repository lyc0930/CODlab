`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/07 21:11:53
// Design Name: 
// Module Name: top module
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


module top_module(
    input rst,
    input cont,
    input step,
    input mem,
    input inc,
    input dec,
    input read,
    input CLK100MHZ,
    input [2:0] writememaddr,
    input [3:0] writememdata,
    input writemem,
    output [15:0] led,
    output [7:0] an,
    output [6:0] seg,
    output VGA_HS,
    output VGA_VS,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B
    );
    wire [31:0] WriteData,MemAddr,MemData,adata;
    wire MemWrite;
    wire run, clk,CLK50MHZ;
    wire [31:0] PC_out,mem_data,reg_data;
    wire [7:0] addr,aaddr;
    wire [31:0] dpraddr;
    wire [3:0] data1,data2,data3,data4,data5,data6,data7,data8,regdata;
    reg [2:0] regaddr;
    clk_wiz_1 (CLK50MHZ,CLK100MHZ);
    clocking (CLK50MHZ,0,clk);
    CPU CPU(clk & run,rst,MemData,addr,MemAddr,MemWrite,WriteData,reg_data,PC_out);
    dist_mem_gen_0 Memory(.a(/*MemAddr[9:2]*/aaddr),.d(/*WriteData*/adata),.dpra(dpraddr),.clk(clk),.we(MemWrite | writemem),.spo(MemData),.dpo(mem_data));
    DDU DDU(clk,rst,cont,step,mem,inc,dec,PC_out,mem_data,reg_data,MemAddr,run,addr,led,an,seg);
    buffer buff(regaddr,regdata,clk,read,0,data1,data2,data3,data4,data5,data6,data7,data8);
    vga_ctrl VGA(CLK50MHZ,0,data1,data2,data3,data4,data5,data6,data7,data8,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);
    
    always@(posedge clk)
    begin
        regaddr <= regaddr + 1;
    end
    assign aaddr = writemem ? ({5'b0,writememaddr} + 1) : MemAddr[9:2];
    assign adata = writemem ? {24'b0,writememdata} : WriteData;
    assign dpraddr = read ? ({29'b0,regaddr} + 1) : addr;
    assign regdata = read ? mem_data[3:0] : 'b0;
endmodule