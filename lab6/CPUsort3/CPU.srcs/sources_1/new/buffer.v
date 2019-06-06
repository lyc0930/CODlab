`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 21:54:07
// Design Name: 
// Module Name: buffer
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


module buffer#(
parameter M = 3,
parameter N = 4)(
    input [M-1:0] wa,
    input [N-1:0] wd,
    input clk,
    input we,
    input rst,
    output [N-1:0] data1,
    output [N-1:0] data2,
    output [N-1:0] data3,
    output [N-1:0] data4,
    output [N-1:0] data5,
    output [N-1:0] data6,
    output [N-1:0] data7,
    output [N-1:0] data8
    );
    reg [N-1:0] Reg[0:7];
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            Reg[0] = 'b0;
            Reg[1] = 'b0;
            Reg[2] = 'b0;
            Reg[3] = 'b0;
            Reg[4] = 'b0;   
            Reg[5] = 'b0;   
            Reg[6] = 'b0;   
            Reg[7] = 'b0;               
        end
        else
        begin
            if(we == 1'b1)
                Reg[wa] <= wd;
        end
    end
    assign data1 = Reg[0];
    assign data2 = Reg[1];
    assign data3 = Reg[2];
    assign data4 = Reg[3];
    assign data5 = Reg[4];
    assign data6 = Reg[5];
    assign data7 = Reg[6];
    assign data8 = Reg[7];
endmodule
