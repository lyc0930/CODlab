`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/08 20:21:03
// Design Name: 
// Module Name: DDU
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


module DDU(
    input clk,
    input rst,
    input cont,
    input step,
    input mem,
    input inc,
    input dec,
    input [31:0] PC,
    input [31:0] mem_data,
    input [31:0] reg_data,
    input [31:0] MemAddr,
    output run,
    output reg [7:0] addr,
    output [15:0] led,
    output [7:0] an,
    output [6:0] seg
    );
    
    reg [23:0] count0,count1,count2,count3;
    wire [2:0] mark;
    wire [3:0] segdata;
    wire [7:0] en_inc,en_dec;
    wire [31:0] data;
    
    decoder A(segdata,seg[6:0]);
    
    always @(posedge clk)
    begin
        if(rst) 
            count0 <= 'b0;
        else if(step == 0) 
            count0 <= 'b0;
        else if(count0 == 24'd400000) 
            count0 <= 'b0;
        else 
            count0 <= count0 + 23'd1;
    end
    assign run = cont | (count0 == 24'd1);
    
    always @(posedge clk)
    begin
        if(rst) 
            count1 <= 'b0;
        else if(inc == 0) 
            count1 <= 'b0;
        else if(count1 == 24'd10000000) 
            count1 <= 'b0;
        else 
            count1 <= count1 + 24'd1;
    end
    assign en_inc = (count1 == 24'd1000000);
    
    always @(posedge clk)
    begin
        if(rst) 
            count2 <= 'b0;
        else if(dec == 0) 
            count2 <= 'b0;
        else if(count2 == 24'd10000000) 
            count2 <= 'b0;
        else 
            count2 <= count2 + 24'd1;
    end
    assign en_dec = (count2 == 24'd1000000);
    
    always @(posedge clk)
    begin
        if(rst) 
            count3 <= 24'd0;
        else if(count3 == 24'd80000) 
            count3 <=  24'd0;
        else 
            count3 <= count3 + 24'd1;
    end
    
    always @(posedge clk)
    begin
        if(rst) 
            addr <= 'b0;
        else if(en_inc) 
            addr <= addr + 8'd1;
        else if(en_dec) 
            addr <= addr - 8'd1;
    end
    
    assign led = {addr,PC[9:2]};
    assign data = mem ? mem_data : reg_data;
    assign mark = (count3 < 24'd10000) ? 3'd0 : (count3 < 24'd20000) ? 3'd1 : (count3 < 24'd30000) ? 3'd2 : (count3 < 24'd40000) ? 3'd3 : (count3 < 24'd50000) ? 3'd4: (count3 < 24'd60000) ? 3'd5 : (count3 < 24'd70000)? 3'd6 : 3'd7; 
    assign segdata = (mark == 3'd0) ? data[3:0] : (mark == 3'd1) ? data[7:4] : (mark == 3'd2) ? data[11:8] : (mark == 3'd3) ? data[15:12] : (mark == 3'd4) ? data[19:16] : (mark == 3'd5) ? data[23:20] : (mark == 3'd6) ? data[27:24] : data[31:28];
    assign an[0] = ~(mark == 3'd0);
    assign an[1] = ~(mark == 3'd1);
    assign an[2] = ~(mark == 3'd2);
    assign an[3] = ~(mark == 3'd3);
    assign an[4] = ~(mark == 3'd4);
    assign an[5] = ~(mark == 3'd5); 
    assign an[6] = ~(mark == 3'd6);
    assign an[7] = ~(mark == 3'd7);
endmodule
