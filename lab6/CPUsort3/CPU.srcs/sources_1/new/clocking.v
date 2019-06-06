`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 22:15:23
// Design Name: 
// Module Name: clocking
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


module clocking(
    input clk,
    input reset,
    output pulse
    );
    reg [3:0] cnt;
    always@(posedge clk or posedge reset)
    begin
        if(reset)
            cnt <= 'd0;
        else
        begin
            if(cnt == 'd5)
                cnt<='d0;
            else
                cnt <= cnt + 1;
        end
    end
    assign pulse = (cnt >= 2)?1'b1:1'b0;
endmodule
