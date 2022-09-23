// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Mon Feb 21 12:33:52 2022
// Host        : LAPTOP-L5F081BJ running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/anags/OneDrive/Desktop/project_1/project_1.sim/sim_1/impl/timing/xsim/tb_puerto_serie_time_impl.v
// Design      : puerto_serie
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "8d76e056" *) 
(* NotValidForBitStream *)
module puerto_serie
   (sys_clock,
    reset,
    RX,
    TX);
  input sys_clock;
  input reset;
  input RX;
  output TX;

  wire RX;
  wire RX_IBUF;
  wire TREADY;
  wire TVALID;
  wire TX;
  wire TX_OBUF;
  wire [7:0]plusOp;
  wire reset;
  wire reset_IBUF;
  wire sys_clock;
  wire sys_clock_IBUF;
  wire sys_clock_IBUF_BUFG;

initial begin
 $sdf_annotate("tb_puerto_serie_time_impl.sdf",,,,"tool_control");
end
  IBUF RX_IBUF_inst
       (.I(RX),
        .O(RX_IBUF));
  OBUF TX_OBUF_inst
       (.I(TX_OBUF),
        .O(TX));
  receptor receptor_i
       (.AR(reset_IBUF),
        .CLK(sys_clock_IBUF_BUFG),
        .D(RX_IBUF),
        .\TDATA_reg[6]_0 (plusOp),
        .TREADY(TREADY),
        .TVALID(TVALID));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  BUFG sys_clock_IBUF_BUFG_inst
       (.I(sys_clock_IBUF),
        .O(sys_clock_IBUF_BUFG));
  IBUF sys_clock_IBUF_inst
       (.I(sys_clock),
        .O(sys_clock_IBUF));
  transmisor transmisor_i
       (.AR(reset_IBUF),
        .CLK(sys_clock_IBUF_BUFG),
        .D(plusOp),
        .TREADY(TREADY),
        .TVALID(TVALID),
        .TX_OBUF(TX_OBUF));
endmodule

module receptor
   (TVALID,
    \TDATA_reg[6]_0 ,
    CLK,
    D,
    TREADY,
    AR);
  output TVALID;
  output [7:0]\TDATA_reg[6]_0 ;
  input CLK;
  input [0:0]D;
  input TREADY;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [7:0]TDATA;
  wire \TDATA[0]_i_1_n_0 ;
  wire \TDATA[1]_i_1_n_0 ;
  wire \TDATA[2]_i_1_n_0 ;
  wire \TDATA[3]_i_1_n_0 ;
  wire \TDATA[4]_i_1_n_0 ;
  wire \TDATA[5]_i_1_n_0 ;
  wire \TDATA[6]_i_1_n_0 ;
  wire \TDATA[7]_i_1_n_0 ;
  wire \TDATA[7]_i_2_n_0 ;
  wire \TDATA[7]_i_3_n_0 ;
  wire \TDATA[7]_i_4_n_0 ;
  wire \TDATA[7]_i_5_n_0 ;
  wire [7:0]\TDATA_reg[6]_0 ;
  wire TREADY;
  wire TVALID;
  wire TVALID_i_1_n_0;
  wire TVALID_i_2_n_0;
  wire [10:0]cont;
  wire \cont[0]_i_1__0_n_0 ;
  wire \cont[0]_i_2_n_0 ;
  wire \cont[10]_i_1_n_0 ;
  wire \cont[10]_i_2_n_0 ;
  wire \cont[10]_i_3_n_0 ;
  wire \cont[10]_i_4_n_0 ;
  wire \cont[10]_i_5_n_0 ;
  wire \cont[10]_i_6_n_0 ;
  wire \cont[10]_i_7_n_0 ;
  wire \cont[10]_i_8_n_0 ;
  wire \cont[10]_i_9_n_0 ;
  wire \cont[1]_i_1__0_n_0 ;
  wire \cont[2]_i_1__0_n_0 ;
  wire \cont[3]_i_1_n_0 ;
  wire \cont[3]_i_2_n_0 ;
  wire \cont[4]_i_1_n_0 ;
  wire \cont[4]_i_2_n_0 ;
  wire \cont[5]_i_1__0_n_0 ;
  wire \cont[6]_i_1_n_0 ;
  wire \cont[6]_i_2_n_0 ;
  wire \cont[7]_i_1__0_n_0 ;
  wire \cont[7]_i_2_n_0 ;
  wire \cont[8]_i_1__0_n_0 ;
  wire \cont[8]_i_2_n_0 ;
  wire \cont[9]_i_1__0_n_0 ;
  wire \cont[9]_i_2__0_n_0 ;
  wire \dato[7]_i_3_n_0 ;
  wire \estado[3]_i_1__0_n_0 ;
  wire \estado[3]_i_3_n_0 ;
  wire \estado[3]_i_4_n_0 ;
  wire \estado[3]_i_5_n_0 ;
  wire \estado[3]_i_6_n_0 ;
  wire \estado_reg_n_0_[0] ;
  wire \estado_reg_n_0_[1] ;
  wire \estado_reg_n_0_[2] ;
  wire \estado_reg_n_0_[3] ;
  wire [3:0]p_0_in;

  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \TDATA[0]_i_1 
       (.I0(\TDATA[7]_i_2_n_0 ),
        .I1(\estado_reg_n_0_[0] ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(\estado_reg_n_0_[1] ),
        .I5(\estado_reg_n_0_[3] ),
        .O(\TDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \TDATA[1]_i_1 
       (.I0(\TDATA[7]_i_2_n_0 ),
        .I1(\estado_reg_n_0_[0] ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(\estado_reg_n_0_[1] ),
        .I5(\estado_reg_n_0_[3] ),
        .O(\TDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \TDATA[2]_i_1 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\TDATA[7]_i_2_n_0 ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(\estado_reg_n_0_[1] ),
        .I5(\estado_reg_n_0_[3] ),
        .O(\TDATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \TDATA[3]_i_1 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\TDATA[7]_i_2_n_0 ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(\estado_reg_n_0_[1] ),
        .I5(\estado_reg_n_0_[3] ),
        .O(\TDATA[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h10000000)) 
    \TDATA[4]_i_1 
       (.I0(\TDATA[7]_i_2_n_0 ),
        .I1(\estado_reg_n_0_[0] ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[1] ),
        .I4(\estado_reg_n_0_[2] ),
        .O(\TDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    \TDATA[5]_i_1 
       (.I0(\TDATA[7]_i_2_n_0 ),
        .I1(\estado_reg_n_0_[0] ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[3] ),
        .I4(\estado_reg_n_0_[1] ),
        .I5(\estado_reg_n_0_[2] ),
        .O(\TDATA[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \TDATA[6]_i_1 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\TDATA[7]_i_2_n_0 ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[1] ),
        .I4(\estado_reg_n_0_[2] ),
        .O(\TDATA[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \TDATA[7]_i_1 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\TDATA[7]_i_2_n_0 ),
        .I2(\TDATA[7]_i_3_n_0 ),
        .I3(\estado_reg_n_0_[1] ),
        .I4(\estado_reg_n_0_[2] ),
        .O(\TDATA[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TDATA[7]_i_2 
       (.I0(cont[5]),
        .I1(cont[1]),
        .I2(cont[4]),
        .I3(cont[2]),
        .O(\TDATA[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \TDATA[7]_i_3 
       (.I0(\estado[3]_i_5_n_0 ),
        .I1(\TDATA[7]_i_4_n_0 ),
        .I2(\TDATA[7]_i_5_n_0 ),
        .I3(cont[9]),
        .I4(cont[7]),
        .I5(cont[6]),
        .O(\TDATA[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \TDATA[7]_i_4 
       (.I0(cont[10]),
        .I1(cont[5]),
        .I2(cont[8]),
        .I3(cont[2]),
        .O(\TDATA[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \TDATA[7]_i_5 
       (.I0(cont[1]),
        .I1(cont[0]),
        .I2(cont[4]),
        .I3(cont[3]),
        .O(\TDATA[7]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[0] 
       (.C(CLK),
        .CE(\TDATA[0]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[0]));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[1] 
       (.C(CLK),
        .CE(\TDATA[1]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[1]));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[2] 
       (.C(CLK),
        .CE(\TDATA[2]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[2]));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[3] 
       (.C(CLK),
        .CE(\TDATA[3]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[3]));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[4] 
       (.C(CLK),
        .CE(\TDATA[4]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[4]));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[5] 
       (.C(CLK),
        .CE(\TDATA[5]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[5]));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[6] 
       (.C(CLK),
        .CE(\TDATA[6]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[6]));
  FDCE #(
    .INIT(1'b0)) 
    \TDATA_reg[7] 
       (.C(CLK),
        .CE(\TDATA[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D),
        .Q(TDATA[7]));
  LUT5 #(
    .INIT(32'h888B8888)) 
    TVALID_i_1
       (.I0(TVALID),
        .I1(AR),
        .I2(\estado_reg_n_0_[3] ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(TVALID_i_2_n_0),
        .O(TVALID_i_1_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    TVALID_i_2
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[1] ),
        .I2(TREADY),
        .I3(D),
        .O(TVALID_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TVALID_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TVALID_i_1_n_0),
        .Q(TVALID),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h4444444544444444)) 
    \cont[0]_i_1__0 
       (.I0(cont[0]),
        .I1(\cont[10]_i_4_n_0 ),
        .I2(\cont[0]_i_2_n_0 ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(\estado_reg_n_0_[3] ),
        .I5(\cont[10]_i_2_n_0 ),
        .O(\cont[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \cont[0]_i_2 
       (.I0(\estado_reg_n_0_[1] ),
        .I1(\estado_reg_n_0_[0] ),
        .O(\cont[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00F8F800)) 
    \cont[10]_i_1 
       (.I0(\cont[10]_i_2_n_0 ),
        .I1(\cont[10]_i_3_n_0 ),
        .I2(\cont[10]_i_4_n_0 ),
        .I3(cont[10]),
        .I4(\cont[10]_i_5_n_0 ),
        .O(\cont[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \cont[10]_i_2 
       (.I0(\cont[10]_i_6_n_0 ),
        .I1(\cont[10]_i_7_n_0 ),
        .I2(cont[8]),
        .I3(cont[3]),
        .I4(cont[5]),
        .I5(cont[1]),
        .O(\cont[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \cont[10]_i_3 
       (.I0(\estado_reg_n_0_[3] ),
        .I1(\estado_reg_n_0_[2] ),
        .I2(\estado_reg_n_0_[0] ),
        .I3(\estado_reg_n_0_[1] ),
        .O(\cont[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFAEA00FFFAFFFA)) 
    \cont[10]_i_4 
       (.I0(\estado_reg_n_0_[2] ),
        .I1(\estado_reg_n_0_[0] ),
        .I2(\estado_reg_n_0_[1] ),
        .I3(\estado_reg_n_0_[3] ),
        .I4(\cont[10]_i_8_n_0 ),
        .I5(\cont[10]_i_9_n_0 ),
        .O(\cont[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \cont[10]_i_5 
       (.I0(cont[9]),
        .I1(cont[8]),
        .I2(cont[6]),
        .I3(cont[5]),
        .I4(\cont[6]_i_2_n_0 ),
        .I5(cont[7]),
        .O(\cont[10]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \cont[10]_i_6 
       (.I0(cont[9]),
        .I1(cont[7]),
        .I2(cont[6]),
        .O(\cont[10]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cont[10]_i_7 
       (.I0(cont[2]),
        .I1(cont[0]),
        .I2(cont[10]),
        .I3(cont[4]),
        .O(\cont[10]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \cont[10]_i_8 
       (.I0(cont[8]),
        .I1(cont[3]),
        .I2(cont[6]),
        .I3(cont[9]),
        .I4(cont[10]),
        .O(\cont[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    \cont[10]_i_9 
       (.I0(cont[1]),
        .I1(cont[0]),
        .I2(cont[7]),
        .I3(cont[5]),
        .I4(cont[2]),
        .I5(cont[4]),
        .O(\cont[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h66606060)) 
    \cont[1]_i_1__0 
       (.I0(cont[1]),
        .I1(cont[0]),
        .I2(\cont[10]_i_4_n_0 ),
        .I3(\cont[10]_i_3_n_0 ),
        .I4(\cont[10]_i_2_n_0 ),
        .O(\cont[1]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h00EAEAEAEA000000)) 
    \cont[2]_i_1__0 
       (.I0(\cont[10]_i_4_n_0 ),
        .I1(\cont[10]_i_3_n_0 ),
        .I2(\cont[10]_i_2_n_0 ),
        .I3(cont[0]),
        .I4(cont[1]),
        .I5(cont[2]),
        .O(\cont[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hEA00EAEA00EA0000)) 
    \cont[3]_i_1 
       (.I0(\cont[10]_i_4_n_0 ),
        .I1(\cont[10]_i_3_n_0 ),
        .I2(\cont[10]_i_2_n_0 ),
        .I3(\cont[3]_i_2_n_0 ),
        .I4(cont[2]),
        .I5(cont[3]),
        .O(\cont[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cont[3]_i_2 
       (.I0(cont[0]),
        .I1(cont[1]),
        .O(\cont[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA0000EA)) 
    \cont[4]_i_1 
       (.I0(\cont[10]_i_4_n_0 ),
        .I1(\cont[10]_i_3_n_0 ),
        .I2(\cont[10]_i_2_n_0 ),
        .I3(\cont[4]_i_2_n_0 ),
        .I4(cont[4]),
        .O(\cont[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cont[4]_i_2 
       (.I0(cont[2]),
        .I1(cont[0]),
        .I2(cont[1]),
        .I3(cont[3]),
        .O(\cont[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA0000EA)) 
    \cont[5]_i_1__0 
       (.I0(\cont[10]_i_4_n_0 ),
        .I1(\cont[10]_i_3_n_0 ),
        .I2(\cont[10]_i_2_n_0 ),
        .I3(\cont[6]_i_2_n_0 ),
        .I4(cont[5]),
        .O(\cont[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hD2D2D200D200D200)) 
    \cont[6]_i_1 
       (.I0(cont[5]),
        .I1(\cont[6]_i_2_n_0 ),
        .I2(cont[6]),
        .I3(\cont[10]_i_4_n_0 ),
        .I4(\cont[10]_i_3_n_0 ),
        .I5(\cont[10]_i_2_n_0 ),
        .O(\cont[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cont[6]_i_2 
       (.I0(cont[3]),
        .I1(cont[1]),
        .I2(cont[0]),
        .I3(cont[2]),
        .I4(cont[4]),
        .O(\cont[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA0000EA)) 
    \cont[7]_i_1__0 
       (.I0(\cont[10]_i_4_n_0 ),
        .I1(\cont[10]_i_3_n_0 ),
        .I2(\cont[10]_i_2_n_0 ),
        .I3(\cont[7]_i_2_n_0 ),
        .I4(cont[7]),
        .O(\cont[7]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \cont[7]_i_2 
       (.I0(\cont[6]_i_2_n_0 ),
        .I1(cont[5]),
        .I2(cont[6]),
        .O(\cont[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h99909090)) 
    \cont[8]_i_1__0 
       (.I0(\cont[8]_i_2_n_0 ),
        .I1(cont[8]),
        .I2(\cont[10]_i_4_n_0 ),
        .I3(\cont[10]_i_3_n_0 ),
        .I4(\cont[10]_i_2_n_0 ),
        .O(\cont[8]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hF7FF)) 
    \cont[8]_i_2 
       (.I0(cont[6]),
        .I1(cont[5]),
        .I2(\cont[6]_i_2_n_0 ),
        .I3(cont[7]),
        .O(\cont[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEA0000EA)) 
    \cont[9]_i_1__0 
       (.I0(\cont[10]_i_4_n_0 ),
        .I1(\cont[10]_i_3_n_0 ),
        .I2(\cont[10]_i_2_n_0 ),
        .I3(\cont[9]_i_2__0_n_0 ),
        .I4(cont[9]),
        .O(\cont[9]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    \cont[9]_i_2__0 
       (.I0(cont[7]),
        .I1(\cont[6]_i_2_n_0 ),
        .I2(cont[5]),
        .I3(cont[6]),
        .I4(cont[8]),
        .O(\cont[9]_i_2__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[0]_i_1__0_n_0 ),
        .Q(cont[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[10]_i_1_n_0 ),
        .Q(cont[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[1]_i_1__0_n_0 ),
        .Q(cont[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[2]_i_1__0_n_0 ),
        .Q(cont[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[3]_i_1_n_0 ),
        .Q(cont[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[4]_i_1_n_0 ),
        .Q(cont[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[5]_i_1__0_n_0 ),
        .Q(cont[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[6]_i_1_n_0 ),
        .Q(cont[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[7]_i_1__0_n_0 ),
        .Q(cont[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[8]_i_1__0_n_0 ),
        .Q(cont[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[9]_i_1__0_n_0 ),
        .Q(cont[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \dato[0]_i_1 
       (.I0(TDATA[0]),
        .O(\TDATA_reg[6]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dato[1]_i_1 
       (.I0(TDATA[0]),
        .I1(TDATA[1]),
        .O(\TDATA_reg[6]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dato[2]_i_1 
       (.I0(TDATA[0]),
        .I1(TDATA[1]),
        .I2(TDATA[2]),
        .O(\TDATA_reg[6]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \dato[3]_i_1 
       (.I0(TDATA[1]),
        .I1(TDATA[0]),
        .I2(TDATA[2]),
        .I3(TDATA[3]),
        .O(\TDATA_reg[6]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \dato[4]_i_1 
       (.I0(TDATA[2]),
        .I1(TDATA[0]),
        .I2(TDATA[1]),
        .I3(TDATA[3]),
        .I4(TDATA[4]),
        .O(\TDATA_reg[6]_0 [4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \dato[5]_i_1 
       (.I0(TDATA[3]),
        .I1(TDATA[1]),
        .I2(TDATA[0]),
        .I3(TDATA[2]),
        .I4(TDATA[4]),
        .I5(TDATA[5]),
        .O(\TDATA_reg[6]_0 [5]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \dato[6]_i_1 
       (.I0(\dato[7]_i_3_n_0 ),
        .I1(TDATA[6]),
        .O(\TDATA_reg[6]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \dato[7]_i_2 
       (.I0(\dato[7]_i_3_n_0 ),
        .I1(TDATA[6]),
        .I2(TDATA[7]),
        .O(\TDATA_reg[6]_0 [7]));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \dato[7]_i_3 
       (.I0(TDATA[5]),
        .I1(TDATA[3]),
        .I2(TDATA[1]),
        .I3(TDATA[0]),
        .I4(TDATA[2]),
        .I5(TDATA[4]),
        .O(\dato[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h1115)) 
    \estado[0]_i_1 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[3] ),
        .I2(\estado_reg_n_0_[2] ),
        .I3(\estado_reg_n_0_[1] ),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h112A)) 
    \estado[1]_i_1 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[3] ),
        .I2(\estado_reg_n_0_[2] ),
        .I3(\estado_reg_n_0_[1] ),
        .O(p_0_in[1]));
  LUT4 #(
    .INIT(16'h1540)) 
    \estado[2]_i_1 
       (.I0(\estado_reg_n_0_[3] ),
        .I1(\estado_reg_n_0_[1] ),
        .I2(\estado_reg_n_0_[0] ),
        .I3(\estado_reg_n_0_[2] ),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h0F770F5F0F770F55)) 
    \estado[3]_i_1__0 
       (.I0(\estado[3]_i_3_n_0 ),
        .I1(\cont[10]_i_2_n_0 ),
        .I2(\estado[3]_i_4_n_0 ),
        .I3(\estado[3]_i_5_n_0 ),
        .I4(\estado_reg_n_0_[0] ),
        .I5(\estado_reg_n_0_[1] ),
        .O(\estado[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0580)) 
    \estado[3]_i_2 
       (.I0(\estado_reg_n_0_[2] ),
        .I1(\estado_reg_n_0_[0] ),
        .I2(\estado_reg_n_0_[1] ),
        .I3(\estado_reg_n_0_[3] ),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00555545)) 
    \estado[3]_i_3 
       (.I0(\estado_reg_n_0_[2] ),
        .I1(D),
        .I2(TREADY),
        .I3(\estado_reg_n_0_[1] ),
        .I4(\estado_reg_n_0_[0] ),
        .O(\estado[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF75FF)) 
    \estado[3]_i_4 
       (.I0(\cont[10]_i_9_n_0 ),
        .I1(cont[4]),
        .I2(cont[3]),
        .I3(cont[8]),
        .I4(\estado[3]_i_6_n_0 ),
        .O(\estado[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h56)) 
    \estado[3]_i_5 
       (.I0(\estado_reg_n_0_[3] ),
        .I1(\estado_reg_n_0_[1] ),
        .I2(\estado_reg_n_0_[2] ),
        .O(\estado[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hBF)) 
    \estado[3]_i_6 
       (.I0(cont[10]),
        .I1(cont[9]),
        .I2(cont[6]),
        .O(\estado[3]_i_6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[0] 
       (.C(CLK),
        .CE(\estado[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(\estado_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[1] 
       (.C(CLK),
        .CE(\estado[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(\estado_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[2] 
       (.C(CLK),
        .CE(\estado[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(\estado_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[3] 
       (.C(CLK),
        .CE(\estado[3]_i_1__0_n_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(\estado_reg_n_0_[3] ));
endmodule

module transmisor
   (TREADY,
    TX_OBUF,
    CLK,
    AR,
    TVALID,
    D);
  output TREADY;
  output TX_OBUF;
  input CLK;
  input [0:0]AR;
  input TVALID;
  input [7:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [7:0]D;
  wire TREADY;
  wire TREADY_i_1_n_0;
  wire TVALID;
  wire TX_OBUF;
  wire TX_i_1_n_0;
  wire TX_i_2_n_0;
  wire TX_i_3_n_0;
  wire \cont[0]_i_1_n_0 ;
  wire \cont[1]_i_1_n_0 ;
  wire \cont[2]_i_1_n_0 ;
  wire \cont[2]_i_2_n_0 ;
  wire \cont[2]_i_3_n_0 ;
  wire \cont[2]_i_4_n_0 ;
  wire \cont[3]_i_1__0_n_0 ;
  wire \cont[4]_i_1__0_n_0 ;
  wire \cont[4]_i_2__0_n_0 ;
  wire \cont[5]_i_1_n_0 ;
  wire \cont[5]_i_2_n_0 ;
  wire \cont[6]_i_1__0_n_0 ;
  wire \cont[6]_i_2__0_n_0 ;
  wire \cont[6]_i_3_n_0 ;
  wire \cont[6]_i_4_n_0 ;
  wire \cont[7]_i_1_n_0 ;
  wire \cont[8]_i_1_n_0 ;
  wire \cont[9]_i_1_n_0 ;
  wire \cont[9]_i_2_n_0 ;
  wire \cont[9]_i_3_n_0 ;
  wire \cont[9]_i_4_n_0 ;
  wire \cont[9]_i_5_n_0 ;
  wire \dato[7]_i_1_n_0 ;
  wire [9:2]datos;
  wire [3:0]estado;
  wire estado0;
  wire \estado[3]_i_3__0_n_0 ;
  wire \estado[3]_i_4__0_n_0 ;
  wire \estado_reg_n_0_[0] ;
  wire \estado_reg_n_0_[1] ;
  wire \estado_reg_n_0_[2] ;
  wire \estado_reg_n_0_[3] ;
  wire [9:0]sel0;

  LUT6 #(
    .INIT(64'h0000000100010001)) 
    TREADY_i_1
       (.I0(\estado_reg_n_0_[3] ),
        .I1(\estado_reg_n_0_[2] ),
        .I2(\estado_reg_n_0_[1] ),
        .I3(\estado_reg_n_0_[0] ),
        .I4(TREADY),
        .I5(TVALID),
        .O(TREADY_i_1_n_0));
  FDPE #(
    .INIT(1'b1)) 
    TREADY_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TREADY_i_1_n_0),
        .PRE(AR),
        .Q(TREADY));
  LUT6 #(
    .INIT(64'hFEAEFFFFFEAE0000)) 
    TX_i_1
       (.I0(\estado_reg_n_0_[1] ),
        .I1(datos[8]),
        .I2(\estado_reg_n_0_[0] ),
        .I3(datos[9]),
        .I4(\estado_reg_n_0_[3] ),
        .I5(TX_i_2_n_0),
        .O(TX_i_1_n_0));
  LUT6 #(
    .INIT(64'hB888B888BBBB88BB)) 
    TX_i_2
       (.I0(TX_i_3_n_0),
        .I1(\estado_reg_n_0_[2] ),
        .I2(datos[3]),
        .I3(\estado_reg_n_0_[1] ),
        .I4(datos[2]),
        .I5(\estado_reg_n_0_[0] ),
        .O(TX_i_2_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TX_i_3
       (.I0(datos[7]),
        .I1(datos[6]),
        .I2(\estado_reg_n_0_[1] ),
        .I3(datos[5]),
        .I4(\estado_reg_n_0_[0] ),
        .I5(datos[4]),
        .O(TX_i_3_n_0));
  FDPE #(
    .INIT(1'b1)) 
    TX_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TX_i_1_n_0),
        .PRE(AR),
        .Q(TX_OBUF));
  LUT5 #(
    .INIT(32'h55555554)) 
    \cont[0]_i_1 
       (.I0(sel0[0]),
        .I1(\estado_reg_n_0_[3] ),
        .I2(\estado_reg_n_0_[2] ),
        .I3(\estado_reg_n_0_[1] ),
        .I4(\estado_reg_n_0_[0] ),
        .O(\cont[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666660)) 
    \cont[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .I2(\estado_reg_n_0_[3] ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(\estado_reg_n_0_[1] ),
        .I5(\estado_reg_n_0_[0] ),
        .O(\cont[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0A0000000BF0F0F0)) 
    \cont[2]_i_1 
       (.I0(\cont[2]_i_2_n_0 ),
        .I1(\cont[2]_i_3_n_0 ),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(sel0[0]),
        .I5(\cont[2]_i_4_n_0 ),
        .O(\cont[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hCC80)) 
    \cont[2]_i_2 
       (.I0(\estado_reg_n_0_[1] ),
        .I1(\estado_reg_n_0_[3] ),
        .I2(\estado_reg_n_0_[0] ),
        .I3(\estado_reg_n_0_[2] ),
        .O(\cont[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004F00000000)) 
    \cont[2]_i_3 
       (.I0(sel0[7]),
        .I1(sel0[6]),
        .I2(sel0[8]),
        .I3(\estado[3]_i_3__0_n_0 ),
        .I4(sel0[3]),
        .I5(sel0[9]),
        .O(\cont[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \cont[2]_i_4 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[1] ),
        .I2(\estado_reg_n_0_[2] ),
        .I3(\estado_reg_n_0_[3] ),
        .O(\cont[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F004F4F004F0000)) 
    \cont[3]_i_1__0 
       (.I0(\cont[6]_i_2__0_n_0 ),
        .I1(\estado_reg_n_0_[1] ),
        .I2(\cont[6]_i_3_n_0 ),
        .I3(\cont[5]_i_2_n_0 ),
        .I4(sel0[2]),
        .I5(sel0[3]),
        .O(\cont[3]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h4F00004F)) 
    \cont[4]_i_1__0 
       (.I0(\cont[6]_i_2__0_n_0 ),
        .I1(\estado_reg_n_0_[1] ),
        .I2(\cont[6]_i_3_n_0 ),
        .I3(\cont[4]_i_2__0_n_0 ),
        .I4(sel0[4]),
        .O(\cont[4]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \cont[4]_i_2__0 
       (.I0(sel0[2]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[3]),
        .O(\cont[4]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hA2AAAAAA08000000)) 
    \cont[5]_i_1 
       (.I0(\cont[9]_i_3_n_0 ),
        .I1(sel0[3]),
        .I2(\cont[5]_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\cont[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \cont[5]_i_2 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .O(\cont[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2F23000000002F23)) 
    \cont[6]_i_1__0 
       (.I0(\estado_reg_n_0_[1] ),
        .I1(\cont[6]_i_2__0_n_0 ),
        .I2(\cont[6]_i_3_n_0 ),
        .I3(\cont[6]_i_4_n_0 ),
        .I4(sel0[6]),
        .I5(\cont[9]_i_2_n_0 ),
        .O(\cont[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001151)) 
    \cont[6]_i_2__0 
       (.I0(\cont[9]_i_4_n_0 ),
        .I1(sel0[8]),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .I4(\cont[5]_i_2_n_0 ),
        .I5(sel0[2]),
        .O(\cont[6]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'h1011)) 
    \cont[6]_i_3 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[2] ),
        .I2(\estado_reg_n_0_[1] ),
        .I3(\estado_reg_n_0_[3] ),
        .O(\cont[6]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \cont[6]_i_4 
       (.I0(\estado_reg_n_0_[3] ),
        .I1(\estado_reg_n_0_[1] ),
        .I2(\estado_reg_n_0_[2] ),
        .O(\cont[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h8A20)) 
    \cont[7]_i_1 
       (.I0(\cont[9]_i_3_n_0 ),
        .I1(\cont[9]_i_2_n_0 ),
        .I2(sel0[6]),
        .I3(sel0[7]),
        .O(\cont[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hA2AA0800)) 
    \cont[8]_i_1 
       (.I0(\cont[9]_i_3_n_0 ),
        .I1(sel0[6]),
        .I2(\cont[9]_i_2_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[8]),
        .O(\cont[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA6AAAAAA00000000)) 
    \cont[9]_i_1 
       (.I0(sel0[9]),
        .I1(sel0[6]),
        .I2(\cont[9]_i_2_n_0 ),
        .I3(sel0[7]),
        .I4(sel0[8]),
        .I5(\cont[9]_i_3_n_0 ),
        .O(\cont[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \cont[9]_i_2 
       (.I0(sel0[4]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .I4(sel0[3]),
        .I5(sel0[5]),
        .O(\cont[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0000FFFB)) 
    \cont[9]_i_3 
       (.I0(\cont[9]_i_4_n_0 ),
        .I1(\cont[9]_i_5_n_0 ),
        .I2(\cont[5]_i_2_n_0 ),
        .I3(sel0[2]),
        .I4(\cont[2]_i_4_n_0 ),
        .I5(\cont[2]_i_2_n_0 ),
        .O(\cont[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
    \cont[9]_i_4 
       (.I0(sel0[9]),
        .I1(sel0[3]),
        .I2(sel0[7]),
        .I3(sel0[5]),
        .I4(sel0[4]),
        .I5(sel0[8]),
        .O(\cont[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h5D)) 
    \cont[9]_i_5 
       (.I0(sel0[8]),
        .I1(sel0[6]),
        .I2(sel0[7]),
        .O(\cont[9]_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[0]_i_1_n_0 ),
        .Q(sel0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[1]_i_1_n_0 ),
        .Q(sel0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[2]_i_1_n_0 ),
        .Q(sel0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[3]_i_1__0_n_0 ),
        .Q(sel0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[4]_i_1__0_n_0 ),
        .Q(sel0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[5]_i_1_n_0 ),
        .Q(sel0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[6]_i_1__0_n_0 ),
        .Q(sel0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[7]_i_1_n_0 ),
        .Q(sel0[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[8]_i_1_n_0 ),
        .Q(sel0[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cont_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\cont[9]_i_1_n_0 ),
        .Q(sel0[9]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \dato[7]_i_1 
       (.I0(TREADY),
        .I1(TVALID),
        .I2(\estado_reg_n_0_[3] ),
        .I3(\estado_reg_n_0_[2] ),
        .I4(\estado_reg_n_0_[1] ),
        .I5(\estado_reg_n_0_[0] ),
        .O(\dato[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[0] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[0]),
        .Q(datos[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[1] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[1]),
        .Q(datos[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[2] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[2]),
        .Q(datos[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[3] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[3]),
        .Q(datos[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[4] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[4]),
        .Q(datos[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[5] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[5]),
        .Q(datos[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[6] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[6]),
        .Q(datos[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_reg[7] 
       (.C(CLK),
        .CE(\dato[7]_i_1_n_0 ),
        .CLR(AR),
        .D(D[7]),
        .Q(datos[9]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0155)) 
    \estado[0]_i_1__0 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[2] ),
        .I2(\estado_reg_n_0_[1] ),
        .I3(\estado_reg_n_0_[3] ),
        .O(estado[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h025A)) 
    \estado[1]_i_1__0 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[2] ),
        .I2(\estado_reg_n_0_[1] ),
        .I3(\estado_reg_n_0_[3] ),
        .O(estado[1]));
  (* \PinAttr:I1:HOLD_DETOUR  = "181" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \estado[2]_i_1__0 
       (.I0(\estado_reg_n_0_[1] ),
        .I1(\estado_reg_n_0_[0] ),
        .I2(\estado_reg_n_0_[2] ),
        .I3(\estado_reg_n_0_[3] ),
        .O(estado[2]));
  LUT6 #(
    .INIT(64'hF8F0F8FFF8F0F8F0)) 
    \estado[3]_i_1 
       (.I0(TREADY),
        .I1(TVALID),
        .I2(\cont[2]_i_2_n_0 ),
        .I3(\cont[2]_i_4_n_0 ),
        .I4(\estado[3]_i_3__0_n_0 ),
        .I5(\estado[3]_i_4__0_n_0 ),
        .O(estado0));
  (* \PinAttr:I0:HOLD_DETOUR  = "181" *) 
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0380)) 
    \estado[3]_i_2__0 
       (.I0(\estado_reg_n_0_[0] ),
        .I1(\estado_reg_n_0_[2] ),
        .I2(\estado_reg_n_0_[1] ),
        .I3(\estado_reg_n_0_[3] ),
        .O(estado[3]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \estado[3]_i_3__0 
       (.I0(sel0[8]),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[7]),
        .O(\estado[3]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \estado[3]_i_4__0 
       (.I0(sel0[2]),
        .I1(sel0[6]),
        .I2(sel0[3]),
        .I3(sel0[9]),
        .I4(sel0[0]),
        .I5(sel0[1]),
        .O(\estado[3]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[0] 
       (.C(CLK),
        .CE(estado0),
        .CLR(AR),
        .D(estado[0]),
        .Q(\estado_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[1] 
       (.C(CLK),
        .CE(estado0),
        .CLR(AR),
        .D(estado[1]),
        .Q(\estado_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[2] 
       (.C(CLK),
        .CE(estado0),
        .CLR(AR),
        .D(estado[2]),
        .Q(\estado_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \estado_reg[3] 
       (.C(CLK),
        .CE(estado0),
        .CLR(AR),
        .D(estado[3]),
        .Q(\estado_reg_n_0_[3] ));
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
