`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/03/20 20:28:04
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [3:0] s,
    input [31:0] a,
    input [31:0] b,
    output reg zero,
    output reg [31:0] y
    );
    parameter ADD = 4'b0000;
    parameter SUB = 4'b0001;
    parameter AND = 4'b0010;
    parameter OR = 4'b0011;
    parameter XOR = 4'b0100;
    parameter NOR = 4'b0101;
    parameter SLT = 4'b0110;

    reg c;
    reg[5:0] b1;
    always@(*)
    begin
        case(s)
            ADD: //add
            begin
                y = a + b;
                zero = (y == 'b0)? 1'b1 : 1'b0;
            end
            SUB: //sub
            begin
                y = a - b;
                zero = (y == 'b0)? 1'b1 : 1'b0;
            end
            AND: //and
            begin
                y = a & b;
                zero = (y == 'b0)? 1'b1 : 1'b0;
            end
            OR: //or
            begin
                y = a | b;
                zero = (y == 'b0)? 1'b1 : 1'b0;
            end
            XOR: //xor
            begin
                y = a ^ b;
                zero = (y == 'b0)? 1'b1 : 1'b0;
            end
            NOR: //nor
            begin
                y = ~(a | b);
                zero = (y == 'b0)? 1'b1 : 1'b0;
            end
            SLT:
                y = (a < b) ? 1'b1 : 1'b0;
        endcase
   end 
endmodule
