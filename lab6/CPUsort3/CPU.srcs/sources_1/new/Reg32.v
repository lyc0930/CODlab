`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/05 22:12:33
// Design Name: 
// Module Name: Reg32
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


module Reg32(
    input [31:0] In_data,
    input clk,
    input rst,
    output reg [31:0] Out_data
    );
    
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            Out_data <= 'b0;
        else
            Out_data <= In_data;
    end
    
endmodule
