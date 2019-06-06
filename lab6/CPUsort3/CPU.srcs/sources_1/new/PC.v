`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 22:23:41
// Design Name: 
// Module Name: PC
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


module PC(
    input [31:0] PCinput,
    input clk,
    input rst,
    input we,
    output reg [31:0] PCoutput,
    output [31:0] PC_out
    );
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            PCoutput <= 'b0;
        end
        else
        begin
            if(we == 1)
            begin
                PCoutput <= PCinput;
            end
            else
            begin
                PCoutput <= PCoutput;
            end
        end
    end
    assign PC_out = PCoutput;
endmodule
