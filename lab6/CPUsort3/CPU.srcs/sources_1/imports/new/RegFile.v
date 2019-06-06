`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/04/04 15:45:24
// Design Name: 
// Module Name: RegFile
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


module RegFile #(
parameter M = 5,
parameter N = 32)(
    input [M-1:0] ra0,
    input [M-1:0] ra1,
    input [M-1:0] wa,
    input [N-1:0] wd,
    input [M-1:0] reg_addr,
    input we,
    input rst,
    input clk,
    output [N-1:0] rd0,
    output [N-1:0] rd1,
    output [N-1:0] reg_data
    );
    reg [N-1:0] Reg [0:31];
    integer i;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            Reg[0] <= 'b0;
            Reg[1] <= 'b0;
            Reg[2] <= 'b0;
            Reg[3] <= 'b0;
            Reg[4] <= 'b0;
            Reg[5] <= 'b0;
            Reg[6] <= 'b0;
            Reg[7] <= 'b0;
            Reg[8] <= 'b0;
            Reg[9] <= 'b0;
            Reg[10] <= 'b0;
            Reg[11] <= 'b0;
            Reg[12] <= 'b0;
            Reg[13] <= 'b0;
            Reg[14] <= 'b0;
            Reg[15] <= 'b0;
            Reg[16] <= 'b0;
            Reg[17] <= 'b0;
            Reg[18] <= 'b0;
            Reg[19] <= 'b0;
            Reg[20] <= 'b0;
            Reg[21] <= 'b0;
            Reg[22] <= 'b0;
            Reg[23] <= 'b0;
            Reg[24] <= 'b0;
            Reg[25] <= 'b0;
            Reg[26] <= 'b0;
            Reg[27] <= 'b0;
            Reg[28] <= 'b0;
            Reg[29] <= 'b0;
            Reg[30] <= 'b0;
            Reg[31] <= 'b0;
        end
        else
        begin
            if(we == 1'b1)
            begin
                if(wa > 'b0)
                    Reg[wa] <= wd;
            end
            else
                Reg[wa] <= Reg[wa];
        end
    end
    assign rd0 = Reg[ra0];
    assign rd1 = Reg[ra1];
    assign reg_data = Reg[reg_addr];
    endmodule
