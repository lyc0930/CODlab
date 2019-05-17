// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Mar 28 21:37:08 2019
// Host        : YC-YOGA running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/lyc/Vivado/lab1/Fibonacci/Fibonacci.sim/sim_1/synth/func/xsim/FIB_tb_func_synth.v
// Design      : Fibonacci
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ALU
   (data0,
    Q,
    \out_reg[5] );
  output [5:0]data0;
  input [5:0]Q;
  input [5:0]\out_reg[5] ;

  wire [5:0]Q;
  wire [5:0]data0;
  wire \fn_OBUF[3]_inst_i_1_n_0 ;
  wire \fn_OBUF[3]_inst_i_1_n_1 ;
  wire \fn_OBUF[3]_inst_i_1_n_2 ;
  wire \fn_OBUF[3]_inst_i_1_n_3 ;
  wire \fn_OBUF[3]_inst_i_2_n_0 ;
  wire \fn_OBUF[3]_inst_i_3_n_0 ;
  wire \fn_OBUF[3]_inst_i_4_n_0 ;
  wire \fn_OBUF[3]_inst_i_5_n_0 ;
  wire \fn_OBUF[5]_inst_i_1_n_3 ;
  wire \fn_OBUF[5]_inst_i_2_n_0 ;
  wire \fn_OBUF[5]_inst_i_3_n_0 ;
  wire [5:0]\out_reg[5] ;
  wire [3:1]\NLW_fn_OBUF[5]_inst_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_fn_OBUF[5]_inst_i_1_O_UNCONNECTED ;

  CARRY4 \fn_OBUF[3]_inst_i_1 
       (.CI(1'b0),
        .CO({\fn_OBUF[3]_inst_i_1_n_0 ,\fn_OBUF[3]_inst_i_1_n_1 ,\fn_OBUF[3]_inst_i_1_n_2 ,\fn_OBUF[3]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(Q[3:0]),
        .O(data0[3:0]),
        .S({\fn_OBUF[3]_inst_i_2_n_0 ,\fn_OBUF[3]_inst_i_3_n_0 ,\fn_OBUF[3]_inst_i_4_n_0 ,\fn_OBUF[3]_inst_i_5_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \fn_OBUF[3]_inst_i_2 
       (.I0(Q[3]),
        .I1(\out_reg[5] [3]),
        .O(\fn_OBUF[3]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fn_OBUF[3]_inst_i_3 
       (.I0(Q[2]),
        .I1(\out_reg[5] [2]),
        .O(\fn_OBUF[3]_inst_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fn_OBUF[3]_inst_i_4 
       (.I0(Q[1]),
        .I1(\out_reg[5] [1]),
        .O(\fn_OBUF[3]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fn_OBUF[3]_inst_i_5 
       (.I0(Q[0]),
        .I1(\out_reg[5] [0]),
        .O(\fn_OBUF[3]_inst_i_5_n_0 ));
  CARRY4 \fn_OBUF[5]_inst_i_1 
       (.CI(\fn_OBUF[3]_inst_i_1_n_0 ),
        .CO({\NLW_fn_OBUF[5]_inst_i_1_CO_UNCONNECTED [3:1],\fn_OBUF[5]_inst_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,Q[4]}),
        .O({\NLW_fn_OBUF[5]_inst_i_1_O_UNCONNECTED [3:2],data0[5:4]}),
        .S({1'b0,1'b0,\fn_OBUF[5]_inst_i_2_n_0 ,\fn_OBUF[5]_inst_i_3_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \fn_OBUF[5]_inst_i_2 
       (.I0(Q[5]),
        .I1(\out_reg[5] [5]),
        .O(\fn_OBUF[5]_inst_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \fn_OBUF[5]_inst_i_3 
       (.I0(Q[4]),
        .I1(\out_reg[5] [4]),
        .O(\fn_OBUF[5]_inst_i_3_n_0 ));
endmodule

(* N = "6" *) 
(* NotValidForBitStream *)
module Fibonacci
   (f0,
    f1,
    reset,
    clock,
    fn);
  input [5:0]f0;
  input [5:0]f1;
  input reset;
  input clock;
  output [5:0]fn;

  wire R1_n_0;
  wire R1_n_1;
  wire R1_n_2;
  wire R1_n_3;
  wire R1_n_4;
  wire R1_n_5;
  wire R1_n_6;
  wire R2_n_0;
  wire R2_n_1;
  wire R2_n_2;
  wire R2_n_3;
  wire R2_n_4;
  wire R2_n_5;
  wire R2_n_6;
  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [5:0]f0;
  wire [5:0]f0_IBUF;
  wire [5:0]f1;
  wire [5:0]f1_IBUF;
  wire [5:0]fn;
  wire [5:0]fn_1;
  wire [5:0]fn_2;
  wire [5:0]fn_OBUF;
  wire reset;
  wire reset_IBUF;

  Register R1
       (.D({R1_n_1,R1_n_2,R1_n_3,R1_n_4,R1_n_5,R1_n_6}),
        .E(R1_n_0),
        .Q(fn_1),
        .clock_IBUF_BUFG(clock_IBUF_BUFG),
        .f0_IBUF(f0_IBUF),
        .reset_IBUF(reset_IBUF));
  Register_0 R2
       (.CLK(clock_IBUF_BUFG),
        .D({R2_n_1,R2_n_2,R2_n_3,R2_n_4,R2_n_5,R2_n_6}),
        .E(R2_n_0),
        .data0(fn_OBUF),
        .f1_IBUF(f1_IBUF),
        .reset_IBUF(reset_IBUF));
  ALU adder
       (.Q(fn_2),
        .data0(fn_OBUF),
        .\out_reg[5] (fn_1));
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  IBUF \f0_IBUF[0]_inst 
       (.I(f0[0]),
        .O(f0_IBUF[0]));
  IBUF \f0_IBUF[1]_inst 
       (.I(f0[1]),
        .O(f0_IBUF[1]));
  IBUF \f0_IBUF[2]_inst 
       (.I(f0[2]),
        .O(f0_IBUF[2]));
  IBUF \f0_IBUF[3]_inst 
       (.I(f0[3]),
        .O(f0_IBUF[3]));
  IBUF \f0_IBUF[4]_inst 
       (.I(f0[4]),
        .O(f0_IBUF[4]));
  IBUF \f0_IBUF[5]_inst 
       (.I(f0[5]),
        .O(f0_IBUF[5]));
  IBUF \f1_IBUF[0]_inst 
       (.I(f1[0]),
        .O(f1_IBUF[0]));
  IBUF \f1_IBUF[1]_inst 
       (.I(f1[1]),
        .O(f1_IBUF[1]));
  IBUF \f1_IBUF[2]_inst 
       (.I(f1[2]),
        .O(f1_IBUF[2]));
  IBUF \f1_IBUF[3]_inst 
       (.I(f1[3]),
        .O(f1_IBUF[3]));
  IBUF \f1_IBUF[4]_inst 
       (.I(f1[4]),
        .O(f1_IBUF[4]));
  IBUF \f1_IBUF[5]_inst 
       (.I(f1[5]),
        .O(f1_IBUF[5]));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_1_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(R2_n_0),
        .D(R2_n_6),
        .Q(fn_1[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_1_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(R2_n_0),
        .D(R2_n_5),
        .Q(fn_1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_1_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(R2_n_0),
        .D(R2_n_4),
        .Q(fn_1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_1_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(R2_n_0),
        .D(R2_n_3),
        .Q(fn_1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_1_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(R2_n_0),
        .D(R2_n_2),
        .Q(fn_1[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_1_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(R2_n_0),
        .D(R2_n_1),
        .Q(fn_1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_2_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(R1_n_0),
        .D(R1_n_6),
        .Q(fn_2[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_2_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(R1_n_0),
        .D(R1_n_5),
        .Q(fn_2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_2_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(R1_n_0),
        .D(R1_n_4),
        .Q(fn_2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_2_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(R1_n_0),
        .D(R1_n_3),
        .Q(fn_2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_2_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(R1_n_0),
        .D(R1_n_2),
        .Q(fn_2[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b1)) 
    \fn_2_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(R1_n_0),
        .D(R1_n_1),
        .Q(fn_2[5]),
        .R(1'b0));
  OBUF \fn_OBUF[0]_inst 
       (.I(fn_OBUF[0]),
        .O(fn[0]));
  OBUF \fn_OBUF[1]_inst 
       (.I(fn_OBUF[1]),
        .O(fn[1]));
  OBUF \fn_OBUF[2]_inst 
       (.I(fn_OBUF[2]),
        .O(fn[2]));
  OBUF \fn_OBUF[3]_inst 
       (.I(fn_OBUF[3]),
        .O(fn[3]));
  OBUF \fn_OBUF[4]_inst 
       (.I(fn_OBUF[4]),
        .O(fn[4]));
  OBUF \fn_OBUF[5]_inst 
       (.I(fn_OBUF[5]),
        .O(fn[5]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module Register
   (E,
    D,
    reset_IBUF,
    f0_IBUF,
    Q,
    clock_IBUF_BUFG);
  output [0:0]E;
  output [5:0]D;
  input reset_IBUF;
  input [5:0]f0_IBUF;
  input [5:0]Q;
  input clock_IBUF_BUFG;

  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]Q;
  wire clock_IBUF_BUFG;
  wire [5:0]f0_IBUF;
  wire \fn_2[5]_i_3_n_0 ;
  wire [5:0]fn_2_temp;
  wire reset_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_2[0]_i_1 
       (.I0(f0_IBUF[0]),
        .I1(fn_2_temp[0]),
        .I2(reset_IBUF),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_2[1]_i_1 
       (.I0(f0_IBUF[1]),
        .I1(fn_2_temp[1]),
        .I2(reset_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_2[2]_i_1 
       (.I0(f0_IBUF[2]),
        .I1(fn_2_temp[2]),
        .I2(reset_IBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_2[3]_i_1 
       (.I0(f0_IBUF[3]),
        .I1(fn_2_temp[3]),
        .I2(reset_IBUF),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_2[4]_i_1 
       (.I0(f0_IBUF[4]),
        .I1(fn_2_temp[4]),
        .I2(reset_IBUF),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fn_2[5]_i_1 
       (.I0(\fn_2[5]_i_3_n_0 ),
        .I1(reset_IBUF),
        .O(E));
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_2[5]_i_2 
       (.I0(f0_IBUF[5]),
        .I1(fn_2_temp[5]),
        .I2(reset_IBUF),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fn_2[5]_i_3 
       (.I0(fn_2_temp[1]),
        .I1(fn_2_temp[0]),
        .I2(fn_2_temp[4]),
        .I3(fn_2_temp[5]),
        .I4(fn_2_temp[2]),
        .I5(fn_2_temp[3]),
        .O(\fn_2[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[0]),
        .Q(fn_2_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[1]),
        .Q(fn_2_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[2]),
        .Q(fn_2_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[3]),
        .Q(fn_2_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[4]),
        .Q(fn_2_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(Q[5]),
        .Q(fn_2_temp[5]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "Register" *) 
module Register_0
   (E,
    D,
    reset_IBUF,
    f1_IBUF,
    data0,
    CLK);
  output [0:0]E;
  output [5:0]D;
  input reset_IBUF;
  input [5:0]f1_IBUF;
  input [5:0]data0;
  input CLK;

  wire CLK;
  wire [5:0]D;
  wire [0:0]E;
  wire [5:0]data0;
  wire [5:0]f1_IBUF;
  wire \fn_1[5]_i_3_n_0 ;
  wire [5:0]fn_1_temp;
  wire reset_IBUF;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_1[0]_i_1 
       (.I0(f1_IBUF[0]),
        .I1(fn_1_temp[0]),
        .I2(reset_IBUF),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_1[1]_i_1 
       (.I0(f1_IBUF[1]),
        .I1(fn_1_temp[1]),
        .I2(reset_IBUF),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_1[2]_i_1 
       (.I0(f1_IBUF[2]),
        .I1(fn_1_temp[2]),
        .I2(reset_IBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_1[3]_i_1 
       (.I0(f1_IBUF[3]),
        .I1(fn_1_temp[3]),
        .I2(reset_IBUF),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_1[4]_i_1 
       (.I0(f1_IBUF[4]),
        .I1(fn_1_temp[4]),
        .I2(reset_IBUF),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \fn_1[5]_i_1 
       (.I0(\fn_1[5]_i_3_n_0 ),
        .I1(reset_IBUF),
        .O(E));
  LUT3 #(
    .INIT(8'hAC)) 
    \fn_1[5]_i_2 
       (.I0(f1_IBUF[5]),
        .I1(fn_1_temp[5]),
        .I2(reset_IBUF),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \fn_1[5]_i_3 
       (.I0(fn_1_temp[1]),
        .I1(fn_1_temp[0]),
        .I2(fn_1_temp[4]),
        .I3(fn_1_temp[5]),
        .I4(fn_1_temp[2]),
        .I5(fn_1_temp[3]),
        .O(\fn_1[5]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[0]),
        .Q(fn_1_temp[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[1]),
        .Q(fn_1_temp[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[2]),
        .Q(fn_1_temp[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[3]),
        .Q(fn_1_temp[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[4]),
        .Q(fn_1_temp[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \out_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(data0[5]),
        .Q(fn_1_temp[5]),
        .R(1'b0));
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
