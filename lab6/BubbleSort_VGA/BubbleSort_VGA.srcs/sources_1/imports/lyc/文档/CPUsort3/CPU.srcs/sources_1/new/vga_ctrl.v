`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/29 23:01:42
// Design Name: 
// Module Name: vga_ctrl
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


module VGA_Control(
    input CLK50MHZ,
    input rst,
    input [3:0] data1,
    input [3:0] data2,
    input [3:0] data3,
    input [3:0] data4,
    input [3:0] data5,
    input [3:0] data6,
    input [3:0] data7,
    input [3:0] data8,
    output VGA_HS,
    output VGA_VS,
    output [3:0] VGA_R,
    output [3:0] VGA_G,
    output [3:0] VGA_B
    );
    reg [10:0] x_counter,y_counter;
    reg [11:0] RGBX;
    wire [10:0] rom_add;
    wire [3:0] row_add;
    wire [2:0] bit_add;
    wire [7:0] temp_data;
    reg [7:0] char_add;
    wire bit_color;
    wire text_on;
    
    font_rom data_rom(CLK50MHZ,rom_add,temp_data);
    
    always@(posedge CLK50MHZ)
    begin
        if(x_counter == 1040)
        begin
            x_counter <= 0;
            if(y_counter == 666)
                y_counter <= 0;
            else
                y_counter <= y_counter + 1;
        end
        else
            x_counter <= x_counter + 1;
    end
    
    
    
    always@(*)
    begin
        if(text_on && bit_color)
            RGBX = 12'h00f;
        else RGBX = 12'hff0;
    end
    
    always@(*)
        case(x_counter[10:4])
            7'b0010000: char_add = {3'b011,data1};
            7'b0010001: char_add = {3'b011,data2};
            7'b0010010: char_add = {3'b011,data3};
            7'b0010011: char_add = {3'b011,data4};
            7'b0010100: char_add = {3'b011,data5};
            7'b0010101: char_add = {3'b011,data6};
            7'b0010110: char_add = {3'b011,data7};
            7'b0010111: char_add = {3'b011,data8};
        endcase
    
    assign text_on = (y_counter[10:5] == 8) && (x_counter[10:4] > 15) && (x_counter[10:4] < 24);
    assign row_add = y_counter[4:1];
    assign bit_add = x_counter[3:1];
    assign rom_add = {char_add, row_add};
    assign bit_color = temp_data[~bit_add];
    
    assign VGA_R = RGBX[3:0];
    assign VGA_G = RGBX[7:4];
    assign VGA_B = RGBX[11:8];
    assign VGA_HS = (x_counter > 856) && (x_counter < 976);
    assign VGA_VS = (y_counter > 637) && (y_counter < 643);
endmodule
