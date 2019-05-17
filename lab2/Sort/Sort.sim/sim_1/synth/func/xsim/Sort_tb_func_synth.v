// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Mar 28 20:58:13 2019
// Host        : YC-YOGA running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/lyc/Vivado/lab2/Sort/Sort.sim/sim_1/synth/func/xsim/Sort_tb_func_synth.v
// Design      : Sort
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DIGIT = "4" *) (* State_012Inorder = "3'b100" *) (* State_01Inorder = "3'b010" *) 
(* State_Disorder = "3'b001" *) 
(* NotValidForBitStream *)
module Sort
   (x0,
    x1,
    x2,
    x3,
    reset,
    clock,
    s0,
    s1,
    s2,
    s3,
    done);
  input [3:0]x0;
  input [3:0]x1;
  input [3:0]x2;
  input [3:0]x3;
  input reset;
  input clock;
  output [3:0]s0;
  output [3:0]s1;
  output [3:0]s2;
  output [3:0]s3;
  output done;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire \count[3]_i_1_n_0 ;
  wire [3:0]count_reg__0;
  wire \currentstate_reg_n_0_[0] ;
  wire \currentstate_reg_n_0_[1] ;
  wire \currentstate_reg_n_0_[2] ;
  wire done;
  wire done_OBUF;
  wire done_OBUF_inst_i_2_n_0;
  wire done_OBUF_inst_i_3_n_0;
  wire [2:0]nextstate;
  wire \nextstate_reg[0]_i_1_n_0 ;
  wire \nextstate_reg[1]_i_1_n_0 ;
  wire \nextstate_reg[2]_i_1_n_0 ;
  wire \nextstate_reg[2]_i_2_n_0 ;
  wire \nextstate_reg[2]_i_3_n_0 ;
  wire \nextstate_reg[2]_i_4_n_0 ;
  wire \nextstate_reg[2]_i_5_n_0 ;
  wire [3:0]p_0_in;
  wire r0;
  wire \r0_reg[0]_i_1_n_0 ;
  wire \r0_reg[1]_i_1_n_0 ;
  wire \r0_reg[2]_i_1_n_0 ;
  wire \r0_reg[3]_i_1_n_0 ;
  wire \r0_reg[3]_i_3_n_0 ;
  wire \r0_reg[3]_i_4_n_0 ;
  wire r1;
  wire \r1_reg[0]_i_1_n_0 ;
  wire \r1_reg[1]_i_1_n_0 ;
  wire \r1_reg[2]_i_1_n_0 ;
  wire \r1_reg[3]_i_1_n_0 ;
  wire r2;
  wire \r2_reg[0]_i_1_n_0 ;
  wire \r2_reg[1]_i_1_n_0 ;
  wire \r2_reg[2]_i_1_n_0 ;
  wire \r2_reg[3]_i_1_n_0 ;
  wire r3;
  wire \r3_reg[0]_i_1_n_0 ;
  wire \r3_reg[1]_i_1_n_0 ;
  wire \r3_reg[2]_i_1_n_0 ;
  wire \r3_reg[3]_i_1_n_0 ;
  wire reset;
  wire reset_IBUF;
  wire [3:0]s0;
  wire [3:0]s0_OBUF;
  wire [3:0]s1;
  wire [3:0]s1_OBUF;
  wire [3:0]s2;
  wire [3:0]s2_OBUF;
  wire [3:0]s3;
  wire [3:0]s3_OBUF;
  wire [3:0]x0;
  wire [3:0]x0_IBUF;
  wire [3:0]x1;
  wire [3:0]x1_IBUF;
  wire [3:0]x2;
  wire [3:0]x2_IBUF;
  wire [3:0]x3;
  wire [3:0]x3_IBUF;

  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(count_reg__0[0]),
        .I1(count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_1 
       (.I0(count_reg__0[2]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .O(p_0_in[2]));
  LUT3 #(
    .INIT(8'hEF)) 
    \count[3]_i_1 
       (.I0(\currentstate_reg_n_0_[0] ),
        .I1(\currentstate_reg_n_0_[1] ),
        .I2(\currentstate_reg_n_0_[2] ),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \count[3]_i_2 
       (.I0(count_reg__0[3]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[1]),
        .I3(count_reg__0[2]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[0]),
        .Q(count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[1]),
        .Q(count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[2]),
        .Q(count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\count[3]_i_1_n_0 ),
        .CLR(reset_IBUF),
        .D(p_0_in[3]),
        .Q(count_reg__0[3]));
  (* FSM_ENCODED_STATES = "State_01Inorder:010,State_012Inorder:100,State_Disorder:001" *) 
  FDPE #(
    .INIT(1'b1)) 
    \currentstate_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(nextstate[0]),
        .PRE(reset_IBUF),
        .Q(\currentstate_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "State_01Inorder:010,State_012Inorder:100,State_Disorder:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \currentstate_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nextstate[1]),
        .Q(\currentstate_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "State_01Inorder:010,State_012Inorder:100,State_Disorder:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \currentstate_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nextstate[2]),
        .Q(\currentstate_reg_n_0_[2] ));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    done_OBUF_inst_i_1
       (.I0(done_OBUF_inst_i_2_n_0),
        .I1(\currentstate_reg_n_0_[2] ),
        .I2(\currentstate_reg_n_0_[1] ),
        .I3(\currentstate_reg_n_0_[0] ),
        .O(done_OBUF));
  LUT5 #(
    .INIT(32'hB2BB2222)) 
    done_OBUF_inst_i_2
       (.I0(s3_OBUF[3]),
        .I1(s2_OBUF[3]),
        .I2(s3_OBUF[2]),
        .I3(s2_OBUF[2]),
        .I4(done_OBUF_inst_i_3_n_0),
        .O(done_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hDDFD00F0FFFFDDFD)) 
    done_OBUF_inst_i_3
       (.I0(s2_OBUF[0]),
        .I1(s3_OBUF[0]),
        .I2(s3_OBUF[2]),
        .I3(s2_OBUF[2]),
        .I4(s3_OBUF[1]),
        .I5(s2_OBUF[1]),
        .O(done_OBUF_inst_i_3_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_reg[0] 
       (.CLR(1'b0),
        .D(\nextstate_reg[0]_i_1_n_0 ),
        .G(\nextstate_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFEC3FEF3)) 
    \nextstate_reg[0]_i_1 
       (.I0(\nextstate_reg[2]_i_3_n_0 ),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(\currentstate_reg_n_0_[2] ),
        .I3(\currentstate_reg_n_0_[1] ),
        .I4(done_OBUF_inst_i_2_n_0),
        .O(\nextstate_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_reg[1] 
       (.CLR(1'b0),
        .D(\nextstate_reg[1]_i_1_n_0 ),
        .G(\nextstate_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \nextstate_reg[1]_i_1 
       (.I0(\currentstate_reg_n_0_[0] ),
        .I1(\currentstate_reg_n_0_[1] ),
        .I2(\currentstate_reg_n_0_[2] ),
        .O(\nextstate_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \nextstate_reg[2] 
       (.CLR(1'b0),
        .D(\nextstate_reg[2]_i_1_n_0 ),
        .G(\nextstate_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(nextstate[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00054040)) 
    \nextstate_reg[2]_i_1 
       (.I0(\currentstate_reg_n_0_[0] ),
        .I1(done_OBUF_inst_i_2_n_0),
        .I2(\currentstate_reg_n_0_[2] ),
        .I3(\nextstate_reg[2]_i_3_n_0 ),
        .I4(\currentstate_reg_n_0_[1] ),
        .O(\nextstate_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \nextstate_reg[2]_i_2 
       (.I0(\currentstate_reg_n_0_[2] ),
        .I1(\currentstate_reg_n_0_[1] ),
        .I2(\currentstate_reg_n_0_[0] ),
        .I3(\nextstate_reg[2]_i_4_n_0 ),
        .O(\nextstate_reg[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h4D44DDDD)) 
    \nextstate_reg[2]_i_3 
       (.I0(s2_OBUF[3]),
        .I1(s1_OBUF[3]),
        .I2(s2_OBUF[2]),
        .I3(s1_OBUF[2]),
        .I4(\nextstate_reg[2]_i_5_n_0 ),
        .O(\nextstate_reg[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \nextstate_reg[2]_i_4 
       (.I0(count_reg__0[1]),
        .I1(count_reg__0[0]),
        .I2(count_reg__0[3]),
        .I3(count_reg__0[2]),
        .O(\nextstate_reg[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hD0FDD0FDFFFFD0FD)) 
    \nextstate_reg[2]_i_5 
       (.I0(s1_OBUF[0]),
        .I1(s2_OBUF[0]),
        .I2(s2_OBUF[1]),
        .I3(s1_OBUF[1]),
        .I4(s2_OBUF[2]),
        .I5(s1_OBUF[2]),
        .O(\nextstate_reg[2]_i_5_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r0_reg[0] 
       (.CLR(1'b0),
        .D(\r0_reg[0]_i_1_n_0 ),
        .G(r0),
        .GE(1'b1),
        .Q(s0_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r0_reg[0]_i_1 
       (.I0(x0_IBUF[0]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[2]),
        .I5(s1_OBUF[0]),
        .O(\r0_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r0_reg[1] 
       (.CLR(1'b0),
        .D(\r0_reg[1]_i_1_n_0 ),
        .G(r0),
        .GE(1'b1),
        .Q(s0_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r0_reg[1]_i_1 
       (.I0(x0_IBUF[1]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[2]),
        .I5(s1_OBUF[1]),
        .O(\r0_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r0_reg[2] 
       (.CLR(1'b0),
        .D(\r0_reg[2]_i_1_n_0 ),
        .G(r0),
        .GE(1'b1),
        .Q(s0_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r0_reg[2]_i_1 
       (.I0(x0_IBUF[2]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[2]),
        .I5(s1_OBUF[2]),
        .O(\r0_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r0_reg[3] 
       (.CLR(1'b0),
        .D(\r0_reg[3]_i_1_n_0 ),
        .G(r0),
        .GE(1'b1),
        .Q(s0_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \r0_reg[3]_i_1 
       (.I0(x0_IBUF[3]),
        .I1(count_reg__0[1]),
        .I2(count_reg__0[0]),
        .I3(count_reg__0[3]),
        .I4(count_reg__0[2]),
        .I5(s1_OBUF[3]),
        .O(\r0_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FF8E)) 
    \r0_reg[3]_i_2 
       (.I0(\r0_reg[3]_i_3_n_0 ),
        .I1(s0_OBUF[3]),
        .I2(s1_OBUF[3]),
        .I3(\nextstate_reg[2]_i_4_n_0 ),
        .I4(\r0_reg[3]_i_4_n_0 ),
        .O(r0));
  LUT6 #(
    .INIT(64'h4D444444DDDD4D44)) 
    \r0_reg[3]_i_3 
       (.I0(s1_OBUF[2]),
        .I1(s0_OBUF[2]),
        .I2(s1_OBUF[0]),
        .I3(s0_OBUF[0]),
        .I4(s0_OBUF[1]),
        .I5(s1_OBUF[1]),
        .O(\r0_reg[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \r0_reg[3]_i_4 
       (.I0(\currentstate_reg_n_0_[2] ),
        .I1(\currentstate_reg_n_0_[1] ),
        .I2(\currentstate_reg_n_0_[0] ),
        .O(\r0_reg[3]_i_4_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[0] 
       (.CLR(1'b0),
        .D(\r1_reg[0]_i_1_n_0 ),
        .G(r1),
        .GE(1'b1),
        .Q(s1_OBUF[0]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r1_reg[0]_i_1 
       (.I0(x1_IBUF[0]),
        .I1(\nextstate_reg[2]_i_4_n_0 ),
        .I2(s0_OBUF[0]),
        .I3(\currentstate_reg_n_0_[0] ),
        .I4(s2_OBUF[0]),
        .O(\r1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[1] 
       (.CLR(1'b0),
        .D(\r1_reg[1]_i_1_n_0 ),
        .G(r1),
        .GE(1'b1),
        .Q(s1_OBUF[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r1_reg[1]_i_1 
       (.I0(x1_IBUF[1]),
        .I1(\nextstate_reg[2]_i_4_n_0 ),
        .I2(s0_OBUF[1]),
        .I3(\currentstate_reg_n_0_[0] ),
        .I4(s2_OBUF[1]),
        .O(\r1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[2] 
       (.CLR(1'b0),
        .D(\r1_reg[2]_i_1_n_0 ),
        .G(r1),
        .GE(1'b1),
        .Q(s1_OBUF[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r1_reg[2]_i_1 
       (.I0(x1_IBUF[2]),
        .I1(\nextstate_reg[2]_i_4_n_0 ),
        .I2(s0_OBUF[2]),
        .I3(\currentstate_reg_n_0_[0] ),
        .I4(s2_OBUF[2]),
        .O(\r1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r1_reg[3] 
       (.CLR(1'b0),
        .D(\r1_reg[3]_i_1_n_0 ),
        .G(r1),
        .GE(1'b1),
        .Q(s1_OBUF[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \r1_reg[3]_i_1 
       (.I0(x1_IBUF[3]),
        .I1(\nextstate_reg[2]_i_4_n_0 ),
        .I2(s0_OBUF[3]),
        .I3(\currentstate_reg_n_0_[0] ),
        .I4(s2_OBUF[3]),
        .O(\r1_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF0400)) 
    \r1_reg[3]_i_2 
       (.I0(\currentstate_reg_n_0_[0] ),
        .I1(\currentstate_reg_n_0_[1] ),
        .I2(\currentstate_reg_n_0_[2] ),
        .I3(\nextstate_reg[2]_i_3_n_0 ),
        .I4(r0),
        .O(r1));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[0] 
       (.CLR(1'b0),
        .D(\r2_reg[0]_i_1_n_0 ),
        .G(r2),
        .GE(1'b1),
        .Q(s2_OBUF[0]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \r2_reg[0]_i_1 
       (.I0(x2_IBUF[0]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(\currentstate_reg_n_0_[1] ),
        .I3(s1_OBUF[0]),
        .I4(\currentstate_reg_n_0_[2] ),
        .I5(s3_OBUF[0]),
        .O(\r2_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[1] 
       (.CLR(1'b0),
        .D(\r2_reg[1]_i_1_n_0 ),
        .G(r2),
        .GE(1'b1),
        .Q(s2_OBUF[1]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \r2_reg[1]_i_1 
       (.I0(x2_IBUF[1]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(\currentstate_reg_n_0_[1] ),
        .I3(s1_OBUF[1]),
        .I4(\currentstate_reg_n_0_[2] ),
        .I5(s3_OBUF[1]),
        .O(\r2_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[2] 
       (.CLR(1'b0),
        .D(\r2_reg[2]_i_1_n_0 ),
        .G(r2),
        .GE(1'b1),
        .Q(s2_OBUF[2]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \r2_reg[2]_i_1 
       (.I0(x2_IBUF[2]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(\currentstate_reg_n_0_[1] ),
        .I3(s1_OBUF[2]),
        .I4(\currentstate_reg_n_0_[2] ),
        .I5(s3_OBUF[2]),
        .O(\r2_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r2_reg[3] 
       (.CLR(1'b0),
        .D(\r2_reg[3]_i_1_n_0 ),
        .G(r2),
        .GE(1'b1),
        .Q(s2_OBUF[3]));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    \r2_reg[3]_i_1 
       (.I0(x2_IBUF[3]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(\currentstate_reg_n_0_[1] ),
        .I3(s1_OBUF[3]),
        .I4(\currentstate_reg_n_0_[2] ),
        .I5(s3_OBUF[3]),
        .O(\r2_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00050FC0000500C0)) 
    \r2_reg[3]_i_2 
       (.I0(done_OBUF_inst_i_2_n_0),
        .I1(\nextstate_reg[2]_i_4_n_0 ),
        .I2(\currentstate_reg_n_0_[0] ),
        .I3(\currentstate_reg_n_0_[1] ),
        .I4(\currentstate_reg_n_0_[2] ),
        .I5(\nextstate_reg[2]_i_3_n_0 ),
        .O(r2));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[0] 
       (.CLR(1'b0),
        .D(\r3_reg[0]_i_1_n_0 ),
        .G(r3),
        .GE(1'b1),
        .Q(s3_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r3_reg[0]_i_1 
       (.I0(x3_IBUF[0]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(s2_OBUF[0]),
        .O(\r3_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[1] 
       (.CLR(1'b0),
        .D(\r3_reg[1]_i_1_n_0 ),
        .G(r3),
        .GE(1'b1),
        .Q(s3_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r3_reg[1]_i_1 
       (.I0(x3_IBUF[1]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(s2_OBUF[1]),
        .O(\r3_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[2] 
       (.CLR(1'b0),
        .D(\r3_reg[2]_i_1_n_0 ),
        .G(r3),
        .GE(1'b1),
        .Q(s3_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r3_reg[2]_i_1 
       (.I0(x3_IBUF[2]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(s2_OBUF[2]),
        .O(\r3_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \r3_reg[3] 
       (.CLR(1'b0),
        .D(\r3_reg[3]_i_1_n_0 ),
        .G(r3),
        .GE(1'b1),
        .Q(s3_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \r3_reg[3]_i_1 
       (.I0(x3_IBUF[3]),
        .I1(\currentstate_reg_n_0_[0] ),
        .I2(s2_OBUF[3]),
        .O(\r3_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00200320)) 
    \r3_reg[3]_i_2 
       (.I0(\nextstate_reg[2]_i_4_n_0 ),
        .I1(\currentstate_reg_n_0_[1] ),
        .I2(\currentstate_reg_n_0_[0] ),
        .I3(\currentstate_reg_n_0_[2] ),
        .I4(done_OBUF_inst_i_2_n_0),
        .O(r3));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  OBUF \s0_OBUF[0]_inst 
       (.I(s0_OBUF[0]),
        .O(s0[0]));
  OBUF \s0_OBUF[1]_inst 
       (.I(s0_OBUF[1]),
        .O(s0[1]));
  OBUF \s0_OBUF[2]_inst 
       (.I(s0_OBUF[2]),
        .O(s0[2]));
  OBUF \s0_OBUF[3]_inst 
       (.I(s0_OBUF[3]),
        .O(s0[3]));
  OBUF \s1_OBUF[0]_inst 
       (.I(s1_OBUF[0]),
        .O(s1[0]));
  OBUF \s1_OBUF[1]_inst 
       (.I(s1_OBUF[1]),
        .O(s1[1]));
  OBUF \s1_OBUF[2]_inst 
       (.I(s1_OBUF[2]),
        .O(s1[2]));
  OBUF \s1_OBUF[3]_inst 
       (.I(s1_OBUF[3]),
        .O(s1[3]));
  OBUF \s2_OBUF[0]_inst 
       (.I(s2_OBUF[0]),
        .O(s2[0]));
  OBUF \s2_OBUF[1]_inst 
       (.I(s2_OBUF[1]),
        .O(s2[1]));
  OBUF \s2_OBUF[2]_inst 
       (.I(s2_OBUF[2]),
        .O(s2[2]));
  OBUF \s2_OBUF[3]_inst 
       (.I(s2_OBUF[3]),
        .O(s2[3]));
  OBUF \s3_OBUF[0]_inst 
       (.I(s3_OBUF[0]),
        .O(s3[0]));
  OBUF \s3_OBUF[1]_inst 
       (.I(s3_OBUF[1]),
        .O(s3[1]));
  OBUF \s3_OBUF[2]_inst 
       (.I(s3_OBUF[2]),
        .O(s3[2]));
  OBUF \s3_OBUF[3]_inst 
       (.I(s3_OBUF[3]),
        .O(s3[3]));
  IBUF \x0_IBUF[0]_inst 
       (.I(x0[0]),
        .O(x0_IBUF[0]));
  IBUF \x0_IBUF[1]_inst 
       (.I(x0[1]),
        .O(x0_IBUF[1]));
  IBUF \x0_IBUF[2]_inst 
       (.I(x0[2]),
        .O(x0_IBUF[2]));
  IBUF \x0_IBUF[3]_inst 
       (.I(x0[3]),
        .O(x0_IBUF[3]));
  IBUF \x1_IBUF[0]_inst 
       (.I(x1[0]),
        .O(x1_IBUF[0]));
  IBUF \x1_IBUF[1]_inst 
       (.I(x1[1]),
        .O(x1_IBUF[1]));
  IBUF \x1_IBUF[2]_inst 
       (.I(x1[2]),
        .O(x1_IBUF[2]));
  IBUF \x1_IBUF[3]_inst 
       (.I(x1[3]),
        .O(x1_IBUF[3]));
  IBUF \x2_IBUF[0]_inst 
       (.I(x2[0]),
        .O(x2_IBUF[0]));
  IBUF \x2_IBUF[1]_inst 
       (.I(x2[1]),
        .O(x2_IBUF[1]));
  IBUF \x2_IBUF[2]_inst 
       (.I(x2[2]),
        .O(x2_IBUF[2]));
  IBUF \x2_IBUF[3]_inst 
       (.I(x2[3]),
        .O(x2_IBUF[3]));
  IBUF \x3_IBUF[0]_inst 
       (.I(x3[0]),
        .O(x3_IBUF[0]));
  IBUF \x3_IBUF[1]_inst 
       (.I(x3[1]),
        .O(x3_IBUF[1]));
  IBUF \x3_IBUF[2]_inst 
       (.I(x3[2]),
        .O(x3_IBUF[2]));
  IBUF \x3_IBUF[3]_inst 
       (.I(x3[3]),
        .O(x3_IBUF[3]));
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
