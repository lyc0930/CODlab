// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Mar 28 21:08:51 2019
// Host        : YC-YOGA running 64-bit Ubuntu 18.04.2 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/lyc/Vivado/lab2/DIV/DIV.sim/sim_1/synth/func/xsim/DIV_tb_func_synth.v
// Design      : DIV
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
    count);
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

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [3:0]count;
  wire [3:0]count0;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire [3:0]count_OBUF;
  wire [2:0]currentstate;
  wire [2:0]currentstate_OBUF;
  wire data_next;
  wire \data_next_reg[0]_i_1_n_0 ;
  wire \data_next_reg[1]_i_1_n_0 ;
  wire \data_next_reg[2]_i_1_n_0 ;
  wire \data_next_reg[3]_i_1_n_0 ;
  wire \data_next_reg[4]_i_1_n_0 ;
  wire \data_next_reg[5]_i_1_n_0 ;
  wire \data_next_reg[5]_i_2_n_0 ;
  wire \data_next_reg[6]_i_1_n_0 ;
  wire \data_next_reg[6]_i_2_n_0 ;
  wire \data_next_reg[7]_i_1_n_0 ;
  wire \data_next_reg[7]_i_3_n_0 ;
  wire done;
  wire done_OBUF;
  wire error;
  wire error_OBUF;
  wire error_OBUF_inst_i_2_n_0;
  wire [2:0]nextstate;
  wire [2:0]nextstate_OBUF;
  wire \nextstate_OBUF[1]_inst_i_2_n_0 ;
  wire \nextstate_OBUF[1]_inst_i_3_n_0 ;
  wire \nextstate_OBUF[1]_inst_i_4_n_0 ;
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

  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(count_OBUF[0]),
        .O(count0[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \count[1]_i_1 
       (.I0(count_OBUF[0]),
        .I1(count_OBUF[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \count[2]_i_1 
       (.I0(count_OBUF[2]),
        .I1(count_OBUF[1]),
        .I2(count_OBUF[0]),
        .O(\count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \count[3]_i_1 
       (.I0(currentstate_OBUF[2]),
        .I1(currentstate_OBUF[1]),
        .I2(currentstate_OBUF[0]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \count[3]_i_2 
       (.I0(count_OBUF[3]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[2]),
        .O(count0[3]));
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
        .D(count0[0]),
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
        .D(count0[3]),
        .Q(count_OBUF[3]));
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
        .D(nextstate_OBUF[0]),
        .PRE(reset_IBUF),
        .Q(currentstate_OBUF[0]));
  (* FSM_ENCODED_STATES = "State_Begin:001,State_Shift:010,State_Finish:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \currentstate_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(nextstate_OBUF[1]),
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
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[0] 
       (.CLR(1'b0),
        .D(\data_next_reg[0]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(q_OBUF[0]));
  LUT4 #(
    .INIT(16'h2F20)) 
    \data_next_reg[0]_i_1 
       (.I0(x_IBUF[0]),
        .I1(\nextstate_OBUF[1]_inst_i_3_n_0 ),
        .I2(currentstate_OBUF[0]),
        .I3(\data_next_reg[5]_i_2_n_0 ),
        .O(\data_next_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[1] 
       (.CLR(1'b0),
        .D(\data_next_reg[1]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(q_OBUF[1]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \data_next_reg[1]_i_1 
       (.I0(\nextstate_OBUF[1]_inst_i_3_n_0 ),
        .I1(x_IBUF[1]),
        .I2(currentstate_OBUF[0]),
        .I3(q_OBUF[0]),
        .O(\data_next_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[2] 
       (.CLR(1'b0),
        .D(\data_next_reg[2]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(q_OBUF[2]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \data_next_reg[2]_i_1 
       (.I0(\nextstate_OBUF[1]_inst_i_3_n_0 ),
        .I1(x_IBUF[2]),
        .I2(currentstate_OBUF[0]),
        .I3(q_OBUF[1]),
        .O(\data_next_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[3] 
       (.CLR(1'b0),
        .D(\data_next_reg[3]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(q_OBUF[3]));
  LUT4 #(
    .INIT(16'h4F40)) 
    \data_next_reg[3]_i_1 
       (.I0(\nextstate_OBUF[1]_inst_i_3_n_0 ),
        .I1(x_IBUF[3]),
        .I2(currentstate_OBUF[0]),
        .I3(q_OBUF[2]),
        .O(\data_next_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[4] 
       (.CLR(1'b0),
        .D(\data_next_reg[4]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(r_OBUF[0]));
  LUT6 #(
    .INIT(64'h2888222888888888)) 
    \data_next_reg[4]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(q_OBUF[3]),
        .I2(\data_next_reg[7]_i_3_n_0 ),
        .I3(r_OBUF[2]),
        .I4(y_IBUF[3]),
        .I5(y_IBUF[0]),
        .O(\data_next_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[5] 
       (.CLR(1'b0),
        .D(\data_next_reg[5]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(r_OBUF[1]));
  LUT6 #(
    .INIT(64'h2888882828882888)) 
    \data_next_reg[5]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(r_OBUF[0]),
        .I2(\data_next_reg[5]_i_2_n_0 ),
        .I3(y_IBUF[1]),
        .I4(q_OBUF[3]),
        .I5(y_IBUF[0]),
        .O(\data_next_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \data_next_reg[5]_i_2 
       (.I0(y_IBUF[3]),
        .I1(r_OBUF[2]),
        .I2(\data_next_reg[7]_i_3_n_0 ),
        .O(\data_next_reg[5]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[6] 
       (.CLR(1'b0),
        .D(\data_next_reg[6]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(r_OBUF[2]));
  LUT6 #(
    .INIT(64'h0880888828820880)) 
    \data_next_reg[6]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(r_OBUF[1]),
        .I2(y_IBUF[2]),
        .I3(\data_next_reg[6]_i_2_n_0 ),
        .I4(r_OBUF[2]),
        .I5(y_IBUF[3]),
        .O(\data_next_reg[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hD4DD)) 
    \data_next_reg[6]_i_2 
       (.I0(y_IBUF[1]),
        .I1(r_OBUF[0]),
        .I2(q_OBUF[3]),
        .I3(y_IBUF[0]),
        .O(\data_next_reg[6]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data_next_reg[7] 
       (.CLR(1'b0),
        .D(\data_next_reg[7]_i_1_n_0 ),
        .G(data_next),
        .GE(1'b1),
        .Q(r_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \data_next_reg[7]_i_1 
       (.I0(currentstate_OBUF[1]),
        .I1(r_OBUF[2]),
        .I2(y_IBUF[3]),
        .I3(\data_next_reg[7]_i_3_n_0 ),
        .O(\data_next_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h12)) 
    \data_next_reg[7]_i_2 
       (.I0(currentstate_OBUF[0]),
        .I1(currentstate_OBUF[2]),
        .I2(currentstate_OBUF[1]),
        .O(data_next));
  LUT6 #(
    .INIT(64'hD4DDFFFF0000D4DD)) 
    \data_next_reg[7]_i_3 
       (.I0(y_IBUF[1]),
        .I1(r_OBUF[0]),
        .I2(q_OBUF[3]),
        .I3(y_IBUF[0]),
        .I4(y_IBUF[2]),
        .I5(r_OBUF[1]),
        .O(\data_next_reg[7]_i_3_n_0 ));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    done_OBUF_inst_i_1
       (.I0(currentstate_OBUF[0]),
        .I1(currentstate_OBUF[2]),
        .I2(currentstate_OBUF[1]),
        .O(done_OBUF));
  OBUF error_OBUF_inst
       (.I(error_OBUF),
        .O(error));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    error_OBUF_inst_i_1
       (.I0(y_IBUF[2]),
        .I1(y_IBUF[1]),
        .I2(y_IBUF[3]),
        .I3(y_IBUF[0]),
        .I4(error_OBUF_inst_i_2_n_0),
        .O(error_OBUF));
  LUT3 #(
    .INIT(8'hEF)) 
    error_OBUF_inst_i_2
       (.I0(currentstate_OBUF[1]),
        .I1(currentstate_OBUF[2]),
        .I2(currentstate_OBUF[0]),
        .O(error_OBUF_inst_i_2_n_0));
  OBUF \nextstate_OBUF[0]_inst 
       (.I(nextstate_OBUF[0]),
        .O(nextstate[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hEBE9)) 
    \nextstate_OBUF[0]_inst_i_1 
       (.I0(currentstate_OBUF[0]),
        .I1(currentstate_OBUF[2]),
        .I2(currentstate_OBUF[1]),
        .I3(\nextstate_OBUF[1]_inst_i_3_n_0 ),
        .O(nextstate_OBUF[0]));
  OBUF \nextstate_OBUF[1]_inst 
       (.I(nextstate_OBUF[1]),
        .O(nextstate[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00040304)) 
    \nextstate_OBUF[1]_inst_i_1 
       (.I0(\nextstate_OBUF[1]_inst_i_2_n_0 ),
        .I1(currentstate_OBUF[1]),
        .I2(currentstate_OBUF[2]),
        .I3(currentstate_OBUF[0]),
        .I4(\nextstate_OBUF[1]_inst_i_3_n_0 ),
        .O(nextstate_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \nextstate_OBUF[1]_inst_i_2 
       (.I0(count_OBUF[1]),
        .I1(count_OBUF[0]),
        .I2(count_OBUF[3]),
        .I3(count_OBUF[2]),
        .O(\nextstate_OBUF[1]_inst_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \nextstate_OBUF[1]_inst_i_3 
       (.I0(\nextstate_OBUF[1]_inst_i_4_n_0 ),
        .I1(count_OBUF[3]),
        .I2(count_OBUF[2]),
        .I3(count_OBUF[0]),
        .I4(count_OBUF[1]),
        .O(\nextstate_OBUF[1]_inst_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \nextstate_OBUF[1]_inst_i_4 
       (.I0(y_IBUF[0]),
        .I1(y_IBUF[3]),
        .I2(y_IBUF[1]),
        .I3(y_IBUF[2]),
        .O(\nextstate_OBUF[1]_inst_i_4_n_0 ));
  OBUF \nextstate_OBUF[2]_inst 
       (.I(nextstate_OBUF[2]),
        .O(nextstate[2]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAEAA)) 
    \nextstate_OBUF[2]_inst_i_1 
       (.I0(done_OBUF),
        .I1(\count[3]_i_1_n_0 ),
        .I2(count_OBUF[1]),
        .I3(count_OBUF[0]),
        .I4(count_OBUF[3]),
        .I5(count_OBUF[2]),
        .O(nextstate_OBUF[2]));
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
