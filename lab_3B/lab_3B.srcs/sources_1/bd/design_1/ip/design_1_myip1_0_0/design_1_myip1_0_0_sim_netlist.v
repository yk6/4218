// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.3 (win64) Build 1682563 Mon Oct 10 19:07:27 MDT 2016
// Date        : Wed Oct 03 22:40:58 2018
// Host        : DESKTOP-1MJ901N running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/klosey/lab_3B/lab_3B.srcs/sources_1/bd/design_1/ip/design_1_myip1_0_0/design_1_myip1_0_0_sim_netlist.v
// Design      : design_1_myip1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_myip1_0_0,myip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "myip_v1_0,Vivado 2016.3" *) 
(* NotValidForBitStream *)
module design_1_myip1_0_0
   (ACLK,
    ARESETN,
    S_AXIS_TREADY,
    S_AXIS_TDATA,
    S_AXIS_TLAST,
    S_AXIS_TVALID,
    M_AXIS_TVALID,
    M_AXIS_TDATA,
    M_AXIS_TLAST,
    M_AXIS_TREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 ACLK CLK" *) input ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 ARESETN RST" *) input ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output S_AXIS_TREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) input [31:0]S_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TLAST" *) input S_AXIS_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input S_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output M_AXIS_TVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) output [31:0]M_AXIS_TDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TLAST" *) output M_AXIS_TLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input M_AXIS_TREADY;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [31:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;

  design_1_myip1_0_0_myip_v1_0 inst
       (.ACLK(ACLK),
        .ARESETN(ARESETN),
        .M_AXIS_TDATA(M_AXIS_TDATA),
        .M_AXIS_TLAST(M_AXIS_TLAST),
        .M_AXIS_TREADY(M_AXIS_TREADY),
        .M_AXIS_TVALID(M_AXIS_TVALID),
        .S_AXIS_TDATA(S_AXIS_TDATA),
        .S_AXIS_TREADY(S_AXIS_TREADY),
        .S_AXIS_TVALID(S_AXIS_TVALID));
endmodule

(* ORIG_REF_NAME = "myip_v1_0" *) 
module design_1_myip1_0_0_myip_v1_0
   (M_AXIS_TDATA,
    M_AXIS_TLAST,
    S_AXIS_TREADY,
    M_AXIS_TVALID,
    ACLK,
    ARESETN,
    S_AXIS_TVALID,
    M_AXIS_TREADY,
    S_AXIS_TDATA);
  output [31:0]M_AXIS_TDATA;
  output M_AXIS_TLAST;
  output S_AXIS_TREADY;
  output M_AXIS_TVALID;
  input ACLK;
  input ARESETN;
  input S_AXIS_TVALID;
  input M_AXIS_TREADY;
  input [31:0]S_AXIS_TDATA;

  wire ACLK;
  wire ARESETN;
  wire [31:0]M_AXIS_TDATA;
  wire M_AXIS_TLAST;
  wire M_AXIS_TLAST_INST_0_i_1_n_0;
  wire M_AXIS_TREADY;
  wire M_AXIS_TVALID;
  wire [31:0]S_AXIS_TDATA;
  wire S_AXIS_TREADY;
  wire S_AXIS_TVALID;
  wire [3:0]nr_of_reads;
  wire \nr_of_reads[0]_i_1_n_0 ;
  wire \nr_of_reads[1]_i_1_n_0 ;
  wire \nr_of_reads[2]_i_1_n_0 ;
  wire \nr_of_reads[3]_i_1_n_0 ;
  wire \nr_of_reads[3]_i_2_n_0 ;
  wire nr_of_writes;
  wire \nr_of_writes[0]_i_1_n_0 ;
  wire \nr_of_writes[1]_i_1_n_0 ;
  wire \nr_of_writes[2]_i_1_n_0 ;
  wire \nr_of_writes[3]_i_1_n_0 ;
  wire \nr_of_writes[3]_i_2_n_0 ;
  wire \nr_of_writes_reg_n_0_[0] ;
  wire \nr_of_writes_reg_n_0_[1] ;
  wire \nr_of_writes_reg_n_0_[2] ;
  wire \nr_of_writes_reg_n_0_[3] ;
  wire p_0_in;
  wire [31:0]p_2_in;
  wire state;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state_reg_n_0_[0] ;
  wire \state_reg_n_0_[1] ;
  wire \state_reg_n_0_[2] ;
  wire [31:0]sum0;
  wire sum0_carry__0_i_1_n_0;
  wire sum0_carry__0_i_2_n_0;
  wire sum0_carry__0_i_3_n_0;
  wire sum0_carry__0_i_4_n_0;
  wire sum0_carry__0_n_0;
  wire sum0_carry__0_n_1;
  wire sum0_carry__0_n_2;
  wire sum0_carry__0_n_3;
  wire sum0_carry__1_i_1_n_0;
  wire sum0_carry__1_i_2_n_0;
  wire sum0_carry__1_i_3_n_0;
  wire sum0_carry__1_i_4_n_0;
  wire sum0_carry__1_n_0;
  wire sum0_carry__1_n_1;
  wire sum0_carry__1_n_2;
  wire sum0_carry__1_n_3;
  wire sum0_carry__2_i_1_n_0;
  wire sum0_carry__2_i_2_n_0;
  wire sum0_carry__2_i_3_n_0;
  wire sum0_carry__2_i_4_n_0;
  wire sum0_carry__2_n_0;
  wire sum0_carry__2_n_1;
  wire sum0_carry__2_n_2;
  wire sum0_carry__2_n_3;
  wire sum0_carry__3_i_1_n_0;
  wire sum0_carry__3_i_2_n_0;
  wire sum0_carry__3_i_3_n_0;
  wire sum0_carry__3_i_4_n_0;
  wire sum0_carry__3_n_0;
  wire sum0_carry__3_n_1;
  wire sum0_carry__3_n_2;
  wire sum0_carry__3_n_3;
  wire sum0_carry__4_i_1_n_0;
  wire sum0_carry__4_i_2_n_0;
  wire sum0_carry__4_i_3_n_0;
  wire sum0_carry__4_i_4_n_0;
  wire sum0_carry__4_n_0;
  wire sum0_carry__4_n_1;
  wire sum0_carry__4_n_2;
  wire sum0_carry__4_n_3;
  wire sum0_carry__5_i_1_n_0;
  wire sum0_carry__5_i_2_n_0;
  wire sum0_carry__5_i_3_n_0;
  wire sum0_carry__5_i_4_n_0;
  wire sum0_carry__5_n_0;
  wire sum0_carry__5_n_1;
  wire sum0_carry__5_n_2;
  wire sum0_carry__5_n_3;
  wire sum0_carry__6_i_1_n_0;
  wire sum0_carry__6_i_2_n_0;
  wire sum0_carry__6_i_3_n_0;
  wire sum0_carry__6_i_4_n_0;
  wire sum0_carry__6_n_1;
  wire sum0_carry__6_n_2;
  wire sum0_carry__6_n_3;
  wire sum0_carry_i_1_n_0;
  wire sum0_carry_i_2_n_0;
  wire sum0_carry_i_3_n_0;
  wire sum0_carry_i_4_n_0;
  wire sum0_carry_n_0;
  wire sum0_carry_n_1;
  wire sum0_carry_n_2;
  wire sum0_carry_n_3;
  wire \sum[31]_i_2_n_0 ;
  wire [3:3]NLW_sum0_carry__6_CO_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    M_AXIS_TLAST_INST_0
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(M_AXIS_TLAST_INST_0_i_1_n_0),
        .O(M_AXIS_TLAST));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    M_AXIS_TLAST_INST_0_i_1
       (.I0(\nr_of_writes_reg_n_0_[3] ),
        .I1(\nr_of_writes_reg_n_0_[2] ),
        .I2(\nr_of_writes_reg_n_0_[0] ),
        .I3(\nr_of_writes_reg_n_0_[1] ),
        .O(M_AXIS_TLAST_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h04)) 
    M_AXIS_TVALID_INST_0
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state_reg_n_0_[0] ),
        .I2(\state_reg_n_0_[1] ),
        .O(M_AXIS_TVALID));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    S_AXIS_TREADY_INST_0
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .O(S_AXIS_TREADY));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \nr_of_reads[0]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(nr_of_reads[0]),
        .O(\nr_of_reads[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \nr_of_reads[1]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(nr_of_reads[1]),
        .I2(nr_of_reads[0]),
        .O(\nr_of_reads[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h4441)) 
    \nr_of_reads[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(nr_of_reads[2]),
        .I2(nr_of_reads[0]),
        .I3(nr_of_reads[1]),
        .O(\nr_of_reads[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00400440)) 
    \nr_of_reads[3]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(S_AXIS_TVALID),
        .I2(\state_reg_n_0_[2] ),
        .I3(\state_reg_n_0_[1] ),
        .I4(nr_of_writes),
        .O(\nr_of_reads[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h44444441)) 
    \nr_of_reads[3]_i_2 
       (.I0(\state_reg_n_0_[2] ),
        .I1(nr_of_reads[3]),
        .I2(nr_of_reads[1]),
        .I3(nr_of_reads[0]),
        .I4(nr_of_reads[2]),
        .O(\nr_of_reads[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \nr_of_reads[3]_i_3 
       (.I0(nr_of_reads[3]),
        .I1(nr_of_reads[2]),
        .I2(nr_of_reads[0]),
        .I3(nr_of_reads[1]),
        .O(nr_of_writes));
  FDRE \nr_of_reads_reg[0] 
       (.C(ACLK),
        .CE(\nr_of_reads[3]_i_1_n_0 ),
        .D(\nr_of_reads[0]_i_1_n_0 ),
        .Q(nr_of_reads[0]),
        .R(p_0_in));
  FDRE \nr_of_reads_reg[1] 
       (.C(ACLK),
        .CE(\nr_of_reads[3]_i_1_n_0 ),
        .D(\nr_of_reads[1]_i_1_n_0 ),
        .Q(nr_of_reads[1]),
        .R(p_0_in));
  FDRE \nr_of_reads_reg[2] 
       (.C(ACLK),
        .CE(\nr_of_reads[3]_i_1_n_0 ),
        .D(\nr_of_reads[2]_i_1_n_0 ),
        .Q(nr_of_reads[2]),
        .R(p_0_in));
  FDRE \nr_of_reads_reg[3] 
       (.C(ACLK),
        .CE(\nr_of_reads[3]_i_1_n_0 ),
        .D(\nr_of_reads[3]_i_2_n_0 ),
        .Q(nr_of_reads[3]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \nr_of_writes[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\nr_of_writes_reg_n_0_[0] ),
        .O(\nr_of_writes[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hD7)) 
    \nr_of_writes[1]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\nr_of_writes_reg_n_0_[1] ),
        .I2(\nr_of_writes_reg_n_0_[0] ),
        .O(\nr_of_writes[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h4441)) 
    \nr_of_writes[2]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\nr_of_writes_reg_n_0_[2] ),
        .I2(\nr_of_writes_reg_n_0_[0] ),
        .I3(\nr_of_writes_reg_n_0_[1] ),
        .O(\nr_of_writes[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F004000000040)) 
    \nr_of_writes[3]_i_1 
       (.I0(M_AXIS_TLAST_INST_0_i_1_n_0),
        .I1(M_AXIS_TREADY),
        .I2(\state_reg_n_0_[0] ),
        .I3(\state_reg_n_0_[2] ),
        .I4(\state_reg_n_0_[1] ),
        .I5(state),
        .O(\nr_of_writes[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h44444441)) 
    \nr_of_writes[3]_i_2 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\nr_of_writes_reg_n_0_[3] ),
        .I2(\nr_of_writes_reg_n_0_[1] ),
        .I3(\nr_of_writes_reg_n_0_[0] ),
        .I4(\nr_of_writes_reg_n_0_[2] ),
        .O(\nr_of_writes[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \nr_of_writes[3]_i_3 
       (.I0(S_AXIS_TVALID),
        .I1(nr_of_reads[1]),
        .I2(nr_of_reads[0]),
        .I3(nr_of_reads[2]),
        .I4(nr_of_reads[3]),
        .O(state));
  FDRE \nr_of_writes_reg[0] 
       (.C(ACLK),
        .CE(\nr_of_writes[3]_i_1_n_0 ),
        .D(\nr_of_writes[0]_i_1_n_0 ),
        .Q(\nr_of_writes_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \nr_of_writes_reg[1] 
       (.C(ACLK),
        .CE(\nr_of_writes[3]_i_1_n_0 ),
        .D(\nr_of_writes[1]_i_1_n_0 ),
        .Q(\nr_of_writes_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \nr_of_writes_reg[2] 
       (.C(ACLK),
        .CE(\nr_of_writes[3]_i_1_n_0 ),
        .D(\nr_of_writes[2]_i_1_n_0 ),
        .Q(\nr_of_writes_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \nr_of_writes_reg[3] 
       (.C(ACLK),
        .CE(\nr_of_writes[3]_i_1_n_0 ),
        .D(\nr_of_writes[3]_i_2_n_0 ),
        .Q(\nr_of_writes_reg_n_0_[3] ),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \state[0]_i_1 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(ARESETN),
        .O(\state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hE200)) 
    \state[1]_i_1 
       (.I0(\state_reg_n_0_[1] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[2] ),
        .I3(ARESETN),
        .O(\state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h26FF)) 
    \state[2]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(\state[2]_i_2_n_0 ),
        .I2(\state_reg_n_0_[1] ),
        .I3(ARESETN),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0033308800003088)) 
    \state[2]_i_2 
       (.I0(\state[2]_i_3_n_0 ),
        .I1(\state_reg_n_0_[0] ),
        .I2(state),
        .I3(\state_reg_n_0_[1] ),
        .I4(\state_reg_n_0_[2] ),
        .I5(S_AXIS_TVALID),
        .O(\state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \state[2]_i_3 
       (.I0(M_AXIS_TREADY),
        .I1(\nr_of_writes_reg_n_0_[1] ),
        .I2(\nr_of_writes_reg_n_0_[0] ),
        .I3(\nr_of_writes_reg_n_0_[2] ),
        .I4(\nr_of_writes_reg_n_0_[3] ),
        .O(\state[2]_i_3_n_0 ));
  FDRE \state_reg[0] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .Q(\state_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \state_reg[1] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\state[1]_i_1_n_0 ),
        .Q(\state_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \state_reg[2] 
       (.C(ACLK),
        .CE(1'b1),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ),
        .R(1'b0));
  CARRY4 sum0_carry
       (.CI(1'b0),
        .CO({sum0_carry_n_0,sum0_carry_n_1,sum0_carry_n_2,sum0_carry_n_3}),
        .CYINIT(1'b0),
        .DI(M_AXIS_TDATA[3:0]),
        .O(sum0[3:0]),
        .S({sum0_carry_i_1_n_0,sum0_carry_i_2_n_0,sum0_carry_i_3_n_0,sum0_carry_i_4_n_0}));
  CARRY4 sum0_carry__0
       (.CI(sum0_carry_n_0),
        .CO({sum0_carry__0_n_0,sum0_carry__0_n_1,sum0_carry__0_n_2,sum0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(M_AXIS_TDATA[7:4]),
        .O(sum0[7:4]),
        .S({sum0_carry__0_i_1_n_0,sum0_carry__0_i_2_n_0,sum0_carry__0_i_3_n_0,sum0_carry__0_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_1
       (.I0(M_AXIS_TDATA[7]),
        .I1(S_AXIS_TDATA[7]),
        .O(sum0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_2
       (.I0(M_AXIS_TDATA[6]),
        .I1(S_AXIS_TDATA[6]),
        .O(sum0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_3
       (.I0(M_AXIS_TDATA[5]),
        .I1(S_AXIS_TDATA[5]),
        .O(sum0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__0_i_4
       (.I0(M_AXIS_TDATA[4]),
        .I1(S_AXIS_TDATA[4]),
        .O(sum0_carry__0_i_4_n_0));
  CARRY4 sum0_carry__1
       (.CI(sum0_carry__0_n_0),
        .CO({sum0_carry__1_n_0,sum0_carry__1_n_1,sum0_carry__1_n_2,sum0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(M_AXIS_TDATA[11:8]),
        .O(sum0[11:8]),
        .S({sum0_carry__1_i_1_n_0,sum0_carry__1_i_2_n_0,sum0_carry__1_i_3_n_0,sum0_carry__1_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_1
       (.I0(M_AXIS_TDATA[11]),
        .I1(S_AXIS_TDATA[11]),
        .O(sum0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_2
       (.I0(M_AXIS_TDATA[10]),
        .I1(S_AXIS_TDATA[10]),
        .O(sum0_carry__1_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_3
       (.I0(M_AXIS_TDATA[9]),
        .I1(S_AXIS_TDATA[9]),
        .O(sum0_carry__1_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__1_i_4
       (.I0(M_AXIS_TDATA[8]),
        .I1(S_AXIS_TDATA[8]),
        .O(sum0_carry__1_i_4_n_0));
  CARRY4 sum0_carry__2
       (.CI(sum0_carry__1_n_0),
        .CO({sum0_carry__2_n_0,sum0_carry__2_n_1,sum0_carry__2_n_2,sum0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(M_AXIS_TDATA[15:12]),
        .O(sum0[15:12]),
        .S({sum0_carry__2_i_1_n_0,sum0_carry__2_i_2_n_0,sum0_carry__2_i_3_n_0,sum0_carry__2_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_1
       (.I0(M_AXIS_TDATA[15]),
        .I1(S_AXIS_TDATA[15]),
        .O(sum0_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_2
       (.I0(M_AXIS_TDATA[14]),
        .I1(S_AXIS_TDATA[14]),
        .O(sum0_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_3
       (.I0(M_AXIS_TDATA[13]),
        .I1(S_AXIS_TDATA[13]),
        .O(sum0_carry__2_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__2_i_4
       (.I0(M_AXIS_TDATA[12]),
        .I1(S_AXIS_TDATA[12]),
        .O(sum0_carry__2_i_4_n_0));
  CARRY4 sum0_carry__3
       (.CI(sum0_carry__2_n_0),
        .CO({sum0_carry__3_n_0,sum0_carry__3_n_1,sum0_carry__3_n_2,sum0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(M_AXIS_TDATA[19:16]),
        .O(sum0[19:16]),
        .S({sum0_carry__3_i_1_n_0,sum0_carry__3_i_2_n_0,sum0_carry__3_i_3_n_0,sum0_carry__3_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__3_i_1
       (.I0(M_AXIS_TDATA[19]),
        .I1(S_AXIS_TDATA[19]),
        .O(sum0_carry__3_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__3_i_2
       (.I0(M_AXIS_TDATA[18]),
        .I1(S_AXIS_TDATA[18]),
        .O(sum0_carry__3_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__3_i_3
       (.I0(M_AXIS_TDATA[17]),
        .I1(S_AXIS_TDATA[17]),
        .O(sum0_carry__3_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__3_i_4
       (.I0(M_AXIS_TDATA[16]),
        .I1(S_AXIS_TDATA[16]),
        .O(sum0_carry__3_i_4_n_0));
  CARRY4 sum0_carry__4
       (.CI(sum0_carry__3_n_0),
        .CO({sum0_carry__4_n_0,sum0_carry__4_n_1,sum0_carry__4_n_2,sum0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI(M_AXIS_TDATA[23:20]),
        .O(sum0[23:20]),
        .S({sum0_carry__4_i_1_n_0,sum0_carry__4_i_2_n_0,sum0_carry__4_i_3_n_0,sum0_carry__4_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__4_i_1
       (.I0(M_AXIS_TDATA[23]),
        .I1(S_AXIS_TDATA[23]),
        .O(sum0_carry__4_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__4_i_2
       (.I0(M_AXIS_TDATA[22]),
        .I1(S_AXIS_TDATA[22]),
        .O(sum0_carry__4_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__4_i_3
       (.I0(M_AXIS_TDATA[21]),
        .I1(S_AXIS_TDATA[21]),
        .O(sum0_carry__4_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__4_i_4
       (.I0(M_AXIS_TDATA[20]),
        .I1(S_AXIS_TDATA[20]),
        .O(sum0_carry__4_i_4_n_0));
  CARRY4 sum0_carry__5
       (.CI(sum0_carry__4_n_0),
        .CO({sum0_carry__5_n_0,sum0_carry__5_n_1,sum0_carry__5_n_2,sum0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI(M_AXIS_TDATA[27:24]),
        .O(sum0[27:24]),
        .S({sum0_carry__5_i_1_n_0,sum0_carry__5_i_2_n_0,sum0_carry__5_i_3_n_0,sum0_carry__5_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__5_i_1
       (.I0(M_AXIS_TDATA[27]),
        .I1(S_AXIS_TDATA[27]),
        .O(sum0_carry__5_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__5_i_2
       (.I0(M_AXIS_TDATA[26]),
        .I1(S_AXIS_TDATA[26]),
        .O(sum0_carry__5_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__5_i_3
       (.I0(M_AXIS_TDATA[25]),
        .I1(S_AXIS_TDATA[25]),
        .O(sum0_carry__5_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__5_i_4
       (.I0(M_AXIS_TDATA[24]),
        .I1(S_AXIS_TDATA[24]),
        .O(sum0_carry__5_i_4_n_0));
  CARRY4 sum0_carry__6
       (.CI(sum0_carry__5_n_0),
        .CO({NLW_sum0_carry__6_CO_UNCONNECTED[3],sum0_carry__6_n_1,sum0_carry__6_n_2,sum0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,M_AXIS_TDATA[30:28]}),
        .O(sum0[31:28]),
        .S({sum0_carry__6_i_1_n_0,sum0_carry__6_i_2_n_0,sum0_carry__6_i_3_n_0,sum0_carry__6_i_4_n_0}));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__6_i_1
       (.I0(M_AXIS_TDATA[31]),
        .I1(S_AXIS_TDATA[31]),
        .O(sum0_carry__6_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__6_i_2
       (.I0(M_AXIS_TDATA[30]),
        .I1(S_AXIS_TDATA[30]),
        .O(sum0_carry__6_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__6_i_3
       (.I0(M_AXIS_TDATA[29]),
        .I1(S_AXIS_TDATA[29]),
        .O(sum0_carry__6_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry__6_i_4
       (.I0(M_AXIS_TDATA[28]),
        .I1(S_AXIS_TDATA[28]),
        .O(sum0_carry__6_i_4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_1
       (.I0(M_AXIS_TDATA[3]),
        .I1(S_AXIS_TDATA[3]),
        .O(sum0_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_2
       (.I0(M_AXIS_TDATA[2]),
        .I1(S_AXIS_TDATA[2]),
        .O(sum0_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_3
       (.I0(M_AXIS_TDATA[1]),
        .I1(S_AXIS_TDATA[1]),
        .O(sum0_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    sum0_carry_i_4
       (.I0(M_AXIS_TDATA[0]),
        .I1(S_AXIS_TDATA[0]),
        .O(sum0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[0]_i_1 
       (.I0(sum0[0]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[10]_i_1 
       (.I0(sum0[10]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[11]_i_1 
       (.I0(sum0[11]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[12]_i_1 
       (.I0(sum0[12]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[13]_i_1 
       (.I0(sum0[13]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[14]_i_1 
       (.I0(sum0[14]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[15]_i_1 
       (.I0(sum0[15]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[16]_i_1 
       (.I0(sum0[16]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[17]_i_1 
       (.I0(sum0[17]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[18]_i_1 
       (.I0(sum0[18]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[19]_i_1 
       (.I0(sum0[19]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[1]_i_1 
       (.I0(sum0[1]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[20]_i_1 
       (.I0(sum0[20]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[21]_i_1 
       (.I0(sum0[21]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[22]_i_1 
       (.I0(sum0[22]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[23]_i_1 
       (.I0(sum0[23]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[24]_i_1 
       (.I0(sum0[24]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[25]_i_1 
       (.I0(sum0[25]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[26]_i_1 
       (.I0(sum0[26]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[27]_i_1 
       (.I0(sum0[27]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[28]_i_1 
       (.I0(sum0[28]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[29]_i_1 
       (.I0(sum0[29]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[2]_i_1 
       (.I0(sum0[2]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[30]_i_1 
       (.I0(sum0[30]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \sum[31]_i_1 
       (.I0(ARESETN),
        .O(p_0_in));
  LUT4 #(
    .INIT(16'h1400)) 
    \sum[31]_i_2 
       (.I0(\state_reg_n_0_[0] ),
        .I1(\state_reg_n_0_[1] ),
        .I2(\state_reg_n_0_[2] ),
        .I3(S_AXIS_TVALID),
        .O(\sum[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[31]_i_3 
       (.I0(sum0[31]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[3]_i_1 
       (.I0(sum0[3]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[4]_i_1 
       (.I0(sum0[4]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[5]_i_1 
       (.I0(sum0[5]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[6]_i_1 
       (.I0(sum0[6]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[7]_i_1 
       (.I0(sum0[7]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[8]_i_1 
       (.I0(sum0[8]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[9]_i_1 
       (.I0(sum0[9]),
        .I1(\state_reg_n_0_[2] ),
        .O(p_2_in[9]));
  FDRE \sum_reg[0] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[0]),
        .Q(M_AXIS_TDATA[0]),
        .R(p_0_in));
  FDRE \sum_reg[10] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[10]),
        .Q(M_AXIS_TDATA[10]),
        .R(p_0_in));
  FDRE \sum_reg[11] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[11]),
        .Q(M_AXIS_TDATA[11]),
        .R(p_0_in));
  FDRE \sum_reg[12] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[12]),
        .Q(M_AXIS_TDATA[12]),
        .R(p_0_in));
  FDRE \sum_reg[13] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[13]),
        .Q(M_AXIS_TDATA[13]),
        .R(p_0_in));
  FDRE \sum_reg[14] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[14]),
        .Q(M_AXIS_TDATA[14]),
        .R(p_0_in));
  FDRE \sum_reg[15] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[15]),
        .Q(M_AXIS_TDATA[15]),
        .R(p_0_in));
  FDRE \sum_reg[16] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[16]),
        .Q(M_AXIS_TDATA[16]),
        .R(p_0_in));
  FDRE \sum_reg[17] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[17]),
        .Q(M_AXIS_TDATA[17]),
        .R(p_0_in));
  FDRE \sum_reg[18] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[18]),
        .Q(M_AXIS_TDATA[18]),
        .R(p_0_in));
  FDRE \sum_reg[19] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[19]),
        .Q(M_AXIS_TDATA[19]),
        .R(p_0_in));
  FDRE \sum_reg[1] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[1]),
        .Q(M_AXIS_TDATA[1]),
        .R(p_0_in));
  FDRE \sum_reg[20] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[20]),
        .Q(M_AXIS_TDATA[20]),
        .R(p_0_in));
  FDRE \sum_reg[21] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[21]),
        .Q(M_AXIS_TDATA[21]),
        .R(p_0_in));
  FDRE \sum_reg[22] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[22]),
        .Q(M_AXIS_TDATA[22]),
        .R(p_0_in));
  FDRE \sum_reg[23] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[23]),
        .Q(M_AXIS_TDATA[23]),
        .R(p_0_in));
  FDRE \sum_reg[24] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[24]),
        .Q(M_AXIS_TDATA[24]),
        .R(p_0_in));
  FDRE \sum_reg[25] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[25]),
        .Q(M_AXIS_TDATA[25]),
        .R(p_0_in));
  FDRE \sum_reg[26] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[26]),
        .Q(M_AXIS_TDATA[26]),
        .R(p_0_in));
  FDRE \sum_reg[27] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[27]),
        .Q(M_AXIS_TDATA[27]),
        .R(p_0_in));
  FDRE \sum_reg[28] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[28]),
        .Q(M_AXIS_TDATA[28]),
        .R(p_0_in));
  FDRE \sum_reg[29] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[29]),
        .Q(M_AXIS_TDATA[29]),
        .R(p_0_in));
  FDRE \sum_reg[2] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[2]),
        .Q(M_AXIS_TDATA[2]),
        .R(p_0_in));
  FDRE \sum_reg[30] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[30]),
        .Q(M_AXIS_TDATA[30]),
        .R(p_0_in));
  FDRE \sum_reg[31] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[31]),
        .Q(M_AXIS_TDATA[31]),
        .R(p_0_in));
  FDRE \sum_reg[3] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[3]),
        .Q(M_AXIS_TDATA[3]),
        .R(p_0_in));
  FDRE \sum_reg[4] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[4]),
        .Q(M_AXIS_TDATA[4]),
        .R(p_0_in));
  FDRE \sum_reg[5] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[5]),
        .Q(M_AXIS_TDATA[5]),
        .R(p_0_in));
  FDRE \sum_reg[6] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[6]),
        .Q(M_AXIS_TDATA[6]),
        .R(p_0_in));
  FDRE \sum_reg[7] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[7]),
        .Q(M_AXIS_TDATA[7]),
        .R(p_0_in));
  FDRE \sum_reg[8] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[8]),
        .Q(M_AXIS_TDATA[8]),
        .R(p_0_in));
  FDRE \sum_reg[9] 
       (.C(ACLK),
        .CE(\sum[31]_i_2_n_0 ),
        .D(p_2_in[9]),
        .Q(M_AXIS_TDATA[9]),
        .R(p_0_in));
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

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
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
