// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Mar 28 21:22:29 2019
// Host        : YC-YOGA running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/lyc/Vivado/lab2/DIV/DIV.sim/sim_1/synth/timing/xsim/DIV_tb_time_synth.v
// Design      : DIV
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* N = "4" *) (* State_Begin = "3'b001" *) (* State_Finish = "3'b100" *) 
(* State_Shift = "3'b010" *) 
(* NotValidForBitStream *)
module DIV
   (clock,
    reset,
    x,
    y,
    q,
    r,
    error,
    done,
    currentstate,
    nextstate,
    count,
    Data);
  input clock;
  input reset;
  input [3:0]x;
  input [3:0]y;
  output [3:0]q;
  output [3:0]r;
  output error;
  output done;
  output [2:0]currentstate;
  output [2:0]nextstate;
  output [3:0]count;
  output [7:0]Data;

  wire [7:0]Data;
  wire [2:1]Data0;
  wire [7:0]Data_OBUF;
  wire \Data_reg[0]_i_1_n_0 ;
  wire \Data_reg[0]_i_2_n_0 ;
  wire \Data_reg[1]_i_1_n_0 ;
  wire \Data_reg[1]_i_2_n_0 ;
  wire \Data_reg[2]_i_1_n_0 ;
  wire \Data_reg[2]_i_2_n_0 ;
  wire \Data_reg[3]_i_1_n_0 ;
  wire \Data_reg[3]_i_2_n_0 ;
  wire \Data_reg[4]_i_1_n_0 ;
  wire \Data_reg[5]_i_1_n_0 ;
  wire \Data_reg[6]_i_1_n_0 ;
  wire \Data_reg[7]_i_1_n_0 ;
  wire \Data_reg[7]_i_2_n_0 ;
  wire \Data_reg[7]_i_3_n_0 ;
  wire \Data_reg[7]_i_4_n_0 ;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [3:0]count;
  wire [0:0]count0;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire [3:0]count_OBUF;
  wire [2:0]currentstate;
  wire \currentstate[0]_i_2_n_0 ;
  wire \currentstate[1]_i_2_n_0 ;
  wire [2:0]currentstate_OBUF;
  wire done;
  wire done_OBUF;
  wire error;
  wire error_OBUF;
  wire error_OBUF_inst_i_2_n_0;
  wire [2:0]nextstate;
  wire [2:0]nextstate_OBUF;
  wire \nextstate_OBUF[0]_inst_i_2_n_0 ;
  wire \nextstate_OBUF[0]_inst_i_3_n_0 ;
  wire \nextstate_OBUF[0]_inst_i_4_n_0 ;
  wire \nextstate_OBUF[1]_inst_i_2_n_0 ;
  wire \nextstate_OBUF[1]_inst_i_3_n_0 ;
  wire \nextstate_OBUF[1]_inst_i_4_n_0 ;
  wire \nextstate_OBUF[1]_inst_i_5_n_0 ;
  wire [1:0]nextstate__0;
  wire [3:0]q;
  wire [3:0]q_OBUF;
  wire [3:0]r;
  wire [3:0]r_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [3:0]x;
  wire [3:0]x_IBUF;
  wire [3:0]y;
  wire [3:0]y_IBUF;

initial begin
 $sdf_annotate("DIV_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF \Data_OBUF[0]_inst 
       (.I(Data_OBUF[0]),
        .O(Data[0]));
  OBUF \Data_OBUF[1]_inst 
       (.I(Data_OBUF[1]),
        .O(Data[1]));
  OBUF \Data_OBUF[2]_inst 
       (.I(Data_OBUF[2]),
        .O(Data[2]));
  OBUF \Data_OBUF[3]_inst 
       (.I(Data_OBUF[3]),
        .O(Data[3]));
  OBUF \Data_OBUF[4]_inst 
       (.I(Data_OBUF[4]),
        .O(Data[4]));
  OBUF \Data_OBUF[5]_inst 
       (.I(Data_OBUF[5]),
        .O(Data[5]));
  OBUF \Data_OBUF[6]_inst 
       (.I(Data_OBUF[6]),
        .O(Data[6]));
  OBUF \Data_OBUF[7]_inst 
       (.I(Data_OBUF[7]),
        .O(Data[7]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[0] 
       (.CLR(1'b0),
        .D(\Data_reg[0]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[0]));
  LUT6 #(
    .INIT(64'h2F202F2F20202F20)) 
    \Data_reg[0]_i_1 
       (.I0(\Data_reg[0]_i_2_n_0 ),
        .I1(\nextstate_OBUF[0]_inst_i_2_n_0 ),
        .I2(currentstate_OBUF[0]),
        .I3(\Data_reg[7]_i_3_n_0 ),
        .I4(y_IBUF[3]),
        .I5(Data_OBUF[6]),
        .O(\Data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \Data_reg[0]_i_2 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[3]),
        .I4(x_IBUF[0]),
        .O(\Data_reg[0]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[1] 
       (.CLR(1'b0),
        .D(\Data_reg[1]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[1]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \Data_reg[1]_i_1 
       (.I0(\Data_reg[1]_i_2_n_0 ),
        .I1(\nextstate_OBUF[0]_inst_i_2_n_0 ),
        .I2(currentstate_OBUF[0]),
        .I3(Data_OBUF[0]),
        .O(\Data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \Data_reg[1]_i_2 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[3]),
        .I4(x_IBUF[1]),
        .O(\Data_reg[1]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[2] 
       (.CLR(1'b0),
        .D(\Data_reg[2]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[2]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \Data_reg[2]_i_1 
       (.I0(\Data_reg[2]_i_2_n_0 ),
        .I1(\nextstate_OBUF[0]_inst_i_2_n_0 ),
        .I2(currentstate_OBUF[0]),
        .I3(Data_OBUF[1]),
        .O(\Data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \Data_reg[2]_i_2 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[3]),
        .I4(x_IBUF[2]),
        .O(\Data_reg[2]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[3] 
       (.CLR(1'b0),
        .D(\Data_reg[3]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[3]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \Data_reg[3]_i_1 
       (.I0(\Data_reg[3]_i_2_n_0 ),
        .I1(\nextstate_OBUF[0]_inst_i_2_n_0 ),
        .I2(currentstate_OBUF[0]),
        .I3(Data_OBUF[2]),
        .O(\Data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \Data_reg[3]_i_2 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[3]),
        .I4(x_IBUF[3]),
        .O(\Data_reg[3]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[4] 
       (.CLR(1'b0),
        .D(\Data_reg[4]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[4]));
  LUT6 #(
    .INIT(64'h2822882888888888)) 
    \Data_reg[4]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(Data_OBUF[3]),
        .I2(Data_OBUF[6]),
        .I3(y_IBUF[3]),
        .I4(\Data_reg[7]_i_3_n_0 ),
        .I5(y_IBUF[0]),
        .O(\Data_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[5] 
       (.CLR(1'b0),
        .D(\Data_reg[5]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[5]));
  LUT6 #(
    .INIT(64'hA8AA88A808008808)) 
    \Data_reg[5]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(Data_OBUF[4]),
        .I2(Data_OBUF[6]),
        .I3(y_IBUF[3]),
        .I4(\Data_reg[7]_i_3_n_0 ),
        .I5(Data0[1]),
        .O(\Data_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \Data_reg[5]_i_2 
       (.I0(y_IBUF[0]),
        .I1(Data_OBUF[3]),
        .I2(y_IBUF[1]),
        .I3(Data_OBUF[4]),
        .O(Data0[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[6] 
       (.CLR(1'b0),
        .D(\Data_reg[6]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[6]));
  LUT6 #(
    .INIT(64'hA8AA88A808008808)) 
    \Data_reg[6]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(Data_OBUF[5]),
        .I2(Data_OBUF[6]),
        .I3(y_IBUF[3]),
        .I4(\Data_reg[7]_i_3_n_0 ),
        .I5(Data0[2]),
        .O(\Data_reg[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h40F4BF0BBF0B40F4)) 
    \Data_reg[6]_i_2 
       (.I0(Data_OBUF[3]),
        .I1(y_IBUF[0]),
        .I2(y_IBUF[1]),
        .I3(Data_OBUF[4]),
        .I4(y_IBUF[2]),
        .I5(Data_OBUF[5]),
        .O(Data0[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \Data_reg[7] 
       (.CLR(1'b0),
        .D(\Data_reg[7]_i_1_n_0 ),
        .G(\Data_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(Data_OBUF[7]));
  LUT5 #(
    .INIT(32'h08888280)) 
    \Data_reg[7]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(Data_OBUF[6]),
        .I2(y_IBUF[3]),
        .I3(\Data_reg[7]_i_3_n_0 ),
        .I4(\Data_reg[7]_i_4_n_0 ),
        .O(\Data_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \Data_reg[7]_i_2 
       (.I0(currentstate_OBUF[1]),
        .I1(currentstate_OBUF[0]),
        .I2(currentstate_OBUF[2]),
        .O(\Data_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hDF0DFFFF0000DF0D)) 
    \Data_reg[7]_i_3 
       (.I0(y_IBUF[0]),
        .I1(Data_OBUF[3]),
        .I2(y_IBUF[1]),
        .I3(Data_OBUF[4]),
        .I4(y_IBUF[2]),
        .I5(Data_OBUF[5]),
        .O(\Data_reg[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB2BBBBBB2222B2BB)) 
    \Data_reg[7]_i_4 
       (.I0(Data_OBUF[5]),
        .I1(y_IBUF[2]),
        .I2(Data_OBUF[3]),
        .I3(y_IBUF[0]),
        .I4(y_IBUF[1]),
        .I5(Data_OBUF[4]),
        .O(\Data_reg[7]_i_4_n_0 ));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_OBUF[0]),
        .O(count0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[1]_i_1 
       (.I0(count_OBUF[0]),
        .I1(count_OBUF[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \count[2]_i_1 
       (.I0(count_OBUF[1]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[2]),
        .O(\count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h02)) 
    \count[3]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(currentstate_OBUF[2]),
        .I2(currentstate_OBUF[0]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \count[3]_i_2 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[3]),
        .O(\count[3]_i_2_n_0 ));
  OBUF \count_OBUF[0]_inst 
       (.I(count_OBUF[0]),
        .O(count[0]));
  OBUF \count_OBUF[1]_inst 
       (.I(count_OBUF[1]),
        .O(count[1]));
  OBUF \count_OBUF[2]_inst 
       (.I(count_OBUF[2]),
        .O(count[2]));
  OBUF \count_OBUF[3]_inst 
       (.I(count_OBUF[3]),
        .O(count[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(count0),
        .Q(count_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\count[1]_i_1_n_0 ),
        .Q(count_OBUF[1]));
  FDPE #(
    .INIT(1'b1)) 
    \count_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .D(\count[2]_i_1_n_0 ),
        .PRE(reset_IBUF),
        .Q(count_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(\count[3]_i_2_n_0 ),
        .Q(count_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hFFFEF00F)) 
    \currentstate[0]_i_1 
       (.I0(\currentstate[0]_i_2_n_0 ),
        .I1(\nextstate_OBUF[0]_inst_i_2_n_0 ),
        .I2(currentstate_OBUF[2]),
        .I3(currentstate_OBUF[1]),
        .I4(currentstate_OBUF[0]),
        .O(nextstate__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \currentstate[0]_i_2 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[3]),
        .I2(count_OBUF[0]),
        .I3(count_OBUF[1]),
        .O(\currentstate[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \currentstate[1]_i_1 
       (.I0(\nextstate_OBUF[0]_inst_i_2_n_0 ),
        .I1(\currentstate[1]_i_2_n_0 ),
        .I2(currentstate_OBUF[2]),
        .I3(currentstate_OBUF[1]),
        .I4(currentstate_OBUF[0]),
        .I5(\nextstate_OBUF[1]_inst_i_5_n_0 ),
        .O(nextstate__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \currentstate[1]_i_2 
       (.I0(count_OBUF[3]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[2]),
        .I3(count_OBUF[1]),
        .O(\currentstate[1]_i_2_n_0 ));
  OBUF \currentstate_OBUF[0]_inst 
       (.I(currentstate_OBUF[0]),
        .O(currentstate[0]));
  OBUF \currentstate_OBUF[1]_inst 
       (.I(currentstate_OBUF[1]),
        .O(currentstate[1]));
  OBUF \currentstate_OBUF[2]_inst 
       (.I(currentstate_OBUF[2]),
        .O(currentstate[2]));
  (* FSM_ENCODED_STATES = "State_Begin:001,State_Shift:010,State_Finish:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \currentstate_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(nextstate__0[0]),
        .PRE(reset_IBUF),
        .Q(currentstate_OBUF[0]));
  (* FSM_ENCODED_STATES = "State_Begin:001,State_Shift:010,State_Finish:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \currentstate_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nextstate__0[1]),
        .Q(currentstate_OBUF[1]));
  (* FSM_ENCODED_STATES = "State_Begin:001,State_Shift:010,State_Finish:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \currentstate_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nextstate_OBUF[2]),
        .Q(currentstate_OBUF[2]));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    done_OBUF_inst_i_1
       (.I0(currentstate_OBUF[2]),
        .I1(currentstate_OBUF[0]),
        .I2(currentstate_OBUF[1]),
        .O(done_OBUF));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    error_OBUF_inst_i_1
       (.I0(currentstate_OBUF[1]),
        .I1(currentstate_OBUF[2]),
        .I2(currentstate_OBUF[0]),
        .I3(y_IBUF[3]),
        .I4(error_OBUF_inst_i_2_n_0),
        .I5(y_IBUF[2]),
        .O(error_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    error_OBUF_inst_i_2
       (.I0(y_IBUF[0]),
        .I1(y_IBUF[1]),
        .O(error_OBUF_inst_i_2_n_0));
  OBUF \nextstate_OBUF[0]_inst 
       (.I(nextstate_OBUF[0]),
        .O(nextstate[0]));
  LUT6 #(
    .INIT(64'hAAAAAAA2FFFFFFFF)) 
    \nextstate_OBUF[0]_inst_i_1 
       (.I0(\nextstate_OBUF[1]_inst_i_4_n_0 ),
        .I1(count_OBUF[2]),
        .I2(count_OBUF[1]),
        .I3(\nextstate_OBUF[0]_inst_i_2_n_0 ),
        .I4(\nextstate_OBUF[0]_inst_i_3_n_0 ),
        .I5(\nextstate_OBUF[0]_inst_i_4_n_0 ),
        .O(nextstate_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \nextstate_OBUF[0]_inst_i_2 
       (.I0(y_IBUF[1]),
        .I1(y_IBUF[0]),
        .I2(y_IBUF[3]),
        .I3(y_IBUF[2]),
        .O(\nextstate_OBUF[0]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \nextstate_OBUF[0]_inst_i_3 
       (.I0(count_OBUF[0]),
        .I1(count_OBUF[3]),
        .O(\nextstate_OBUF[0]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h16)) 
    \nextstate_OBUF[0]_inst_i_4 
       (.I0(currentstate_OBUF[0]),
        .I1(currentstate_OBUF[1]),
        .I2(currentstate_OBUF[2]),
        .O(\nextstate_OBUF[0]_inst_i_4_n_0 ));
  OBUF \nextstate_OBUF[1]_inst 
       (.I(nextstate_OBUF[1]),
        .O(nextstate[1]));
  LUT6 #(
    .INIT(64'h1000FFFF10000000)) 
    \nextstate_OBUF[1]_inst_i_1 
       (.I0(\nextstate_OBUF[1]_inst_i_2_n_0 ),
        .I1(\nextstate_OBUF[1]_inst_i_3_n_0 ),
        .I2(count_OBUF[2]),
        .I3(\nextstate_OBUF[1]_inst_i_4_n_0 ),
        .I4(currentstate_OBUF[0]),
        .I5(\nextstate_OBUF[1]_inst_i_5_n_0 ),
        .O(nextstate_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \nextstate_OBUF[1]_inst_i_2 
       (.I0(count_OBUF[3]),
        .I1(count_OBUF[1]),
        .O(\nextstate_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \nextstate_OBUF[1]_inst_i_3 
       (.I0(count_OBUF[0]),
        .I1(y_IBUF[2]),
        .I2(y_IBUF[3]),
        .I3(y_IBUF[0]),
        .I4(y_IBUF[1]),
        .O(\nextstate_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \nextstate_OBUF[1]_inst_i_4 
       (.I0(currentstate_OBUF[1]),
        .I1(currentstate_OBUF[2]),
        .O(\nextstate_OBUF[1]_inst_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h44444440)) 
    \nextstate_OBUF[1]_inst_i_5 
       (.I0(currentstate_OBUF[2]),
        .I1(currentstate_OBUF[1]),
        .I2(count_OBUF[3]),
        .I3(count_OBUF[2]),
        .I4(count_OBUF[1]),
        .O(\nextstate_OBUF[1]_inst_i_5_n_0 ));
  OBUF \nextstate_OBUF[2]_inst 
       (.I(nextstate_OBUF[2]),
        .O(nextstate[2]));
  LUT6 #(
    .INIT(64'h0000000022222226)) 
    \nextstate_OBUF[2]_inst_i_1 
       (.I0(currentstate_OBUF[2]),
        .I1(currentstate_OBUF[1]),
        .I2(count_OBUF[3]),
        .I3(count_OBUF[2]),
        .I4(count_OBUF[1]),
        .I5(currentstate_OBUF[0]),
        .O(nextstate_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q[-1111111108] 
       (.CLR(1'b0),
        .D(Data_OBUF[3]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(q_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q[-1111111109] 
       (.CLR(1'b0),
        .D(Data_OBUF[2]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(q_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q[-1111111110] 
       (.CLR(1'b0),
        .D(Data_OBUF[1]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(q_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \q[-1111111111] 
       (.CLR(1'b0),
        .D(Data_OBUF[0]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(q_OBUF[0]));
  OBUF \q_OBUF[0]_inst 
       (.I(q_OBUF[0]),
        .O(q[0]));
  OBUF \q_OBUF[1]_inst 
       (.I(q_OBUF[1]),
        .O(q[1]));
  OBUF \q_OBUF[2]_inst 
       (.I(q_OBUF[2]),
        .O(q[2]));
  OBUF \q_OBUF[3]_inst 
       (.I(q_OBUF[3]),
        .O(q[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r[-1111111108] 
       (.CLR(1'b0),
        .D(Data_OBUF[7]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(r_OBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r[-1111111109] 
       (.CLR(1'b0),
        .D(Data_OBUF[6]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(r_OBUF[2]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r[-1111111110] 
       (.CLR(1'b0),
        .D(Data_OBUF[5]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(r_OBUF[1]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r[-1111111111] 
       (.CLR(1'b0),
        .D(Data_OBUF[4]),
        .G(done_OBUF),
        .GE(1'b1),
        .Q(r_OBUF[0]));
  OBUF \r_OBUF[0]_inst 
       (.I(r_OBUF[0]),
        .O(r[0]));
  OBUF \r_OBUF[1]_inst 
       (.I(r_OBUF[1]),
        .O(r[1]));
  OBUF \r_OBUF[2]_inst 
       (.I(r_OBUF[2]),
        .O(r[2]));
  OBUF \r_OBUF[3]_inst 
       (.I(r_OBUF[3]),
        .O(r[3]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \x_IBUF[0]_inst 
       (.I(x[0]),
        .O(x_IBUF[0]));
  IBUF \x_IBUF[1]_inst 
       (.I(x[1]),
        .O(x_IBUF[1]));
  IBUF \x_IBUF[2]_inst 
       (.I(x[2]),
        .O(x_IBUF[2]));
  IBUF \x_IBUF[3]_inst 
       (.I(x[3]),
        .O(x_IBUF[3]));
  IBUF \y_IBUF[0]_inst 
       (.I(y[0]),
        .O(y_IBUF[0]));
  IBUF \y_IBUF[1]_inst 
       (.I(y[1]),
        .O(y_IBUF[1]));
  IBUF \y_IBUF[2]_inst 
       (.I(y[2]),
        .O(y_IBUF[2]));
  IBUF \y_IBUF[3]_inst 
       (.I(y[3]),
        .O(y_IBUF[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
