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


module top_module
(
    input reset,
    input continue,
    input step,
    input probe,
    input inc,
    input dec,
    input read,
    input CLK100MHZ,
    input [2 : 0] Mem_Write_Address,
    input [3 : 0] Mem_Write_Data,
    input Mem_Write_Enable,
    output [15 : 0] led,
    output [7 : 0] an,
    output [6 : 0] seg,
    output VGA_HS,
    output VGA_VS,
    output [3 : 0] VGA_R,
    output [3 : 0] VGA_G,
    output [3 : 0] VGA_B
);
    wire [31 : 0] RegData,MemAddress,MemData,adata;
    wire MemWrite;
    wire run, clock, CLK50MHZ;
    wire [31 : 0] ProbePC,ProbeMemData,ProbeRegData;
    wire [ 7 : 0] ProbeAddress,aaddr;
    wire [31 : 0] dpraddr;
    wire [ 3 : 0] data1,data2,data3,data4,data5,data6,data7,data8,regdata;
    reg  [ 2 : 0] regaddr;
    
    ClockingWizrad_0    CLK100MHZ_to_50MHZ (CLK50MHZ,CLK100MHZ);
    clocking            CLK                (CLK50MHZ,0,clock);
    MulticycleCPU       CPU                (clock, reset, run, MemData, ProbeAddress, MemWrite, MemAddress, RegData, ProbePC, ProbeRegData);
    Memory              MEM                (.a(aaddr),.d(adata),.dpra(dpraddr),.clk(clock),.we(MemWrite | Mem_Write_Enable),.spo(MemData),.dpo(ProbeMemData));
    DebugandDisplayUnit DDU                (CLK100MHZ, reset, continue, step, probe, inc, dec, ProbePC, ProbeMemData, ProbeRegData, run, clock, ProbeAddress, led, an, seg);
    Buffer              BUFF               (regaddr,regdata,clock,read,0,data1,data2,data3,data4,data5,data6,data7,data8);
    VGA_Control         VGA                (CLK50MHZ,0,data1,data2,data3,data4,data5,data6,data7,data8,VGA_HS,VGA_VS,VGA_R,VGA_G,VGA_B);
    
    always@(posedge clock)
    begin
        regaddr <= regaddr + 1;
    end
    
    assign   aaddr = Mem_Write_Enable ? ({5'b0, Mem_Write_Address} + 1) : MemAddress[9 : 2];
    assign   adata = Mem_Write_Enable ? {24'b0, Mem_Write_Data} : RegData;
    assign dpraddr = read ? ({29'b0, regaddr} + 1) : ProbeAddress;
    assign regdata = read ? ProbeMemData[3:0] : 'b0;
endmodule