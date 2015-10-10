////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: nec_decoder_synthesis.v
// /___/   /\     Timestamp: Sat Oct 10 10:27:51 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim nec_decoder.ngc nec_decoder_synthesis.v 
// Device	: xc3s250e-4-vq100
// Input file	: nec_decoder.ngc
// Output file	: C:\Users\Gaurav\Documents\FPGA\Xilinx ISE\NECIR_Decoder\nec_decoder\netgen\synthesis\nec_decoder_synthesis.v
// # of Modules	: 1
// Design Name	: nec_decoder
// Xilinx        : C:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module nec_decoder (
  clk, IR, repeat_code, dataready, address, data
);
  input clk;
  input IR;
  output repeat_code;
  output dataready;
  output [7 : 0] address;
  output [7 : 0] data;
  wire IR_IBUF_1;
  wire \Madd_old_outtimer_2_add0000_cy<10>_rt_6 ;
  wire \Madd_old_outtimer_2_add0000_cy<11>_rt_8 ;
  wire \Madd_old_outtimer_2_add0000_cy<12>_rt_10 ;
  wire \Madd_old_outtimer_2_add0000_cy<13>_rt_12 ;
  wire \Madd_old_outtimer_2_add0000_cy<14>_rt_14 ;
  wire \Madd_old_outtimer_2_add0000_cy<15>_rt_16 ;
  wire \Madd_old_outtimer_2_add0000_cy<16>_rt_18 ;
  wire \Madd_old_outtimer_2_add0000_cy<17>_rt_20 ;
  wire \Madd_old_outtimer_2_add0000_cy<18>_rt_22 ;
  wire \Madd_old_outtimer_2_add0000_cy<19>_rt_24 ;
  wire \Madd_old_outtimer_2_add0000_cy<1>_rt_26 ;
  wire \Madd_old_outtimer_2_add0000_cy<20>_rt_28 ;
  wire \Madd_old_outtimer_2_add0000_cy<21>_rt_30 ;
  wire \Madd_old_outtimer_2_add0000_cy<22>_rt_32 ;
  wire \Madd_old_outtimer_2_add0000_cy<2>_rt_34 ;
  wire \Madd_old_outtimer_2_add0000_cy<3>_rt_36 ;
  wire \Madd_old_outtimer_2_add0000_cy<4>_rt_38 ;
  wire \Madd_old_outtimer_2_add0000_cy<5>_rt_40 ;
  wire \Madd_old_outtimer_2_add0000_cy<6>_rt_42 ;
  wire \Madd_old_outtimer_2_add0000_cy<7>_rt_44 ;
  wire \Madd_old_outtimer_2_add0000_cy<8>_rt_46 ;
  wire \Madd_old_outtimer_2_add0000_cy<9>_rt_48 ;
  wire \Madd_old_outtimer_2_add0000_xor<23>_rt_50 ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_cy<5>_rt_60 ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[0] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[10] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[11] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[12] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[1] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[2] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[3] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[4] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[6] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[7] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[8] ;
  wire \Mcompar_TIMEOUT_cmp_gt0002_lut[9] ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<0>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<1>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<2>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<3>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<4>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<4>_0_rt_87 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<5>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_cy<6>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_lut<0>1 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_lut<1>1_96 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_lut<2>1_98 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_lut<3>1_100 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_lut<5>1_103 ;
  wire \Mcompar_TIMEOUT_cmp_gt0003_lut<6>1 ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_cy<1>_rt_112 ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_cy<2>_rt_114 ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_cy<3>_rt_116 ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_cy<4>_rt_118 ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[0] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[10] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[11] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[12] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[5] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[6] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[7] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[8] ;
  wire \Mcompar_TIMEOUT_cmp_lt0001_lut[9] ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_cy<2>_rt_136 ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_cy<4>_rt_139 ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_cy<6>_rt_142 ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_lut[0] ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_lut[1] ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_lut[3] ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_lut[5] ;
  wire \Mcompar_TIMEOUT_cmp_lt0002_lut[7] ;
  wire Mcount_outtimer;
  wire Mcount_outtimer1;
  wire Mcount_outtimer10;
  wire Mcount_outtimer11;
  wire Mcount_outtimer12;
  wire Mcount_outtimer13;
  wire Mcount_outtimer14;
  wire Mcount_outtimer15;
  wire Mcount_outtimer16;
  wire Mcount_outtimer17;
  wire Mcount_outtimer18;
  wire Mcount_outtimer19;
  wire Mcount_outtimer2;
  wire Mcount_outtimer20;
  wire Mcount_outtimer21;
  wire Mcount_outtimer22;
  wire Mcount_outtimer23;
  wire Mcount_outtimer3;
  wire Mcount_outtimer4;
  wire Mcount_outtimer5;
  wire Mcount_outtimer6;
  wire Mcount_outtimer7;
  wire Mcount_outtimer8;
  wire Mcount_outtimer9;
  wire N0;
  wire N02;
  wire N1;
  wire N100;
  wire N102;
  wire N103;
  wire N105;
  wire N106;
  wire N108;
  wire N109;
  wire N113;
  wire N114;
  wire N116;
  wire N117;
  wire N119;
  wire N120;
  wire N122;
  wire N123;
  wire N125;
  wire N126;
  wire N128;
  wire N129;
  wire N131;
  wire N132;
  wire N133;
  wire N134;
  wire N135;
  wire N136;
  wire N137;
  wire N138;
  wire N139;
  wire N14;
  wire N140;
  wire N141;
  wire N142;
  wire N143;
  wire N144;
  wire N145;
  wire N146;
  wire N147;
  wire N148;
  wire N149;
  wire N150;
  wire N151;
  wire N152;
  wire N153;
  wire N154;
  wire N155;
  wire N156;
  wire N157;
  wire N158;
  wire N159;
  wire N160;
  wire N161;
  wire N162;
  wire N163;
  wire N164;
  wire N165;
  wire N166;
  wire N167;
  wire N168;
  wire N171;
  wire N173;
  wire N175;
  wire N177;
  wire N181;
  wire N183;
  wire N187;
  wire N188;
  wire N189;
  wire N190;
  wire N191;
  wire N192;
  wire N193;
  wire N194;
  wire N195;
  wire N196;
  wire N197;
  wire N198;
  wire N199;
  wire N2;
  wire N200;
  wire N201;
  wire N202;
  wire N203;
  wire N204;
  wire N205;
  wire N206;
  wire N207;
  wire N208;
  wire N209;
  wire N210;
  wire N211;
  wire N212;
  wire N213;
  wire N214;
  wire N215;
  wire N216;
  wire N217;
  wire N29;
  wire N3;
  wire N311;
  wire N32;
  wire N39;
  wire N43;
  wire N45;
  wire N47;
  wire N51;
  wire N54;
  wire N60;
  wire N61;
  wire N63;
  wire N64;
  wire N68;
  wire N71;
  wire N73;
  wire N76;
  wire N79;
  wire N82;
  wire N83;
  wire N85;
  wire N86;
  wire N88;
  wire N89;
  wire N91;
  wire N92;
  wire N94;
  wire N96;
  wire N97;
  wire N99;
  wire PREPULSE_FSM_FFd1_350;
  wire \PREPULSE_FSM_FFd1-In ;
  wire \PREPULSE_FSM_FFd1-In13_352 ;
  wire PREPULSE_FSM_FFd2_353;
  wire \PREPULSE_FSM_FFd2-In_354 ;
  wire PREPULSE_FSM_N0;
  wire PREPULSE_cmp_eq0000;
  wire PREPULSE_or0000;
  wire PREPULSE_or0002;
  wire \Result<4>1 ;
  wire \Result<4>11_365 ;
  wire TIMEOUT_FSM_FFd1_366;
  wire \TIMEOUT_FSM_FFd1-In_367 ;
  wire \TIMEOUT_FSM_FFd1-In127_368 ;
  wire TIMEOUT_FSM_FFd2_369;
  wire \TIMEOUT_FSM_FFd2-In_370 ;
  wire TIMEOUT_FSM_N0;
  wire TIMEOUT_cmp_eq0001;
  wire TIMEOUT_cmp_gt0000;
  wire TIMEOUT_cmp_gt000012_374;
  wire TIMEOUT_cmp_gt0000127_375;
  wire TIMEOUT_cmp_gt0000142_376;
  wire TIMEOUT_cmp_gt0001;
  wire TIMEOUT_cmp_lt0000;
  wire TIMEOUT_not0001_379;
  wire TIMEOUT_xor0000;
  wire TIMEOUT_xor0000_inv;
  wire _mux0000;
  wire _mux0001;
  wire _mux0002;
  wire _mux0003;
  wire _mux0004;
  wire _mux0005;
  wire _mux0006;
  wire _mux0007;
  wire _mux0008;
  wire _mux0009;
  wire _mux0010;
  wire _mux0011;
  wire _mux0012;
  wire _mux0013;
  wire _mux0014;
  wire _mux0015;
  wire _mux0016;
  wire _mux0017;
  wire _mux0018;
  wire _mux0019;
  wire _mux0020;
  wire _mux0021;
  wire _mux0022;
  wire _mux0023;
  wire _mux0024;
  wire _mux0025;
  wire _mux0026;
  wire _mux0027;
  wire _mux0028;
  wire _mux0030;
  wire address_0_420;
  wire address_1_421;
  wire address_2_422;
  wire address_3_423;
  wire address_4_424;
  wire address_5_425;
  wire address_6_426;
  wire address_7_427;
  wire address_not0001;
  wire clear_429;
  wire clear_cmp_eq0000;
  wire clear_cmp_eq00001_431;
  wire clk_BUFGP_433;
  wire data_0_442;
  wire data_1_443;
  wire data_2_444;
  wire data_3_445;
  wire data_4_446;
  wire data_5_447;
  wire data_6_448;
  wire data_7_449;
  wire data_not0001;
  wire dataready_OBUF_460;
  wire dataready_and0000;
  wire dataready_mux0000;
  wire dataready_mux00000_463;
  wire dataready_mux000014_464;
  wire dataready_mux000045_465;
  wire necpoj_0_1_469;
  wire \necpoj_mux0000<6>19 ;
  wire \necpoj_mux0000<6>191_483 ;
  wire \necpoj_mux0000<6>5_484 ;
  wire \necpoj_mux0000<7>2_486 ;
  wire \necpoj_mux0000<7>24_487 ;
  wire old_dataready_3_cmp_eq0000110_488;
  wire old_dataready_3_cmp_eq0000125_489;
  wire old_dataready_3_cmp_eq0000150_490;
  wire outtimer_and0010;
  wire outtimer_and0011;
  wire outtimer_cmp_eq0000;
  wire outtimer_cmp_eq000012_542;
  wire outtimer_cmp_eq000025_543;
  wire outtimer_cmp_eq000049_544;
  wire outtimer_cmp_eq000062_545;
  wire outtimer_cmp_eq0001;
  wire outtimer_cmp_eq000120_547;
  wire outtimer_cmp_eq000141_548;
  wire outtimer_cmp_eq000154_549;
  wire outtimer_cmp_eq0002;
  wire \outtimer_mux0001<10>117_551 ;
  wire \outtimer_mux0001<10>1171 ;
  wire outtimer_or0000_553;
  wire outtimer_or0000211_554;
  wire outtimer_or0007;
  wire prescale_or0000;
  wire repeat_code_OBUF_563;
  wire repeat_code_and0000;
  wire repeat_code_mux0000;
  wire repeat_code_mux0000108_566;
  wire repeat_code_mux000012_567;
  wire repeat_code_mux000020_568;
  wire repeat_code_mux00003_569;
  wire repeat_code_mux000031_570;
  wire repeat_code_mux000071_571;
  wire repeat_code_mux000099_572;
  wire repeat_code_or000010_573;
  wire repeat_code_or0000124_574;
  wire repeat_code_or0000127_575;
  wire repeat_code_or0000137_576;
  wire repeat_code_or000018_577;
  wire rxbuffer_0_mux0000;
  wire rxbuffer_10_mux0000;
  wire rxbuffer_11_mux0000;
  wire rxbuffer_12_mux0000;
  wire rxbuffer_13_mux0000;
  wire rxbuffer_14_mux0000;
  wire rxbuffer_15_mux0000;
  wire rxbuffer_16_mux0000;
  wire rxbuffer_17_mux0000;
  wire rxbuffer_18_mux0000;
  wire rxbuffer_19_mux0000;
  wire rxbuffer_1_mux0000;
  wire rxbuffer_20_mux0000;
  wire rxbuffer_21_mux0000;
  wire rxbuffer_22_mux0000;
  wire rxbuffer_23_mux0000;
  wire rxbuffer_24_mux0000;
  wire rxbuffer_25_mux0000;
  wire rxbuffer_26_mux0000;
  wire rxbuffer_27_mux0000;
  wire rxbuffer_28_mux0000;
  wire rxbuffer_29_mux0000;
  wire rxbuffer_2_mux0000;
  wire rxbuffer_30_mux0000;
  wire rxbuffer_31_mux0000;
  wire rxbuffer_31_not0001;
  wire rxbuffer_3_mux0000;
  wire rxbuffer_4_mux0000;
  wire rxbuffer_5_mux0000;
  wire rxbuffer_6_mux0000;
  wire rxbuffer_7_mux0000;
  wire rxbuffer_8_mux0000;
  wire rxbuffer_9_mux0000;
  wire \t0/Mcount_count_cy<10>_rt_662 ;
  wire \t0/Mcount_count_cy<11>_rt_664 ;
  wire \t0/Mcount_count_cy<12>_rt_666 ;
  wire \t0/Mcount_count_cy<13>_rt_668 ;
  wire \t0/Mcount_count_cy<14>_rt_670 ;
  wire \t0/Mcount_count_cy<15>_rt_672 ;
  wire \t0/Mcount_count_cy<16>_rt_674 ;
  wire \t0/Mcount_count_cy<17>_rt_676 ;
  wire \t0/Mcount_count_cy<18>_rt_678 ;
  wire \t0/Mcount_count_cy<19>_rt_680 ;
  wire \t0/Mcount_count_cy<1>_rt_682 ;
  wire \t0/Mcount_count_cy<20>_rt_684 ;
  wire \t0/Mcount_count_cy<21>_rt_686 ;
  wire \t0/Mcount_count_cy<22>_rt_688 ;
  wire \t0/Mcount_count_cy<23>_rt_690 ;
  wire \t0/Mcount_count_cy<24>_rt_692 ;
  wire \t0/Mcount_count_cy<25>_rt_694 ;
  wire \t0/Mcount_count_cy<26>_rt_696 ;
  wire \t0/Mcount_count_cy<27>_rt_698 ;
  wire \t0/Mcount_count_cy<28>_rt_700 ;
  wire \t0/Mcount_count_cy<29>_rt_702 ;
  wire \t0/Mcount_count_cy<2>_rt_704 ;
  wire \t0/Mcount_count_cy<30>_rt_706 ;
  wire \t0/Mcount_count_cy<31>_rt_708 ;
  wire \t0/Mcount_count_cy<3>_rt_710 ;
  wire \t0/Mcount_count_cy<4>_rt_712 ;
  wire \t0/Mcount_count_cy<5>_rt_714 ;
  wire \t0/Mcount_count_cy<6>_rt_716 ;
  wire \t0/Mcount_count_cy<7>_rt_718 ;
  wire \t0/Mcount_count_cy<8>_rt_720 ;
  wire \t0/Mcount_count_cy<9>_rt_722 ;
  wire \t0/Mcount_count_xor<32>_rt_724 ;
  wire \t0/Mcount_prescale_cy<1>_rt_727 ;
  wire \t0/Mcount_prescale_cy<2>_rt_729 ;
  wire \t0/Mcount_prescale_cy<3>_rt_731 ;
  wire \t0/Mcount_prescale_cy<4>_rt_733 ;
  wire \t0/Mcount_prescale_cy<5>_rt_735 ;
  wire \t0/Mcount_prescale_cy<6>_rt_737 ;
  wire \t0/Mcount_prescale_eqn_0 ;
  wire \t0/Mcount_prescale_eqn_0116_739 ;
  wire \t0/Mcount_prescale_eqn_014_740 ;
  wire \t0/Mcount_prescale_eqn_1 ;
  wire \t0/Mcount_prescale_eqn_2 ;
  wire \t0/Mcount_prescale_eqn_3 ;
  wire \t0/Mcount_prescale_eqn_4 ;
  wire \t0/Mcount_prescale_eqn_5 ;
  wire \t0/Mcount_prescale_eqn_6 ;
  wire \t0/Mcount_prescale_eqn_7 ;
  wire \t0/Mcount_prescale_xor<7>_rt_749 ;
  wire \t0/Result<0>1 ;
  wire \t0/Result<1>1 ;
  wire \t0/Result<2>1 ;
  wire \t0/Result<3>1 ;
  wire \t0/Result<4>1 ;
  wire \t0/Result<5>1 ;
  wire \t0/Result<6>1 ;
  wire \t0/Result<7>1 ;
  wire \t0/count_cmp_ge0000 ;
  wire \t0/count_not0001 ;
  wire \t0/count_not000110_826 ;
  wire \t0/count_not000122_827 ;
  wire \t0/prescale_and0000 ;
  wire [3 : 2] Madd_old_necpoj_4_add0000_cy;
  wire [22 : 0] Madd_old_outtimer_2_add0000_cy;
  wire [0 : 0] Madd_old_outtimer_2_add0000_lut;
  wire [12 : 0] Mcompar_TIMEOUT_cmp_gt0002_cy;
  wire [7 : 0] Mcompar_TIMEOUT_cmp_gt0003_cy;
  wire [7 : 0] Mcompar_TIMEOUT_cmp_gt0003_lut;
  wire [12 : 0] Mcompar_TIMEOUT_cmp_lt0001_cy;
  wire [7 : 0] Mcompar_TIMEOUT_cmp_lt0002_cy;
  wire [22 : 0] Mcount_outtimer_cy;
  wire [23 : 0] Mcount_outtimer_lut;
  wire [4 : 0] Result;
  wire [7 : 0] data_mux0000;
  wire [1 : 0] last;
  wire [6 : 0] necpoj;
  wire [7 : 1] necpoj_mux0000;
  wire [23 : 0] old_outtimer_2_add0000;
  wire [23 : 0] outtimer;
  wire [4 : 0] prescale;
  wire [31 : 0] rxbuffer;
  wire [7 : 0] \t0/Mcompar_count_cmp_ge0000_cy ;
  wire [8 : 0] \t0/Mcompar_count_cmp_ge0000_lut ;
  wire [31 : 0] \t0/Mcount_count_cy ;
  wire [0 : 0] \t0/Mcount_count_lut ;
  wire [6 : 0] \t0/Mcount_prescale_cy ;
  wire [0 : 0] \t0/Mcount_prescale_lut ;
  wire [32 : 0] \t0/Result ;
  wire [32 : 0] \t0/count ;
  wire [7 : 0] \t0/prescale ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   dataready_3 (
    .C(clk_BUFGP_433),
    .D(dataready_mux0000),
    .Q(dataready_OBUF_460)
  );
  FD   repeat_code_4 (
    .C(clk_BUFGP_433),
    .D(repeat_code_mux0000),
    .Q(repeat_code_OBUF_563)
  );
  FDE   rxbuffer_31 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_31_mux0000),
    .Q(rxbuffer[31])
  );
  FDE   rxbuffer_30 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_30_mux0000),
    .Q(rxbuffer[30])
  );
  FDE   rxbuffer_29 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_29_mux0000),
    .Q(rxbuffer[29])
  );
  FDE   rxbuffer_28 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_28_mux0000),
    .Q(rxbuffer[28])
  );
  FDE   rxbuffer_27 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_27_mux0000),
    .Q(rxbuffer[27])
  );
  FDE   rxbuffer_26 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_26_mux0000),
    .Q(rxbuffer[26])
  );
  FDE   rxbuffer_25 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_25_mux0000),
    .Q(rxbuffer[25])
  );
  FDE   rxbuffer_24 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_24_mux0000),
    .Q(rxbuffer[24])
  );
  FDE   rxbuffer_23 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_23_mux0000),
    .Q(rxbuffer[23])
  );
  FDE   rxbuffer_22 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_22_mux0000),
    .Q(rxbuffer[22])
  );
  FDE   rxbuffer_21 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_21_mux0000),
    .Q(rxbuffer[21])
  );
  FDE   rxbuffer_20 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_20_mux0000),
    .Q(rxbuffer[20])
  );
  FDE   rxbuffer_19 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_19_mux0000),
    .Q(rxbuffer[19])
  );
  FDE   rxbuffer_18 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_18_mux0000),
    .Q(rxbuffer[18])
  );
  FDE   rxbuffer_17 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_17_mux0000),
    .Q(rxbuffer[17])
  );
  FDE   rxbuffer_16 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_16_mux0000),
    .Q(rxbuffer[16])
  );
  FDE   rxbuffer_15 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_15_mux0000),
    .Q(rxbuffer[15])
  );
  FDE   rxbuffer_14 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_14_mux0000),
    .Q(rxbuffer[14])
  );
  FDE   rxbuffer_13 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_13_mux0000),
    .Q(rxbuffer[13])
  );
  FDE   rxbuffer_10 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_10_mux0000),
    .Q(rxbuffer[10])
  );
  FDE   rxbuffer_12 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_12_mux0000),
    .Q(rxbuffer[12])
  );
  FDE   rxbuffer_11 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_11_mux0000),
    .Q(rxbuffer[11])
  );
  FDE   rxbuffer_9 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_9_mux0000),
    .Q(rxbuffer[9])
  );
  FDE   rxbuffer_8 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_8_mux0000),
    .Q(rxbuffer[8])
  );
  FDE   rxbuffer_7 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_7_mux0000),
    .Q(rxbuffer[7])
  );
  FDE   rxbuffer_6 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_6_mux0000),
    .Q(rxbuffer[6])
  );
  FDE   rxbuffer_5 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_5_mux0000),
    .Q(rxbuffer[5])
  );
  FDE   rxbuffer_4 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_4_mux0000),
    .Q(rxbuffer[4])
  );
  FDE   rxbuffer_3 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_3_mux0000),
    .Q(rxbuffer[3])
  );
  FDE   rxbuffer_2 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_2_mux0000),
    .Q(rxbuffer[2])
  );
  FDE   rxbuffer_1 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_1_mux0000),
    .Q(rxbuffer[1])
  );
  FDE   rxbuffer_0 (
    .C(clk_BUFGP_433),
    .CE(outtimer_or0000211_554),
    .D(rxbuffer_0_mux0000),
    .Q(rxbuffer[0])
  );
  FDE   data_0 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[0]),
    .Q(data_0_442)
  );
  FDE   data_1 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[1]),
    .Q(data_1_443)
  );
  FDE   data_2 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[2]),
    .Q(data_2_444)
  );
  FDE   data_3 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[3]),
    .Q(data_3_445)
  );
  FDE   data_4 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[4]),
    .Q(data_4_446)
  );
  FDE   data_5 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[5]),
    .Q(data_5_447)
  );
  FDE   data_6 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[6]),
    .Q(data_6_448)
  );
  FDE   data_7 (
    .C(clk_BUFGP_433),
    .CE(data_not0001),
    .D(data_mux0000[7]),
    .Q(data_7_449)
  );
  FDE   address_0 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0007),
    .Q(address_0_420)
  );
  FDE   address_1 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0006),
    .Q(address_1_421)
  );
  FDE   address_2 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0005),
    .Q(address_2_422)
  );
  FDE   address_3 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0004),
    .Q(address_3_423)
  );
  FDE   address_4 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0003),
    .Q(address_4_424)
  );
  FDE   address_5 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0002),
    .Q(address_5_425)
  );
  FDE   address_6 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0001),
    .Q(address_6_426)
  );
  FDE   address_7 (
    .C(clk_BUFGP_433),
    .CE(address_not0001),
    .D(_mux0000),
    .Q(address_7_427)
  );
  FD   last_0 (
    .C(clk_BUFGP_433),
    .D(IR_IBUF_1),
    .Q(last[0])
  );
  FD   last_1 (
    .C(clk_BUFGP_433),
    .D(last[0]),
    .Q(last[1])
  );
  FDSE   clear (
    .C(clk_BUFGP_433),
    .CE(clear_cmp_eq0000),
    .D(N0),
    .S(TIMEOUT_xor0000),
    .Q(clear_429)
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_0 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[7]),
    .Q(necpoj[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_1 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[6]),
    .Q(necpoj[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_2 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[5]),
    .Q(necpoj[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_3 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[4]),
    .Q(necpoj[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_4 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[3]),
    .Q(necpoj[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_5 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[2]),
    .Q(necpoj[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_6 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[1]),
    .Q(necpoj[6])
  );
  MUXCY   \Mcount_outtimer_cy<0>  (
    .CI(TIMEOUT_xor0000_inv),
    .DI(N0),
    .S(Mcount_outtimer_lut[0]),
    .O(Mcount_outtimer_cy[0])
  );
  XORCY   \Mcount_outtimer_xor<0>  (
    .CI(TIMEOUT_xor0000_inv),
    .LI(Mcount_outtimer_lut[0]),
    .O(Mcount_outtimer)
  );
  MUXCY   \Mcount_outtimer_cy<1>  (
    .CI(Mcount_outtimer_cy[0]),
    .DI(N0),
    .S(Mcount_outtimer_lut[1]),
    .O(Mcount_outtimer_cy[1])
  );
  XORCY   \Mcount_outtimer_xor<1>  (
    .CI(Mcount_outtimer_cy[0]),
    .LI(Mcount_outtimer_lut[1]),
    .O(Mcount_outtimer1)
  );
  MUXCY   \Mcount_outtimer_cy<2>  (
    .CI(Mcount_outtimer_cy[1]),
    .DI(N0),
    .S(Mcount_outtimer_lut[2]),
    .O(Mcount_outtimer_cy[2])
  );
  XORCY   \Mcount_outtimer_xor<2>  (
    .CI(Mcount_outtimer_cy[1]),
    .LI(Mcount_outtimer_lut[2]),
    .O(Mcount_outtimer2)
  );
  MUXCY   \Mcount_outtimer_cy<3>  (
    .CI(Mcount_outtimer_cy[2]),
    .DI(N0),
    .S(Mcount_outtimer_lut[3]),
    .O(Mcount_outtimer_cy[3])
  );
  XORCY   \Mcount_outtimer_xor<3>  (
    .CI(Mcount_outtimer_cy[2]),
    .LI(Mcount_outtimer_lut[3]),
    .O(Mcount_outtimer3)
  );
  MUXCY   \Mcount_outtimer_cy<4>  (
    .CI(Mcount_outtimer_cy[3]),
    .DI(N0),
    .S(Mcount_outtimer_lut[4]),
    .O(Mcount_outtimer_cy[4])
  );
  XORCY   \Mcount_outtimer_xor<4>  (
    .CI(Mcount_outtimer_cy[3]),
    .LI(Mcount_outtimer_lut[4]),
    .O(Mcount_outtimer4)
  );
  MUXCY   \Mcount_outtimer_cy<5>  (
    .CI(Mcount_outtimer_cy[4]),
    .DI(N0),
    .S(Mcount_outtimer_lut[5]),
    .O(Mcount_outtimer_cy[5])
  );
  XORCY   \Mcount_outtimer_xor<5>  (
    .CI(Mcount_outtimer_cy[4]),
    .LI(Mcount_outtimer_lut[5]),
    .O(Mcount_outtimer5)
  );
  MUXCY   \Mcount_outtimer_cy<6>  (
    .CI(Mcount_outtimer_cy[5]),
    .DI(N0),
    .S(Mcount_outtimer_lut[6]),
    .O(Mcount_outtimer_cy[6])
  );
  XORCY   \Mcount_outtimer_xor<6>  (
    .CI(Mcount_outtimer_cy[5]),
    .LI(Mcount_outtimer_lut[6]),
    .O(Mcount_outtimer6)
  );
  MUXCY   \Mcount_outtimer_cy<7>  (
    .CI(Mcount_outtimer_cy[6]),
    .DI(N0),
    .S(Mcount_outtimer_lut[7]),
    .O(Mcount_outtimer_cy[7])
  );
  XORCY   \Mcount_outtimer_xor<7>  (
    .CI(Mcount_outtimer_cy[6]),
    .LI(Mcount_outtimer_lut[7]),
    .O(Mcount_outtimer7)
  );
  MUXCY   \Mcount_outtimer_cy<8>  (
    .CI(Mcount_outtimer_cy[7]),
    .DI(N0),
    .S(Mcount_outtimer_lut[8]),
    .O(Mcount_outtimer_cy[8])
  );
  XORCY   \Mcount_outtimer_xor<8>  (
    .CI(Mcount_outtimer_cy[7]),
    .LI(Mcount_outtimer_lut[8]),
    .O(Mcount_outtimer8)
  );
  MUXCY   \Mcount_outtimer_cy<9>  (
    .CI(Mcount_outtimer_cy[8]),
    .DI(N0),
    .S(Mcount_outtimer_lut[9]),
    .O(Mcount_outtimer_cy[9])
  );
  XORCY   \Mcount_outtimer_xor<9>  (
    .CI(Mcount_outtimer_cy[8]),
    .LI(Mcount_outtimer_lut[9]),
    .O(Mcount_outtimer9)
  );
  MUXCY   \Mcount_outtimer_cy<10>  (
    .CI(Mcount_outtimer_cy[9]),
    .DI(N0),
    .S(Mcount_outtimer_lut[10]),
    .O(Mcount_outtimer_cy[10])
  );
  XORCY   \Mcount_outtimer_xor<10>  (
    .CI(Mcount_outtimer_cy[9]),
    .LI(Mcount_outtimer_lut[10]),
    .O(Mcount_outtimer10)
  );
  MUXCY   \Mcount_outtimer_cy<11>  (
    .CI(Mcount_outtimer_cy[10]),
    .DI(N0),
    .S(Mcount_outtimer_lut[11]),
    .O(Mcount_outtimer_cy[11])
  );
  XORCY   \Mcount_outtimer_xor<11>  (
    .CI(Mcount_outtimer_cy[10]),
    .LI(Mcount_outtimer_lut[11]),
    .O(Mcount_outtimer11)
  );
  MUXCY   \Mcount_outtimer_cy<12>  (
    .CI(Mcount_outtimer_cy[11]),
    .DI(N0),
    .S(Mcount_outtimer_lut[12]),
    .O(Mcount_outtimer_cy[12])
  );
  XORCY   \Mcount_outtimer_xor<12>  (
    .CI(Mcount_outtimer_cy[11]),
    .LI(Mcount_outtimer_lut[12]),
    .O(Mcount_outtimer12)
  );
  MUXCY   \Mcount_outtimer_cy<13>  (
    .CI(Mcount_outtimer_cy[12]),
    .DI(N0),
    .S(Mcount_outtimer_lut[13]),
    .O(Mcount_outtimer_cy[13])
  );
  XORCY   \Mcount_outtimer_xor<13>  (
    .CI(Mcount_outtimer_cy[12]),
    .LI(Mcount_outtimer_lut[13]),
    .O(Mcount_outtimer13)
  );
  MUXCY   \Mcount_outtimer_cy<14>  (
    .CI(Mcount_outtimer_cy[13]),
    .DI(N0),
    .S(Mcount_outtimer_lut[14]),
    .O(Mcount_outtimer_cy[14])
  );
  XORCY   \Mcount_outtimer_xor<14>  (
    .CI(Mcount_outtimer_cy[13]),
    .LI(Mcount_outtimer_lut[14]),
    .O(Mcount_outtimer14)
  );
  MUXCY   \Mcount_outtimer_cy<15>  (
    .CI(Mcount_outtimer_cy[14]),
    .DI(N0),
    .S(Mcount_outtimer_lut[15]),
    .O(Mcount_outtimer_cy[15])
  );
  XORCY   \Mcount_outtimer_xor<15>  (
    .CI(Mcount_outtimer_cy[14]),
    .LI(Mcount_outtimer_lut[15]),
    .O(Mcount_outtimer15)
  );
  MUXCY   \Mcount_outtimer_cy<16>  (
    .CI(Mcount_outtimer_cy[15]),
    .DI(N0),
    .S(Mcount_outtimer_lut[16]),
    .O(Mcount_outtimer_cy[16])
  );
  XORCY   \Mcount_outtimer_xor<16>  (
    .CI(Mcount_outtimer_cy[15]),
    .LI(Mcount_outtimer_lut[16]),
    .O(Mcount_outtimer16)
  );
  MUXCY   \Mcount_outtimer_cy<17>  (
    .CI(Mcount_outtimer_cy[16]),
    .DI(N0),
    .S(Mcount_outtimer_lut[17]),
    .O(Mcount_outtimer_cy[17])
  );
  XORCY   \Mcount_outtimer_xor<17>  (
    .CI(Mcount_outtimer_cy[16]),
    .LI(Mcount_outtimer_lut[17]),
    .O(Mcount_outtimer17)
  );
  MUXCY   \Mcount_outtimer_cy<18>  (
    .CI(Mcount_outtimer_cy[17]),
    .DI(N0),
    .S(Mcount_outtimer_lut[18]),
    .O(Mcount_outtimer_cy[18])
  );
  XORCY   \Mcount_outtimer_xor<18>  (
    .CI(Mcount_outtimer_cy[17]),
    .LI(Mcount_outtimer_lut[18]),
    .O(Mcount_outtimer18)
  );
  MUXCY   \Mcount_outtimer_cy<19>  (
    .CI(Mcount_outtimer_cy[18]),
    .DI(N0),
    .S(Mcount_outtimer_lut[19]),
    .O(Mcount_outtimer_cy[19])
  );
  XORCY   \Mcount_outtimer_xor<19>  (
    .CI(Mcount_outtimer_cy[18]),
    .LI(Mcount_outtimer_lut[19]),
    .O(Mcount_outtimer19)
  );
  MUXCY   \Mcount_outtimer_cy<20>  (
    .CI(Mcount_outtimer_cy[19]),
    .DI(N0),
    .S(Mcount_outtimer_lut[20]),
    .O(Mcount_outtimer_cy[20])
  );
  XORCY   \Mcount_outtimer_xor<20>  (
    .CI(Mcount_outtimer_cy[19]),
    .LI(Mcount_outtimer_lut[20]),
    .O(Mcount_outtimer20)
  );
  MUXCY   \Mcount_outtimer_cy<21>  (
    .CI(Mcount_outtimer_cy[20]),
    .DI(N0),
    .S(Mcount_outtimer_lut[21]),
    .O(Mcount_outtimer_cy[21])
  );
  XORCY   \Mcount_outtimer_xor<21>  (
    .CI(Mcount_outtimer_cy[20]),
    .LI(Mcount_outtimer_lut[21]),
    .O(Mcount_outtimer21)
  );
  MUXCY   \Mcount_outtimer_cy<22>  (
    .CI(Mcount_outtimer_cy[21]),
    .DI(N0),
    .S(Mcount_outtimer_lut[22]),
    .O(Mcount_outtimer_cy[22])
  );
  XORCY   \Mcount_outtimer_xor<22>  (
    .CI(Mcount_outtimer_cy[21]),
    .LI(Mcount_outtimer_lut[22]),
    .O(Mcount_outtimer22)
  );
  XORCY   \Mcount_outtimer_xor<23>  (
    .CI(Mcount_outtimer_cy[22]),
    .LI(Mcount_outtimer_lut[23]),
    .O(Mcount_outtimer23)
  );
  FDR   outtimer_0 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer),
    .R(outtimer_or0000_553),
    .Q(outtimer[0])
  );
  FDR   outtimer_1 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer1),
    .R(outtimer_or0000_553),
    .Q(outtimer[1])
  );
  FDR   outtimer_2 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer2),
    .R(outtimer_or0000_553),
    .Q(outtimer[2])
  );
  FDR   outtimer_3 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer3),
    .R(outtimer_or0000_553),
    .Q(outtimer[3])
  );
  FDR   outtimer_4 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer4),
    .R(outtimer_or0000_553),
    .Q(outtimer[4])
  );
  FDR   outtimer_5 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer5),
    .R(outtimer_or0000_553),
    .Q(outtimer[5])
  );
  FDR   outtimer_6 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer6),
    .R(outtimer_or0000_553),
    .Q(outtimer[6])
  );
  FDR   outtimer_7 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer7),
    .R(outtimer_or0000_553),
    .Q(outtimer[7])
  );
  FDR   outtimer_8 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer8),
    .R(outtimer_or0000_553),
    .Q(outtimer[8])
  );
  FDR   outtimer_9 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer9),
    .R(outtimer_or0000_553),
    .Q(outtimer[9])
  );
  FDR   outtimer_10 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer10),
    .R(outtimer_or0000_553),
    .Q(outtimer[10])
  );
  FDR   outtimer_11 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer11),
    .R(outtimer_or0000_553),
    .Q(outtimer[11])
  );
  FDR   outtimer_12 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer12),
    .R(outtimer_or0000_553),
    .Q(outtimer[12])
  );
  FDR   outtimer_13 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer13),
    .R(outtimer_or0000_553),
    .Q(outtimer[13])
  );
  FDR   outtimer_14 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer14),
    .R(outtimer_or0000_553),
    .Q(outtimer[14])
  );
  FDR   outtimer_15 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer15),
    .R(outtimer_or0000_553),
    .Q(outtimer[15])
  );
  FDR   outtimer_16 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer16),
    .R(outtimer_or0000_553),
    .Q(outtimer[16])
  );
  FDR   outtimer_17 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer17),
    .R(outtimer_or0000_553),
    .Q(outtimer[17])
  );
  FDR   outtimer_18 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer18),
    .R(outtimer_or0000_553),
    .Q(outtimer[18])
  );
  FDR   outtimer_19 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer19),
    .R(outtimer_or0000_553),
    .Q(outtimer[19])
  );
  FDR   outtimer_20 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer20),
    .R(outtimer_or0000_553),
    .Q(outtimer[20])
  );
  FDR   outtimer_21 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer21),
    .R(outtimer_or0000_553),
    .Q(outtimer[21])
  );
  FDR   outtimer_22 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer22),
    .R(outtimer_or0000_553),
    .Q(outtimer[22])
  );
  FDR   outtimer_23 (
    .C(clk_BUFGP_433),
    .D(Mcount_outtimer23),
    .R(outtimer_or0000_553),
    .Q(outtimer[23])
  );
  FDR #(
    .INIT ( 1'b0 ))
  prescale_0 (
    .C(clk_BUFGP_433),
    .D(Result[0]),
    .R(prescale_or0000),
    .Q(prescale[0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  prescale_1 (
    .C(clk_BUFGP_433),
    .D(Result[1]),
    .R(prescale_or0000),
    .Q(prescale[1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  prescale_2 (
    .C(clk_BUFGP_433),
    .D(Result[2]),
    .R(prescale_or0000),
    .Q(prescale[2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  prescale_3 (
    .C(clk_BUFGP_433),
    .D(Result[3]),
    .R(prescale_or0000),
    .Q(prescale[3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  prescale_4 (
    .C(clk_BUFGP_433),
    .D(Result[4]),
    .R(prescale_or0000),
    .Q(prescale[4])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(Madd_old_outtimer_2_add0000_lut[0]),
    .O(Madd_old_outtimer_2_add0000_cy[0])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<0>  (
    .CI(N0),
    .LI(Madd_old_outtimer_2_add0000_lut[0]),
    .O(old_outtimer_2_add0000[0])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<1>  (
    .CI(Madd_old_outtimer_2_add0000_cy[0]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<1>_rt_26 ),
    .O(Madd_old_outtimer_2_add0000_cy[1])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<1>  (
    .CI(Madd_old_outtimer_2_add0000_cy[0]),
    .LI(\Madd_old_outtimer_2_add0000_cy<1>_rt_26 ),
    .O(old_outtimer_2_add0000[1])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<2>  (
    .CI(Madd_old_outtimer_2_add0000_cy[1]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<2>_rt_34 ),
    .O(Madd_old_outtimer_2_add0000_cy[2])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<2>  (
    .CI(Madd_old_outtimer_2_add0000_cy[1]),
    .LI(\Madd_old_outtimer_2_add0000_cy<2>_rt_34 ),
    .O(old_outtimer_2_add0000[2])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<3>  (
    .CI(Madd_old_outtimer_2_add0000_cy[2]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<3>_rt_36 ),
    .O(Madd_old_outtimer_2_add0000_cy[3])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<3>  (
    .CI(Madd_old_outtimer_2_add0000_cy[2]),
    .LI(\Madd_old_outtimer_2_add0000_cy<3>_rt_36 ),
    .O(old_outtimer_2_add0000[3])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<4>  (
    .CI(Madd_old_outtimer_2_add0000_cy[3]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<4>_rt_38 ),
    .O(Madd_old_outtimer_2_add0000_cy[4])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<4>  (
    .CI(Madd_old_outtimer_2_add0000_cy[3]),
    .LI(\Madd_old_outtimer_2_add0000_cy<4>_rt_38 ),
    .O(old_outtimer_2_add0000[4])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<5>  (
    .CI(Madd_old_outtimer_2_add0000_cy[4]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<5>_rt_40 ),
    .O(Madd_old_outtimer_2_add0000_cy[5])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<5>  (
    .CI(Madd_old_outtimer_2_add0000_cy[4]),
    .LI(\Madd_old_outtimer_2_add0000_cy<5>_rt_40 ),
    .O(old_outtimer_2_add0000[5])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<6>  (
    .CI(Madd_old_outtimer_2_add0000_cy[5]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<6>_rt_42 ),
    .O(Madd_old_outtimer_2_add0000_cy[6])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<6>  (
    .CI(Madd_old_outtimer_2_add0000_cy[5]),
    .LI(\Madd_old_outtimer_2_add0000_cy<6>_rt_42 ),
    .O(old_outtimer_2_add0000[6])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<7>  (
    .CI(Madd_old_outtimer_2_add0000_cy[6]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<7>_rt_44 ),
    .O(Madd_old_outtimer_2_add0000_cy[7])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<7>  (
    .CI(Madd_old_outtimer_2_add0000_cy[6]),
    .LI(\Madd_old_outtimer_2_add0000_cy<7>_rt_44 ),
    .O(old_outtimer_2_add0000[7])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<8>  (
    .CI(Madd_old_outtimer_2_add0000_cy[7]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<8>_rt_46 ),
    .O(Madd_old_outtimer_2_add0000_cy[8])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<8>  (
    .CI(Madd_old_outtimer_2_add0000_cy[7]),
    .LI(\Madd_old_outtimer_2_add0000_cy<8>_rt_46 ),
    .O(old_outtimer_2_add0000[8])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<9>  (
    .CI(Madd_old_outtimer_2_add0000_cy[8]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<9>_rt_48 ),
    .O(Madd_old_outtimer_2_add0000_cy[9])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<9>  (
    .CI(Madd_old_outtimer_2_add0000_cy[8]),
    .LI(\Madd_old_outtimer_2_add0000_cy<9>_rt_48 ),
    .O(old_outtimer_2_add0000[9])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<10>  (
    .CI(Madd_old_outtimer_2_add0000_cy[9]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<10>_rt_6 ),
    .O(Madd_old_outtimer_2_add0000_cy[10])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<10>  (
    .CI(Madd_old_outtimer_2_add0000_cy[9]),
    .LI(\Madd_old_outtimer_2_add0000_cy<10>_rt_6 ),
    .O(old_outtimer_2_add0000[10])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<11>  (
    .CI(Madd_old_outtimer_2_add0000_cy[10]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<11>_rt_8 ),
    .O(Madd_old_outtimer_2_add0000_cy[11])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<11>  (
    .CI(Madd_old_outtimer_2_add0000_cy[10]),
    .LI(\Madd_old_outtimer_2_add0000_cy<11>_rt_8 ),
    .O(old_outtimer_2_add0000[11])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<12>  (
    .CI(Madd_old_outtimer_2_add0000_cy[11]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<12>_rt_10 ),
    .O(Madd_old_outtimer_2_add0000_cy[12])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<12>  (
    .CI(Madd_old_outtimer_2_add0000_cy[11]),
    .LI(\Madd_old_outtimer_2_add0000_cy<12>_rt_10 ),
    .O(old_outtimer_2_add0000[12])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<13>  (
    .CI(Madd_old_outtimer_2_add0000_cy[12]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<13>_rt_12 ),
    .O(Madd_old_outtimer_2_add0000_cy[13])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<13>  (
    .CI(Madd_old_outtimer_2_add0000_cy[12]),
    .LI(\Madd_old_outtimer_2_add0000_cy<13>_rt_12 ),
    .O(old_outtimer_2_add0000[13])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<14>  (
    .CI(Madd_old_outtimer_2_add0000_cy[13]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<14>_rt_14 ),
    .O(Madd_old_outtimer_2_add0000_cy[14])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<14>  (
    .CI(Madd_old_outtimer_2_add0000_cy[13]),
    .LI(\Madd_old_outtimer_2_add0000_cy<14>_rt_14 ),
    .O(old_outtimer_2_add0000[14])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<15>  (
    .CI(Madd_old_outtimer_2_add0000_cy[14]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<15>_rt_16 ),
    .O(Madd_old_outtimer_2_add0000_cy[15])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<15>  (
    .CI(Madd_old_outtimer_2_add0000_cy[14]),
    .LI(\Madd_old_outtimer_2_add0000_cy<15>_rt_16 ),
    .O(old_outtimer_2_add0000[15])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<16>  (
    .CI(Madd_old_outtimer_2_add0000_cy[15]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<16>_rt_18 ),
    .O(Madd_old_outtimer_2_add0000_cy[16])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<16>  (
    .CI(Madd_old_outtimer_2_add0000_cy[15]),
    .LI(\Madd_old_outtimer_2_add0000_cy<16>_rt_18 ),
    .O(old_outtimer_2_add0000[16])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<17>  (
    .CI(Madd_old_outtimer_2_add0000_cy[16]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<17>_rt_20 ),
    .O(Madd_old_outtimer_2_add0000_cy[17])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<17>  (
    .CI(Madd_old_outtimer_2_add0000_cy[16]),
    .LI(\Madd_old_outtimer_2_add0000_cy<17>_rt_20 ),
    .O(old_outtimer_2_add0000[17])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<18>  (
    .CI(Madd_old_outtimer_2_add0000_cy[17]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<18>_rt_22 ),
    .O(Madd_old_outtimer_2_add0000_cy[18])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<18>  (
    .CI(Madd_old_outtimer_2_add0000_cy[17]),
    .LI(\Madd_old_outtimer_2_add0000_cy<18>_rt_22 ),
    .O(old_outtimer_2_add0000[18])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<19>  (
    .CI(Madd_old_outtimer_2_add0000_cy[18]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<19>_rt_24 ),
    .O(Madd_old_outtimer_2_add0000_cy[19])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<19>  (
    .CI(Madd_old_outtimer_2_add0000_cy[18]),
    .LI(\Madd_old_outtimer_2_add0000_cy<19>_rt_24 ),
    .O(old_outtimer_2_add0000[19])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<20>  (
    .CI(Madd_old_outtimer_2_add0000_cy[19]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<20>_rt_28 ),
    .O(Madd_old_outtimer_2_add0000_cy[20])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<20>  (
    .CI(Madd_old_outtimer_2_add0000_cy[19]),
    .LI(\Madd_old_outtimer_2_add0000_cy<20>_rt_28 ),
    .O(old_outtimer_2_add0000[20])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<21>  (
    .CI(Madd_old_outtimer_2_add0000_cy[20]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<21>_rt_30 ),
    .O(Madd_old_outtimer_2_add0000_cy[21])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<21>  (
    .CI(Madd_old_outtimer_2_add0000_cy[20]),
    .LI(\Madd_old_outtimer_2_add0000_cy<21>_rt_30 ),
    .O(old_outtimer_2_add0000[21])
  );
  MUXCY   \Madd_old_outtimer_2_add0000_cy<22>  (
    .CI(Madd_old_outtimer_2_add0000_cy[21]),
    .DI(N0),
    .S(\Madd_old_outtimer_2_add0000_cy<22>_rt_32 ),
    .O(Madd_old_outtimer_2_add0000_cy[22])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<22>  (
    .CI(Madd_old_outtimer_2_add0000_cy[21]),
    .LI(\Madd_old_outtimer_2_add0000_cy<22>_rt_32 ),
    .O(old_outtimer_2_add0000[22])
  );
  XORCY   \Madd_old_outtimer_2_add0000_xor<23>  (
    .CI(Madd_old_outtimer_2_add0000_cy[22]),
    .LI(\Madd_old_outtimer_2_add0000_xor<23>_rt_50 ),
    .O(old_outtimer_2_add0000[23])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<0>  (
    .CI(N1),
    .DI(\t0/count [2]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[0] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[0])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<1>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[0]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_cy<1>_rt_112 ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[1])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<2>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[1]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_cy<2>_rt_114 ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[2])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<3>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[2]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_cy<3>_rt_116 ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[3])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<4>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[3]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_cy<4>_rt_118 ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[4])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<5>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[4]),
    .DI(\t0/count [7]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[5] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<6>  (
    .I0(\t0/count [8]),
    .I1(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[6] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<6>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[5]),
    .DI(\t0/count [8]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[6] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[6])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<7>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[6]),
    .DI(\t0/count [9]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[7] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<8>  (
    .I0(\t0/count [10]),
    .I1(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[8] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<8>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[7]),
    .DI(\t0/count [10]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[8] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[8])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<9>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[8]),
    .DI(\t0/count [11]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[9] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[9])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<10>  (
    .I0(\t0/count [12]),
    .I1(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[10] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<10>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[9]),
    .DI(\t0/count [12]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[10] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[10])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<11>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[10]),
    .DI(\t0/count [13]),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[11] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[11])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<12>  (
    .I0(\t0/count [14]),
    .I1(\t0/count [15]),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[12] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0001_cy<12>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0001_cy[11]),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_lt0001_lut[12] ),
    .O(Mcompar_TIMEOUT_cmp_lt0001_cy[12])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<0>  (
    .I0(\t0/count [0]),
    .I1(\t0/count [1]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[0])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[0]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<1>  (
    .I0(\t0/count [2]),
    .I1(\t0/count [3]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[1])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<1>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0003_cy[0]),
    .DI(N1),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[1]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[1])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<2>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0003_cy[1]),
    .DI(N0),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[2]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[2])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<3>  (
    .I0(\t0/count [5]),
    .I1(\t0/count [6]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[3])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<3>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0003_cy[2]),
    .DI(N1),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[3]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[3])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<4>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0003_cy[3]),
    .DI(N0),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[4]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<5>  (
    .I0(\t0/count [8]),
    .I1(\t0/count [9]),
    .I2(\t0/count [10]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[5])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<5>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0003_cy[4]),
    .DI(N1),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[5]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<6>  (
    .I0(\t0/count [11]),
    .I1(\t0/count [12]),
    .I2(\t0/count [13]),
    .I3(\t0/count [14]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[6])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<6>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0003_cy[5]),
    .DI(N0),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[6]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[6])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<7>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0003_cy[6]),
    .DI(N0),
    .S(Mcompar_TIMEOUT_cmp_gt0003_lut[7]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_cy[7])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<0>_0  (
    .CI(N1),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_gt0003_lut<0>1 ),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<0>1 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<1>1  (
    .I0(\t0/count [1]),
    .I1(\t0/count [2]),
    .I2(\t0/count [3]),
    .I3(\t0/count [4]),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_lut<1>1_96 )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<1>_0  (
    .CI(\Mcompar_TIMEOUT_cmp_gt0003_cy<0>1 ),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_gt0003_lut<1>1_96 ),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<1>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<2>1  (
    .I0(\t0/count [5]),
    .I1(\t0/count [6]),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_lut<2>1_98 )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<2>_0  (
    .CI(\Mcompar_TIMEOUT_cmp_gt0003_cy<1>1 ),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_gt0003_lut<2>1_98 ),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<2>1 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<3>1  (
    .I0(\t0/count [7]),
    .I1(\t0/count [8]),
    .I2(\t0/count [9]),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_lut<3>1_100 )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<3>_0  (
    .CI(\Mcompar_TIMEOUT_cmp_gt0003_cy<2>1 ),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_gt0003_lut<3>1_100 ),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<3>1 )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<4>_0  (
    .CI(\Mcompar_TIMEOUT_cmp_gt0003_cy<3>1 ),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_gt0003_cy<4>_0_rt_87 ),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<4>1 )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_TIMEOUT_cmp_gt0003_lut<5>1  (
    .I0(\t0/count [11]),
    .I1(\t0/count [12]),
    .I2(\t0/count [13]),
    .I3(\t0/count [14]),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_lut<5>1_103 )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<5>_0  (
    .CI(\Mcompar_TIMEOUT_cmp_gt0003_cy<4>1 ),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_gt0003_lut<5>1_103 ),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<5>1 )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0003_cy<6>_0  (
    .CI(\Mcompar_TIMEOUT_cmp_gt0003_cy<5>1 ),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_gt0003_lut<6>1 ),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<6>1 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \Mcompar_TIMEOUT_cmp_lt0002_lut<0>  (
    .I0(\t0/count [2]),
    .I1(\t0/count [3]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_lut[0] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_lut[0] ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[0])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Mcompar_TIMEOUT_cmp_lt0002_lut<1>  (
    .I0(\t0/count [4]),
    .I1(\t0/count [5]),
    .I2(\t0/count [6]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_lut[1] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<1>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0002_cy[0]),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_lut[1] ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[1])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<2>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0002_cy[1]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_cy<2>_rt_136 ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[2])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<3>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0002_cy[2]),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_lut[3] ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[3])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<4>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0002_cy[3]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_cy<4>_rt_139 ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[4])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<5>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0002_cy[4]),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_lut[5] ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[5])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<6>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0002_cy[5]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_cy<6>_rt_142 ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \Mcompar_TIMEOUT_cmp_lt0002_lut<7>  (
    .I0(\t0/count [12]),
    .I1(\t0/count [13]),
    .I2(\t0/count [14]),
    .I3(\t0/count [15]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_lut[7] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_lt0002_cy<7>  (
    .CI(Mcompar_TIMEOUT_cmp_lt0002_cy[6]),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_lt0002_lut[7] ),
    .O(Mcompar_TIMEOUT_cmp_lt0002_cy[7])
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<0>  (
    .I0(\t0/count [0]),
    .I1(\t0/count [1]),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[0] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[0] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[0])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<1>  (
    .I0(\t0/count [2]),
    .I1(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[1] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<1>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[0]),
    .DI(PREPULSE_FSM_FFd2_353),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[1] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[1])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<2>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[1]),
    .DI(PREPULSE_or0002),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[2] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[2])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<3>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[2]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[3] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[3])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<4>  (
    .I0(\t0/count [5]),
    .I1(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[4] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<4>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[3]),
    .DI(PREPULSE_FSM_FFd2_353),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[4] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[4])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<5>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[4]),
    .DI(N1),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_cy<5>_rt_60 ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[5])
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<6>  (
    .I0(\t0/count [7]),
    .I1(PREPULSE_FSM_FFd1_350),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[6] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<6>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[5]),
    .DI(PREPULSE_FSM_FFd1_350),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[6] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[6])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<7>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[6]),
    .DI(PREPULSE_or0000),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[7] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[7])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<8>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[7]),
    .DI(PREPULSE_or0000),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[8] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[8])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<9>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[8]),
    .DI(PREPULSE_or0000),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[9] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[9])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<10>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[9]),
    .DI(PREPULSE_cmp_eq0000),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[10] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[10])
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<11>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[10]),
    .DI(PREPULSE_cmp_eq0000),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[11] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[11])
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<12>  (
    .I0(\t0/count [13]),
    .I1(\t0/count [14]),
    .I2(\t0/count [15]),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[12] )
  );
  MUXCY   \Mcompar_TIMEOUT_cmp_gt0002_cy<12>  (
    .CI(Mcompar_TIMEOUT_cmp_gt0002_cy[11]),
    .DI(N0),
    .S(\Mcompar_TIMEOUT_cmp_gt0002_lut[12] ),
    .O(Mcompar_TIMEOUT_cmp_gt0002_cy[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  PREPULSE_FSM_FFd1 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_not0001_379),
    .D(\PREPULSE_FSM_FFd1-In ),
    .Q(PREPULSE_FSM_FFd1_350)
  );
  FDE #(
    .INIT ( 1'b0 ))
  PREPULSE_FSM_FFd2 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_not0001_379),
    .D(\PREPULSE_FSM_FFd2-In_354 ),
    .Q(PREPULSE_FSM_FFd2_353)
  );
  FDE #(
    .INIT ( 1'b0 ))
  TIMEOUT_FSM_FFd1 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_not0001_379),
    .D(\TIMEOUT_FSM_FFd1-In_367 ),
    .Q(TIMEOUT_FSM_FFd1_366)
  );
  FDE #(
    .INIT ( 1'b0 ))
  TIMEOUT_FSM_FFd2 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_not0001_379),
    .D(\TIMEOUT_FSM_FFd2-In_370 ),
    .Q(TIMEOUT_FSM_FFd2_369)
  );
  XORCY   \t0/Mcount_prescale_xor<7>  (
    .CI(\t0/Mcount_prescale_cy [6]),
    .LI(\t0/Mcount_prescale_xor<7>_rt_749 ),
    .O(\t0/Result<7>1 )
  );
  XORCY   \t0/Mcount_prescale_xor<6>  (
    .CI(\t0/Mcount_prescale_cy [5]),
    .LI(\t0/Mcount_prescale_cy<6>_rt_737 ),
    .O(\t0/Result<6>1 )
  );
  MUXCY   \t0/Mcount_prescale_cy<6>  (
    .CI(\t0/Mcount_prescale_cy [5]),
    .DI(N0),
    .S(\t0/Mcount_prescale_cy<6>_rt_737 ),
    .O(\t0/Mcount_prescale_cy [6])
  );
  XORCY   \t0/Mcount_prescale_xor<5>  (
    .CI(\t0/Mcount_prescale_cy [4]),
    .LI(\t0/Mcount_prescale_cy<5>_rt_735 ),
    .O(\t0/Result<5>1 )
  );
  MUXCY   \t0/Mcount_prescale_cy<5>  (
    .CI(\t0/Mcount_prescale_cy [4]),
    .DI(N0),
    .S(\t0/Mcount_prescale_cy<5>_rt_735 ),
    .O(\t0/Mcount_prescale_cy [5])
  );
  XORCY   \t0/Mcount_prescale_xor<4>  (
    .CI(\t0/Mcount_prescale_cy [3]),
    .LI(\t0/Mcount_prescale_cy<4>_rt_733 ),
    .O(\t0/Result<4>1 )
  );
  MUXCY   \t0/Mcount_prescale_cy<4>  (
    .CI(\t0/Mcount_prescale_cy [3]),
    .DI(N0),
    .S(\t0/Mcount_prescale_cy<4>_rt_733 ),
    .O(\t0/Mcount_prescale_cy [4])
  );
  XORCY   \t0/Mcount_prescale_xor<3>  (
    .CI(\t0/Mcount_prescale_cy [2]),
    .LI(\t0/Mcount_prescale_cy<3>_rt_731 ),
    .O(\t0/Result<3>1 )
  );
  MUXCY   \t0/Mcount_prescale_cy<3>  (
    .CI(\t0/Mcount_prescale_cy [2]),
    .DI(N0),
    .S(\t0/Mcount_prescale_cy<3>_rt_731 ),
    .O(\t0/Mcount_prescale_cy [3])
  );
  XORCY   \t0/Mcount_prescale_xor<2>  (
    .CI(\t0/Mcount_prescale_cy [1]),
    .LI(\t0/Mcount_prescale_cy<2>_rt_729 ),
    .O(\t0/Result<2>1 )
  );
  MUXCY   \t0/Mcount_prescale_cy<2>  (
    .CI(\t0/Mcount_prescale_cy [1]),
    .DI(N0),
    .S(\t0/Mcount_prescale_cy<2>_rt_729 ),
    .O(\t0/Mcount_prescale_cy [2])
  );
  XORCY   \t0/Mcount_prescale_xor<1>  (
    .CI(\t0/Mcount_prescale_cy [0]),
    .LI(\t0/Mcount_prescale_cy<1>_rt_727 ),
    .O(\t0/Result<1>1 )
  );
  MUXCY   \t0/Mcount_prescale_cy<1>  (
    .CI(\t0/Mcount_prescale_cy [0]),
    .DI(N0),
    .S(\t0/Mcount_prescale_cy<1>_rt_727 ),
    .O(\t0/Mcount_prescale_cy [1])
  );
  XORCY   \t0/Mcount_prescale_xor<0>  (
    .CI(N0),
    .LI(\t0/Mcount_prescale_lut [0]),
    .O(\t0/Result<0>1 )
  );
  MUXCY   \t0/Mcount_prescale_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\t0/Mcount_prescale_lut [0]),
    .O(\t0/Mcount_prescale_cy [0])
  );
  XORCY   \t0/Mcount_count_xor<32>  (
    .CI(\t0/Mcount_count_cy [31]),
    .LI(\t0/Mcount_count_xor<32>_rt_724 ),
    .O(\t0/Result [32])
  );
  XORCY   \t0/Mcount_count_xor<31>  (
    .CI(\t0/Mcount_count_cy [30]),
    .LI(\t0/Mcount_count_cy<31>_rt_708 ),
    .O(\t0/Result [31])
  );
  MUXCY   \t0/Mcount_count_cy<31>  (
    .CI(\t0/Mcount_count_cy [30]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<31>_rt_708 ),
    .O(\t0/Mcount_count_cy [31])
  );
  XORCY   \t0/Mcount_count_xor<30>  (
    .CI(\t0/Mcount_count_cy [29]),
    .LI(\t0/Mcount_count_cy<30>_rt_706 ),
    .O(\t0/Result [30])
  );
  MUXCY   \t0/Mcount_count_cy<30>  (
    .CI(\t0/Mcount_count_cy [29]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<30>_rt_706 ),
    .O(\t0/Mcount_count_cy [30])
  );
  XORCY   \t0/Mcount_count_xor<29>  (
    .CI(\t0/Mcount_count_cy [28]),
    .LI(\t0/Mcount_count_cy<29>_rt_702 ),
    .O(\t0/Result [29])
  );
  MUXCY   \t0/Mcount_count_cy<29>  (
    .CI(\t0/Mcount_count_cy [28]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<29>_rt_702 ),
    .O(\t0/Mcount_count_cy [29])
  );
  XORCY   \t0/Mcount_count_xor<28>  (
    .CI(\t0/Mcount_count_cy [27]),
    .LI(\t0/Mcount_count_cy<28>_rt_700 ),
    .O(\t0/Result [28])
  );
  MUXCY   \t0/Mcount_count_cy<28>  (
    .CI(\t0/Mcount_count_cy [27]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<28>_rt_700 ),
    .O(\t0/Mcount_count_cy [28])
  );
  XORCY   \t0/Mcount_count_xor<27>  (
    .CI(\t0/Mcount_count_cy [26]),
    .LI(\t0/Mcount_count_cy<27>_rt_698 ),
    .O(\t0/Result [27])
  );
  MUXCY   \t0/Mcount_count_cy<27>  (
    .CI(\t0/Mcount_count_cy [26]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<27>_rt_698 ),
    .O(\t0/Mcount_count_cy [27])
  );
  XORCY   \t0/Mcount_count_xor<26>  (
    .CI(\t0/Mcount_count_cy [25]),
    .LI(\t0/Mcount_count_cy<26>_rt_696 ),
    .O(\t0/Result [26])
  );
  MUXCY   \t0/Mcount_count_cy<26>  (
    .CI(\t0/Mcount_count_cy [25]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<26>_rt_696 ),
    .O(\t0/Mcount_count_cy [26])
  );
  XORCY   \t0/Mcount_count_xor<25>  (
    .CI(\t0/Mcount_count_cy [24]),
    .LI(\t0/Mcount_count_cy<25>_rt_694 ),
    .O(\t0/Result [25])
  );
  MUXCY   \t0/Mcount_count_cy<25>  (
    .CI(\t0/Mcount_count_cy [24]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<25>_rt_694 ),
    .O(\t0/Mcount_count_cy [25])
  );
  XORCY   \t0/Mcount_count_xor<24>  (
    .CI(\t0/Mcount_count_cy [23]),
    .LI(\t0/Mcount_count_cy<24>_rt_692 ),
    .O(\t0/Result [24])
  );
  MUXCY   \t0/Mcount_count_cy<24>  (
    .CI(\t0/Mcount_count_cy [23]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<24>_rt_692 ),
    .O(\t0/Mcount_count_cy [24])
  );
  XORCY   \t0/Mcount_count_xor<23>  (
    .CI(\t0/Mcount_count_cy [22]),
    .LI(\t0/Mcount_count_cy<23>_rt_690 ),
    .O(\t0/Result [23])
  );
  MUXCY   \t0/Mcount_count_cy<23>  (
    .CI(\t0/Mcount_count_cy [22]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<23>_rt_690 ),
    .O(\t0/Mcount_count_cy [23])
  );
  XORCY   \t0/Mcount_count_xor<22>  (
    .CI(\t0/Mcount_count_cy [21]),
    .LI(\t0/Mcount_count_cy<22>_rt_688 ),
    .O(\t0/Result [22])
  );
  MUXCY   \t0/Mcount_count_cy<22>  (
    .CI(\t0/Mcount_count_cy [21]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<22>_rt_688 ),
    .O(\t0/Mcount_count_cy [22])
  );
  XORCY   \t0/Mcount_count_xor<21>  (
    .CI(\t0/Mcount_count_cy [20]),
    .LI(\t0/Mcount_count_cy<21>_rt_686 ),
    .O(\t0/Result [21])
  );
  MUXCY   \t0/Mcount_count_cy<21>  (
    .CI(\t0/Mcount_count_cy [20]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<21>_rt_686 ),
    .O(\t0/Mcount_count_cy [21])
  );
  XORCY   \t0/Mcount_count_xor<20>  (
    .CI(\t0/Mcount_count_cy [19]),
    .LI(\t0/Mcount_count_cy<20>_rt_684 ),
    .O(\t0/Result [20])
  );
  MUXCY   \t0/Mcount_count_cy<20>  (
    .CI(\t0/Mcount_count_cy [19]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<20>_rt_684 ),
    .O(\t0/Mcount_count_cy [20])
  );
  XORCY   \t0/Mcount_count_xor<19>  (
    .CI(\t0/Mcount_count_cy [18]),
    .LI(\t0/Mcount_count_cy<19>_rt_680 ),
    .O(\t0/Result [19])
  );
  MUXCY   \t0/Mcount_count_cy<19>  (
    .CI(\t0/Mcount_count_cy [18]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<19>_rt_680 ),
    .O(\t0/Mcount_count_cy [19])
  );
  XORCY   \t0/Mcount_count_xor<18>  (
    .CI(\t0/Mcount_count_cy [17]),
    .LI(\t0/Mcount_count_cy<18>_rt_678 ),
    .O(\t0/Result [18])
  );
  MUXCY   \t0/Mcount_count_cy<18>  (
    .CI(\t0/Mcount_count_cy [17]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<18>_rt_678 ),
    .O(\t0/Mcount_count_cy [18])
  );
  XORCY   \t0/Mcount_count_xor<17>  (
    .CI(\t0/Mcount_count_cy [16]),
    .LI(\t0/Mcount_count_cy<17>_rt_676 ),
    .O(\t0/Result [17])
  );
  MUXCY   \t0/Mcount_count_cy<17>  (
    .CI(\t0/Mcount_count_cy [16]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<17>_rt_676 ),
    .O(\t0/Mcount_count_cy [17])
  );
  XORCY   \t0/Mcount_count_xor<16>  (
    .CI(\t0/Mcount_count_cy [15]),
    .LI(\t0/Mcount_count_cy<16>_rt_674 ),
    .O(\t0/Result [16])
  );
  MUXCY   \t0/Mcount_count_cy<16>  (
    .CI(\t0/Mcount_count_cy [15]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<16>_rt_674 ),
    .O(\t0/Mcount_count_cy [16])
  );
  XORCY   \t0/Mcount_count_xor<15>  (
    .CI(\t0/Mcount_count_cy [14]),
    .LI(\t0/Mcount_count_cy<15>_rt_672 ),
    .O(\t0/Result [15])
  );
  MUXCY   \t0/Mcount_count_cy<15>  (
    .CI(\t0/Mcount_count_cy [14]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<15>_rt_672 ),
    .O(\t0/Mcount_count_cy [15])
  );
  XORCY   \t0/Mcount_count_xor<14>  (
    .CI(\t0/Mcount_count_cy [13]),
    .LI(\t0/Mcount_count_cy<14>_rt_670 ),
    .O(\t0/Result [14])
  );
  MUXCY   \t0/Mcount_count_cy<14>  (
    .CI(\t0/Mcount_count_cy [13]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<14>_rt_670 ),
    .O(\t0/Mcount_count_cy [14])
  );
  XORCY   \t0/Mcount_count_xor<13>  (
    .CI(\t0/Mcount_count_cy [12]),
    .LI(\t0/Mcount_count_cy<13>_rt_668 ),
    .O(\t0/Result [13])
  );
  MUXCY   \t0/Mcount_count_cy<13>  (
    .CI(\t0/Mcount_count_cy [12]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<13>_rt_668 ),
    .O(\t0/Mcount_count_cy [13])
  );
  XORCY   \t0/Mcount_count_xor<12>  (
    .CI(\t0/Mcount_count_cy [11]),
    .LI(\t0/Mcount_count_cy<12>_rt_666 ),
    .O(\t0/Result [12])
  );
  MUXCY   \t0/Mcount_count_cy<12>  (
    .CI(\t0/Mcount_count_cy [11]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<12>_rt_666 ),
    .O(\t0/Mcount_count_cy [12])
  );
  XORCY   \t0/Mcount_count_xor<11>  (
    .CI(\t0/Mcount_count_cy [10]),
    .LI(\t0/Mcount_count_cy<11>_rt_664 ),
    .O(\t0/Result [11])
  );
  MUXCY   \t0/Mcount_count_cy<11>  (
    .CI(\t0/Mcount_count_cy [10]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<11>_rt_664 ),
    .O(\t0/Mcount_count_cy [11])
  );
  XORCY   \t0/Mcount_count_xor<10>  (
    .CI(\t0/Mcount_count_cy [9]),
    .LI(\t0/Mcount_count_cy<10>_rt_662 ),
    .O(\t0/Result [10])
  );
  MUXCY   \t0/Mcount_count_cy<10>  (
    .CI(\t0/Mcount_count_cy [9]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<10>_rt_662 ),
    .O(\t0/Mcount_count_cy [10])
  );
  XORCY   \t0/Mcount_count_xor<9>  (
    .CI(\t0/Mcount_count_cy [8]),
    .LI(\t0/Mcount_count_cy<9>_rt_722 ),
    .O(\t0/Result [9])
  );
  MUXCY   \t0/Mcount_count_cy<9>  (
    .CI(\t0/Mcount_count_cy [8]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<9>_rt_722 ),
    .O(\t0/Mcount_count_cy [9])
  );
  XORCY   \t0/Mcount_count_xor<8>  (
    .CI(\t0/Mcount_count_cy [7]),
    .LI(\t0/Mcount_count_cy<8>_rt_720 ),
    .O(\t0/Result [8])
  );
  MUXCY   \t0/Mcount_count_cy<8>  (
    .CI(\t0/Mcount_count_cy [7]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<8>_rt_720 ),
    .O(\t0/Mcount_count_cy [8])
  );
  XORCY   \t0/Mcount_count_xor<7>  (
    .CI(\t0/Mcount_count_cy [6]),
    .LI(\t0/Mcount_count_cy<7>_rt_718 ),
    .O(\t0/Result [7])
  );
  MUXCY   \t0/Mcount_count_cy<7>  (
    .CI(\t0/Mcount_count_cy [6]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<7>_rt_718 ),
    .O(\t0/Mcount_count_cy [7])
  );
  XORCY   \t0/Mcount_count_xor<6>  (
    .CI(\t0/Mcount_count_cy [5]),
    .LI(\t0/Mcount_count_cy<6>_rt_716 ),
    .O(\t0/Result [6])
  );
  MUXCY   \t0/Mcount_count_cy<6>  (
    .CI(\t0/Mcount_count_cy [5]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<6>_rt_716 ),
    .O(\t0/Mcount_count_cy [6])
  );
  XORCY   \t0/Mcount_count_xor<5>  (
    .CI(\t0/Mcount_count_cy [4]),
    .LI(\t0/Mcount_count_cy<5>_rt_714 ),
    .O(\t0/Result [5])
  );
  MUXCY   \t0/Mcount_count_cy<5>  (
    .CI(\t0/Mcount_count_cy [4]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<5>_rt_714 ),
    .O(\t0/Mcount_count_cy [5])
  );
  XORCY   \t0/Mcount_count_xor<4>  (
    .CI(\t0/Mcount_count_cy [3]),
    .LI(\t0/Mcount_count_cy<4>_rt_712 ),
    .O(\t0/Result [4])
  );
  MUXCY   \t0/Mcount_count_cy<4>  (
    .CI(\t0/Mcount_count_cy [3]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<4>_rt_712 ),
    .O(\t0/Mcount_count_cy [4])
  );
  XORCY   \t0/Mcount_count_xor<3>  (
    .CI(\t0/Mcount_count_cy [2]),
    .LI(\t0/Mcount_count_cy<3>_rt_710 ),
    .O(\t0/Result [3])
  );
  MUXCY   \t0/Mcount_count_cy<3>  (
    .CI(\t0/Mcount_count_cy [2]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<3>_rt_710 ),
    .O(\t0/Mcount_count_cy [3])
  );
  XORCY   \t0/Mcount_count_xor<2>  (
    .CI(\t0/Mcount_count_cy [1]),
    .LI(\t0/Mcount_count_cy<2>_rt_704 ),
    .O(\t0/Result [2])
  );
  MUXCY   \t0/Mcount_count_cy<2>  (
    .CI(\t0/Mcount_count_cy [1]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<2>_rt_704 ),
    .O(\t0/Mcount_count_cy [2])
  );
  XORCY   \t0/Mcount_count_xor<1>  (
    .CI(\t0/Mcount_count_cy [0]),
    .LI(\t0/Mcount_count_cy<1>_rt_682 ),
    .O(\t0/Result [1])
  );
  MUXCY   \t0/Mcount_count_cy<1>  (
    .CI(\t0/Mcount_count_cy [0]),
    .DI(N0),
    .S(\t0/Mcount_count_cy<1>_rt_682 ),
    .O(\t0/Mcount_count_cy [1])
  );
  XORCY   \t0/Mcount_count_xor<0>  (
    .CI(N0),
    .LI(\t0/Mcount_count_lut [0]),
    .O(\t0/Result [0])
  );
  MUXCY   \t0/Mcount_count_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\t0/Mcount_count_lut [0]),
    .O(\t0/Mcount_count_cy [0])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<8>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [7]),
    .DI(N1),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [8]),
    .O(\t0/count_cmp_ge0000 )
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<7>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [6]),
    .DI(N1),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [7]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [7])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \t0/Mcompar_count_cmp_ge0000_lut<7>  (
    .I0(\t0/count [28]),
    .I1(\t0/count [29]),
    .I2(\t0/count [30]),
    .I3(\t0/count [31]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [7])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<6>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [5]),
    .DI(N1),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [6]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [6])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \t0/Mcompar_count_cmp_ge0000_lut<6>  (
    .I0(\t0/count [24]),
    .I1(\t0/count [25]),
    .I2(\t0/count [26]),
    .I3(\t0/count [27]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [6])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<5>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [4]),
    .DI(N1),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [5]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [5])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \t0/Mcompar_count_cmp_ge0000_lut<5>  (
    .I0(\t0/count [20]),
    .I1(\t0/count [21]),
    .I2(\t0/count [22]),
    .I3(\t0/count [23]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [5])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<4>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [3]),
    .DI(N1),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [4]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [4])
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \t0/Mcompar_count_cmp_ge0000_lut<4>  (
    .I0(\t0/count [16]),
    .I1(\t0/count [17]),
    .I2(\t0/count [18]),
    .I3(\t0/count [19]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [4])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<3>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [2]),
    .DI(N0),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [3]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \t0/Mcompar_count_cmp_ge0000_lut<3>  (
    .I0(\t0/count [12]),
    .I1(\t0/count [13]),
    .I2(\t0/count [14]),
    .I3(\t0/count [15]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [3])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<2>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [1]),
    .DI(N0),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [2]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [2])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \t0/Mcompar_count_cmp_ge0000_lut<2>  (
    .I0(\t0/count [8]),
    .I1(\t0/count [9]),
    .I2(\t0/count [10]),
    .I3(\t0/count [11]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [2])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<1>  (
    .CI(\t0/Mcompar_count_cmp_ge0000_cy [0]),
    .DI(N0),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [1]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [1])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \t0/Mcompar_count_cmp_ge0000_lut<1>  (
    .I0(\t0/count [4]),
    .I1(\t0/count [5]),
    .I2(\t0/count [6]),
    .I3(\t0/count [7]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [1])
  );
  MUXCY   \t0/Mcompar_count_cmp_ge0000_cy<0>  (
    .CI(N1),
    .DI(N0),
    .S(\t0/Mcompar_count_cmp_ge0000_lut [0]),
    .O(\t0/Mcompar_count_cmp_ge0000_cy [0])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \t0/Mcompar_count_cmp_ge0000_lut<0>  (
    .I0(\t0/count [0]),
    .I1(\t0/count [1]),
    .I2(\t0/count [2]),
    .I3(\t0/count [3]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [0])
  );
  FDCE   \t0/count_32  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [32]),
    .Q(\t0/count [32])
  );
  FDCE   \t0/count_31  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [31]),
    .Q(\t0/count [31])
  );
  FDCE   \t0/count_30  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [30]),
    .Q(\t0/count [30])
  );
  FDCE   \t0/count_29  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [29]),
    .Q(\t0/count [29])
  );
  FDCE   \t0/count_28  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [28]),
    .Q(\t0/count [28])
  );
  FDCE   \t0/count_27  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [27]),
    .Q(\t0/count [27])
  );
  FDCE   \t0/count_26  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [26]),
    .Q(\t0/count [26])
  );
  FDCE   \t0/count_25  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [25]),
    .Q(\t0/count [25])
  );
  FDCE   \t0/count_24  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [24]),
    .Q(\t0/count [24])
  );
  FDCE   \t0/count_23  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [23]),
    .Q(\t0/count [23])
  );
  FDCE   \t0/count_22  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [22]),
    .Q(\t0/count [22])
  );
  FDCE   \t0/count_21  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [21]),
    .Q(\t0/count [21])
  );
  FDCE   \t0/count_20  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [20]),
    .Q(\t0/count [20])
  );
  FDCE   \t0/count_19  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [19]),
    .Q(\t0/count [19])
  );
  FDCE   \t0/count_18  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [18]),
    .Q(\t0/count [18])
  );
  FDCE   \t0/count_17  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [17]),
    .Q(\t0/count [17])
  );
  FDCE   \t0/count_16  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [16]),
    .Q(\t0/count [16])
  );
  FDCE   \t0/count_15  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [15]),
    .Q(\t0/count [15])
  );
  FDCE   \t0/count_14  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [14]),
    .Q(\t0/count [14])
  );
  FDCE   \t0/count_13  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [13]),
    .Q(\t0/count [13])
  );
  FDCE   \t0/count_12  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [12]),
    .Q(\t0/count [12])
  );
  FDCE   \t0/count_11  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [11]),
    .Q(\t0/count [11])
  );
  FDCE   \t0/count_10  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [10]),
    .Q(\t0/count [10])
  );
  FDCE   \t0/count_9  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [9]),
    .Q(\t0/count [9])
  );
  FDCE   \t0/count_8  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [8]),
    .Q(\t0/count [8])
  );
  FDCE   \t0/count_7  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [7]),
    .Q(\t0/count [7])
  );
  FDCE   \t0/count_6  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [6]),
    .Q(\t0/count [6])
  );
  FDCE   \t0/count_5  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [5]),
    .Q(\t0/count [5])
  );
  FDCE   \t0/count_4  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [4]),
    .Q(\t0/count [4])
  );
  FDCE   \t0/count_3  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [3]),
    .Q(\t0/count [3])
  );
  FDCE   \t0/count_2  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [2]),
    .Q(\t0/count [2])
  );
  FDCE   \t0/count_1  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [1]),
    .Q(\t0/count [1])
  );
  FDCE   \t0/count_0  (
    .C(clk_BUFGP_433),
    .CE(\t0/count_not0001 ),
    .CLR(clear_429),
    .D(\t0/Result [0]),
    .Q(\t0/count [0])
  );
  FDE   \t0/prescale_7  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_7 ),
    .Q(\t0/prescale [7])
  );
  FDE   \t0/prescale_6  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_6 ),
    .Q(\t0/prescale [6])
  );
  FDE   \t0/prescale_5  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_5 ),
    .Q(\t0/prescale [5])
  );
  FDE   \t0/prescale_4  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_4 ),
    .Q(\t0/prescale [4])
  );
  FDE   \t0/prescale_3  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_3 ),
    .Q(\t0/prescale [3])
  );
  FDE   \t0/prescale_2  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_2 ),
    .Q(\t0/prescale [2])
  );
  FDE   \t0/prescale_1  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_1 ),
    .Q(\t0/prescale [1])
  );
  FDE   \t0/prescale_0  (
    .C(clk_BUFGP_433),
    .CE(\t0/prescale_and0000 ),
    .D(\t0/Mcount_prescale_eqn_0 ),
    .Q(\t0/prescale [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Result<1>1  (
    .I0(prescale[1]),
    .I1(prescale[0]),
    .O(Result[1])
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \t0/Mcount_prescale_eqn_014  (
    .I0(\t0/prescale [6]),
    .I1(\t0/prescale [3]),
    .I2(\t0/prescale [2]),
    .I3(\t0/prescale [1]),
    .O(\t0/Mcount_prescale_eqn_014_740 )
  );
  LUT4 #(
    .INIT ( 16'hFF7F ))
  \t0/Mcount_prescale_eqn_0116  (
    .I0(\t0/prescale [0]),
    .I1(\t0/prescale [5]),
    .I2(\t0/prescale [4]),
    .I3(\t0/prescale [7]),
    .O(\t0/Mcount_prescale_eqn_0116_739 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  \t0/count_not000110  (
    .I0(\t0/prescale [4]),
    .I1(\t0/prescale [3]),
    .I2(\t0/prescale [0]),
    .I3(\t0/prescale [1]),
    .O(\t0/count_not000110_826 )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \t0/count_not000122  (
    .I0(\t0/prescale [5]),
    .I1(\t0/prescale [2]),
    .I2(\t0/prescale [7]),
    .I3(\t0/prescale [6]),
    .O(\t0/count_not000122_827 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \t0/count_not000137  (
    .I0(\t0/count_not000122_827 ),
    .I1(\t0/count_cmp_ge0000 ),
    .I2(\t0/count_not000110_826 ),
    .O(\t0/count_not0001 )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \t0/prescale_and00001  (
    .I0(clear_429),
    .I1(\t0/count_cmp_ge0000 ),
    .O(\t0/prescale_and0000 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \Result<2>1  (
    .I0(prescale[2]),
    .I1(prescale[1]),
    .I2(prescale[0]),
    .O(Result[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  Mxor_TIMEOUT_xor0000_Result1 (
    .I0(last[1]),
    .I1(last[0]),
    .O(TIMEOUT_xor0000)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  _mux00231 (
    .I0(necpoj[0]),
    .I1(rxbuffer[7]),
    .I2(rxbuffer[8]),
    .O(_mux0023)
  );
  LUT4 #(
    .INIT ( 16'h0F02 ))
  \necpoj_mux0000<6>49  (
    .I0(\necpoj_mux0000<6>19 ),
    .I1(TIMEOUT_cmp_gt0000),
    .I2(N311),
    .I3(\necpoj_mux0000<6>5_484 ),
    .O(necpoj_mux0000[6])
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00141 (
    .I0(rxbuffer[17]),
    .I1(rxbuffer[16]),
    .I2(necpoj[0]),
    .O(_mux0014)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00121 (
    .I0(rxbuffer[19]),
    .I1(rxbuffer[18]),
    .I2(necpoj[0]),
    .O(_mux0012)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00101 (
    .I0(rxbuffer[21]),
    .I1(rxbuffer[20]),
    .I2(necpoj[0]),
    .O(_mux0010)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00091 (
    .I0(rxbuffer[22]),
    .I1(rxbuffer[21]),
    .I2(necpoj[0]),
    .O(_mux0009)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00071 (
    .I0(rxbuffer[24]),
    .I1(rxbuffer[23]),
    .I2(necpoj[0]),
    .O(_mux0007)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00061 (
    .I0(rxbuffer[25]),
    .I1(rxbuffer[24]),
    .I2(necpoj[0]),
    .O(_mux0006)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00051 (
    .I0(rxbuffer[26]),
    .I1(rxbuffer[25]),
    .I2(necpoj[0]),
    .O(_mux0005)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00041 (
    .I0(rxbuffer[27]),
    .I1(rxbuffer[26]),
    .I2(necpoj[0]),
    .O(_mux0004)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00031 (
    .I0(rxbuffer[28]),
    .I1(rxbuffer[27]),
    .I2(necpoj[0]),
    .O(_mux0003)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00021 (
    .I0(rxbuffer[29]),
    .I1(rxbuffer[28]),
    .I2(necpoj[0]),
    .O(_mux0002)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00011 (
    .I0(rxbuffer[30]),
    .I1(rxbuffer[29]),
    .I2(necpoj[0]),
    .O(_mux0001)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00001 (
    .I0(rxbuffer[31]),
    .I1(rxbuffer[30]),
    .I2(necpoj[0]),
    .O(_mux0000)
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  TIMEOUT_cmp_gt00011_SW0 (
    .I0(necpoj[2]),
    .I1(necpoj[3]),
    .I2(necpoj[1]),
    .I3(necpoj_0_1_469),
    .O(N39)
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  TIMEOUT_cmp_gt00011 (
    .I0(necpoj[5]),
    .I1(necpoj[4]),
    .I2(necpoj[6]),
    .I3(N39),
    .O(TIMEOUT_cmp_gt0001)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  outtimer_cmp_eq000012 (
    .I0(_mux0013),
    .I1(_mux0012),
    .I2(_mux0005),
    .I3(_mux0004),
    .O(outtimer_cmp_eq000012_542)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  outtimer_cmp_eq000025 (
    .I0(_mux0008),
    .I1(_mux0009),
    .I2(_mux0000),
    .I3(_mux0001),
    .O(outtimer_cmp_eq000025_543)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  outtimer_cmp_eq000049 (
    .I0(_mux0015),
    .I1(_mux0014),
    .I2(_mux0007),
    .I3(_mux0006),
    .O(outtimer_cmp_eq000049_544)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  outtimer_cmp_eq000062 (
    .I0(_mux0011),
    .I1(_mux0010),
    .I2(_mux0003),
    .I3(_mux0002),
    .O(outtimer_cmp_eq000062_545)
  );
  LUT4 #(
    .INIT ( 16'hAA8A ))
  TIMEOUT_not0001 (
    .I0(TIMEOUT_xor0000),
    .I1(TIMEOUT_cmp_gt0000),
    .I2(dataready_and0000),
    .I3(N311),
    .O(TIMEOUT_not0001_379)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00281 (
    .I0(rxbuffer[3]),
    .I1(rxbuffer[2]),
    .I2(necpoj_0_1_469),
    .O(_mux0028)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00261 (
    .I0(rxbuffer[5]),
    .I1(rxbuffer[4]),
    .I2(necpoj_0_1_469),
    .O(_mux0026)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  _mux00211 (
    .I0(necpoj[0]),
    .I1(rxbuffer[9]),
    .I2(rxbuffer[10]),
    .O(_mux0021)
  );
  LUT4 #(
    .INIT ( 16'h5557 ))
  TIMEOUT_cmp_lt00001 (
    .I0(necpoj[6]),
    .I1(necpoj[5]),
    .I2(necpoj[4]),
    .I3(N198),
    .O(TIMEOUT_cmp_lt0000)
  );
  LUT3 #(
    .INIT ( 8'hAC ))
  _mux00251 (
    .I0(rxbuffer[6]),
    .I1(rxbuffer[5]),
    .I2(necpoj[0]),
    .O(_mux0025)
  );
  LUT4 #(
    .INIT ( 16'h3F32 ))
  \necpoj_mux0000<7>38  (
    .I0(\necpoj_mux0000<7>2_486 ),
    .I1(IR_IBUF_1),
    .I2(N311),
    .I3(\necpoj_mux0000<7>24_487 ),
    .O(necpoj_mux0000[7])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \necpoj_mux0000<4>1  (
    .I0(N204),
    .I1(Madd_old_necpoj_4_add0000_cy[2]),
    .I2(necpoj[3]),
    .O(necpoj_mux0000[4])
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  \necpoj_mux0000<3>1  (
    .I0(N32),
    .I1(Madd_old_necpoj_4_add0000_cy[3]),
    .I2(necpoj[4]),
    .O(necpoj_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'h90 ))
  \necpoj_mux0000<1>2  (
    .I0(necpoj[6]),
    .I1(N02),
    .I2(N32),
    .O(necpoj_mux0000[1])
  );
  LUT4 #(
    .INIT ( 16'h60C0 ))
  \necpoj_mux0000<2>1  (
    .I0(Madd_old_necpoj_4_add0000_cy[3]),
    .I1(necpoj[5]),
    .I2(N32),
    .I3(necpoj[4]),
    .O(necpoj_mux0000[2])
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \TIMEOUT_FSM_FFd2-In  (
    .I0(N311),
    .I1(N45),
    .I2(TIMEOUT_FSM_FFd2_369),
    .I3(N216),
    .O(\TIMEOUT_FSM_FFd2-In_370 )
  );
  LUT4 #(
    .INIT ( 16'hF111 ))
  \TIMEOUT_FSM_FFd1-In  (
    .I0(N311),
    .I1(N47),
    .I2(TIMEOUT_FSM_FFd1_366),
    .I3(TIMEOUT_FSM_N0),
    .O(\TIMEOUT_FSM_FFd1-In_367 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  repeat_code_mux000012 (
    .I0(old_outtimer_2_add0000[18]),
    .I1(old_outtimer_2_add0000[15]),
    .I2(repeat_code_mux00003_569),
    .I3(old_outtimer_2_add0000[16]),
    .O(repeat_code_mux000012_567)
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  repeat_code_mux000031 (
    .I0(old_outtimer_2_add0000[21]),
    .I1(repeat_code_mux000020_568),
    .I2(old_outtimer_2_add0000[20]),
    .I3(old_outtimer_2_add0000[22]),
    .O(repeat_code_mux000031_570)
  );
  LUT4 #(
    .INIT ( 16'h0FEF ))
  repeat_code_mux000071 (
    .I0(repeat_code_mux000012_567),
    .I1(repeat_code_mux000031_570),
    .I2(repeat_code_and0000),
    .I3(N14),
    .O(repeat_code_mux000071_571)
  );
  LUT4 #(
    .INIT ( 16'hA0EC ))
  repeat_code_mux0000125 (
    .I0(repeat_code_OBUF_563),
    .I1(repeat_code_mux0000108_566),
    .I2(repeat_code_mux000071_571),
    .I3(outtimer_cmp_eq0002),
    .O(repeat_code_mux0000)
  );
  LUT3 #(
    .INIT ( 8'hF7 ))
  \PREPULSE_FSM_FFd1-In11  (
    .I0(TIMEOUT_cmp_gt0001),
    .I1(TIMEOUT_cmp_lt0000),
    .I2(N206),
    .O(PREPULSE_FSM_N0)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  outtimer_cmp_eq000120 (
    .I0(_mux0030),
    .I1(_mux0025),
    .I2(_mux0022),
    .I3(_mux0017),
    .O(outtimer_cmp_eq000120_547)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  outtimer_cmp_eq000141 (
    .I0(_mux0027),
    .I1(_mux0028),
    .I2(_mux0019),
    .I3(_mux0020),
    .O(outtimer_cmp_eq000141_548)
  );
  LUT4 #(
    .INIT ( 16'h135F ))
  outtimer_cmp_eq000154 (
    .I0(_mux0024),
    .I1(_mux0026),
    .I2(_mux0016),
    .I3(_mux0018),
    .O(outtimer_cmp_eq000154_549)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  outtimer_or000022 (
    .I0(TIMEOUT_cmp_gt0000142_376),
    .I1(outtimer_or0000211_554),
    .O(data_not0001)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  TIMEOUT_cmp_eq00001 (
    .I0(necpoj[6]),
    .I1(necpoj[5]),
    .I2(necpoj[4]),
    .I3(N54),
    .O(N29)
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  PREPULSE_FSM_Out01 (
    .I0(PREPULSE_FSM_FFd1_350),
    .I1(PREPULSE_FSM_FFd2_353),
    .O(PREPULSE_cmp_eq0000)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  PREPULSE_or00001 (
    .I0(PREPULSE_FSM_FFd1_350),
    .I1(PREPULSE_FSM_FFd2_353),
    .O(PREPULSE_or0000)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  PREPULSE_or00021 (
    .I0(PREPULSE_FSM_FFd1_350),
    .I1(PREPULSE_FSM_FFd2_353),
    .O(PREPULSE_or0002)
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  old_dataready_3_cmp_eq0000110 (
    .I0(old_outtimer_2_add0000[2]),
    .I1(old_outtimer_2_add0000[3]),
    .I2(old_outtimer_2_add0000[10]),
    .I3(old_outtimer_2_add0000[17]),
    .O(old_dataready_3_cmp_eq0000110_488)
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  old_dataready_3_cmp_eq0000150 (
    .I0(old_outtimer_2_add0000[0]),
    .I1(old_outtimer_2_add0000[1]),
    .I2(old_outtimer_2_add0000[9]),
    .I3(old_outtimer_2_add0000[13]),
    .O(old_dataready_3_cmp_eq0000150_490)
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  old_dataready_3_cmp_eq0000162 (
    .I0(old_outtimer_2_add0000[23]),
    .I1(old_dataready_3_cmp_eq0000110_488),
    .I2(old_dataready_3_cmp_eq0000150_490),
    .I3(N207),
    .O(repeat_code_and0000)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  repeat_code_or000010 (
    .I0(old_outtimer_2_add0000[16]),
    .I1(old_outtimer_2_add0000[15]),
    .O(repeat_code_or000010_573)
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  repeat_code_or000018 (
    .I0(old_outtimer_2_add0000[11]),
    .I1(old_outtimer_2_add0000[8]),
    .I2(old_outtimer_2_add0000[18]),
    .O(repeat_code_or000018_577)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  repeat_code_or0000137 (
    .I0(repeat_code_or000010_573),
    .I1(repeat_code_or000018_577),
    .I2(N208),
    .I3(repeat_code_or0000127_575),
    .O(N14)
  );
  IBUF   IR_IBUF (
    .I(IR),
    .O(IR_IBUF_1)
  );
  OBUF   repeat_code_OBUF (
    .I(repeat_code_OBUF_563),
    .O(repeat_code)
  );
  OBUF   dataready_OBUF (
    .I(dataready_OBUF_460),
    .O(dataready)
  );
  OBUF   address_7_OBUF (
    .I(address_7_427),
    .O(address[7])
  );
  OBUF   address_6_OBUF (
    .I(address_6_426),
    .O(address[6])
  );
  OBUF   address_5_OBUF (
    .I(address_5_425),
    .O(address[5])
  );
  OBUF   address_4_OBUF (
    .I(address_4_424),
    .O(address[4])
  );
  OBUF   address_3_OBUF (
    .I(address_3_423),
    .O(address[3])
  );
  OBUF   address_2_OBUF (
    .I(address_2_422),
    .O(address[2])
  );
  OBUF   address_1_OBUF (
    .I(address_1_421),
    .O(address[1])
  );
  OBUF   address_0_OBUF (
    .I(address_0_420),
    .O(address[0])
  );
  OBUF   data_7_OBUF (
    .I(data_7_449),
    .O(data[7])
  );
  OBUF   data_6_OBUF (
    .I(data_6_448),
    .O(data[6])
  );
  OBUF   data_5_OBUF (
    .I(data_5_447),
    .O(data[5])
  );
  OBUF   data_4_OBUF (
    .I(data_4_446),
    .O(data[4])
  );
  OBUF   data_3_OBUF (
    .I(data_3_445),
    .O(data[3])
  );
  OBUF   data_2_OBUF (
    .I(data_2_444),
    .O(data[2])
  );
  OBUF   data_1_OBUF (
    .I(data_1_443),
    .O(data[1])
  );
  OBUF   data_0_OBUF (
    .I(data_0_442),
    .O(data[0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<1>_rt  (
    .I0(outtimer[1]),
    .O(\Madd_old_outtimer_2_add0000_cy<1>_rt_26 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<2>_rt  (
    .I0(outtimer[2]),
    .O(\Madd_old_outtimer_2_add0000_cy<2>_rt_34 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<3>_rt  (
    .I0(outtimer[3]),
    .O(\Madd_old_outtimer_2_add0000_cy<3>_rt_36 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<4>_rt  (
    .I0(outtimer[4]),
    .O(\Madd_old_outtimer_2_add0000_cy<4>_rt_38 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<5>_rt  (
    .I0(outtimer[5]),
    .O(\Madd_old_outtimer_2_add0000_cy<5>_rt_40 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<6>_rt  (
    .I0(outtimer[6]),
    .O(\Madd_old_outtimer_2_add0000_cy<6>_rt_42 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<7>_rt  (
    .I0(outtimer[7]),
    .O(\Madd_old_outtimer_2_add0000_cy<7>_rt_44 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<8>_rt  (
    .I0(outtimer[8]),
    .O(\Madd_old_outtimer_2_add0000_cy<8>_rt_46 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<9>_rt  (
    .I0(outtimer[9]),
    .O(\Madd_old_outtimer_2_add0000_cy<9>_rt_48 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<10>_rt  (
    .I0(outtimer[10]),
    .O(\Madd_old_outtimer_2_add0000_cy<10>_rt_6 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<11>_rt  (
    .I0(outtimer[11]),
    .O(\Madd_old_outtimer_2_add0000_cy<11>_rt_8 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<12>_rt  (
    .I0(outtimer[12]),
    .O(\Madd_old_outtimer_2_add0000_cy<12>_rt_10 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<13>_rt  (
    .I0(outtimer[13]),
    .O(\Madd_old_outtimer_2_add0000_cy<13>_rt_12 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<14>_rt  (
    .I0(outtimer[14]),
    .O(\Madd_old_outtimer_2_add0000_cy<14>_rt_14 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<15>_rt  (
    .I0(outtimer[15]),
    .O(\Madd_old_outtimer_2_add0000_cy<15>_rt_16 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<16>_rt  (
    .I0(outtimer[16]),
    .O(\Madd_old_outtimer_2_add0000_cy<16>_rt_18 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<17>_rt  (
    .I0(outtimer[17]),
    .O(\Madd_old_outtimer_2_add0000_cy<17>_rt_20 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<18>_rt  (
    .I0(outtimer[18]),
    .O(\Madd_old_outtimer_2_add0000_cy<18>_rt_22 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<19>_rt  (
    .I0(outtimer[19]),
    .O(\Madd_old_outtimer_2_add0000_cy<19>_rt_24 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<20>_rt  (
    .I0(outtimer[20]),
    .O(\Madd_old_outtimer_2_add0000_cy<20>_rt_28 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<21>_rt  (
    .I0(outtimer[21]),
    .O(\Madd_old_outtimer_2_add0000_cy<21>_rt_30 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_cy<22>_rt  (
    .I0(outtimer[22]),
    .O(\Madd_old_outtimer_2_add0000_cy<22>_rt_32 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_lt0001_cy<1>_rt  (
    .I0(\t0/count [3]),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_cy<1>_rt_112 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_lt0001_cy<2>_rt  (
    .I0(\t0/count [4]),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_cy<2>_rt_114 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_lt0001_cy<3>_rt  (
    .I0(\t0/count [5]),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_cy<3>_rt_116 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_lt0001_cy<4>_rt  (
    .I0(\t0/count [6]),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_cy<4>_rt_118 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_gt0003_cy<4>_0_rt  (
    .I0(\t0/count [10]),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_cy<4>_0_rt_87 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_lt0002_cy<2>_rt  (
    .I0(\t0/count [7]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_cy<2>_rt_136 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_lt0002_cy<4>_rt  (
    .I0(\t0/count [9]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_cy<4>_rt_139 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_lt0002_cy<6>_rt  (
    .I0(\t0/count [11]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_cy<6>_rt_142 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Mcompar_TIMEOUT_cmp_gt0002_cy<5>_rt  (
    .I0(\t0/count [6]),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_cy<5>_rt_60 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_prescale_cy<6>_rt  (
    .I0(\t0/prescale [6]),
    .O(\t0/Mcount_prescale_cy<6>_rt_737 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_prescale_cy<5>_rt  (
    .I0(\t0/prescale [5]),
    .O(\t0/Mcount_prescale_cy<5>_rt_735 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_prescale_cy<4>_rt  (
    .I0(\t0/prescale [4]),
    .O(\t0/Mcount_prescale_cy<4>_rt_733 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_prescale_cy<3>_rt  (
    .I0(\t0/prescale [3]),
    .O(\t0/Mcount_prescale_cy<3>_rt_731 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_prescale_cy<2>_rt  (
    .I0(\t0/prescale [2]),
    .O(\t0/Mcount_prescale_cy<2>_rt_729 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_prescale_cy<1>_rt  (
    .I0(\t0/prescale [1]),
    .O(\t0/Mcount_prescale_cy<1>_rt_727 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<31>_rt  (
    .I0(\t0/count [31]),
    .O(\t0/Mcount_count_cy<31>_rt_708 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<30>_rt  (
    .I0(\t0/count [30]),
    .O(\t0/Mcount_count_cy<30>_rt_706 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<29>_rt  (
    .I0(\t0/count [29]),
    .O(\t0/Mcount_count_cy<29>_rt_702 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<28>_rt  (
    .I0(\t0/count [28]),
    .O(\t0/Mcount_count_cy<28>_rt_700 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<27>_rt  (
    .I0(\t0/count [27]),
    .O(\t0/Mcount_count_cy<27>_rt_698 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<26>_rt  (
    .I0(\t0/count [26]),
    .O(\t0/Mcount_count_cy<26>_rt_696 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<25>_rt  (
    .I0(\t0/count [25]),
    .O(\t0/Mcount_count_cy<25>_rt_694 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<24>_rt  (
    .I0(\t0/count [24]),
    .O(\t0/Mcount_count_cy<24>_rt_692 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<23>_rt  (
    .I0(\t0/count [23]),
    .O(\t0/Mcount_count_cy<23>_rt_690 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<22>_rt  (
    .I0(\t0/count [22]),
    .O(\t0/Mcount_count_cy<22>_rt_688 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<21>_rt  (
    .I0(\t0/count [21]),
    .O(\t0/Mcount_count_cy<21>_rt_686 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<20>_rt  (
    .I0(\t0/count [20]),
    .O(\t0/Mcount_count_cy<20>_rt_684 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<19>_rt  (
    .I0(\t0/count [19]),
    .O(\t0/Mcount_count_cy<19>_rt_680 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<18>_rt  (
    .I0(\t0/count [18]),
    .O(\t0/Mcount_count_cy<18>_rt_678 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<17>_rt  (
    .I0(\t0/count [17]),
    .O(\t0/Mcount_count_cy<17>_rt_676 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<16>_rt  (
    .I0(\t0/count [16]),
    .O(\t0/Mcount_count_cy<16>_rt_674 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<15>_rt  (
    .I0(\t0/count [15]),
    .O(\t0/Mcount_count_cy<15>_rt_672 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<14>_rt  (
    .I0(\t0/count [14]),
    .O(\t0/Mcount_count_cy<14>_rt_670 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<13>_rt  (
    .I0(\t0/count [13]),
    .O(\t0/Mcount_count_cy<13>_rt_668 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<12>_rt  (
    .I0(\t0/count [12]),
    .O(\t0/Mcount_count_cy<12>_rt_666 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<11>_rt  (
    .I0(\t0/count [11]),
    .O(\t0/Mcount_count_cy<11>_rt_664 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<10>_rt  (
    .I0(\t0/count [10]),
    .O(\t0/Mcount_count_cy<10>_rt_662 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<9>_rt  (
    .I0(\t0/count [9]),
    .O(\t0/Mcount_count_cy<9>_rt_722 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<8>_rt  (
    .I0(\t0/count [8]),
    .O(\t0/Mcount_count_cy<8>_rt_720 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<7>_rt  (
    .I0(\t0/count [7]),
    .O(\t0/Mcount_count_cy<7>_rt_718 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<6>_rt  (
    .I0(\t0/count [6]),
    .O(\t0/Mcount_count_cy<6>_rt_716 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<5>_rt  (
    .I0(\t0/count [5]),
    .O(\t0/Mcount_count_cy<5>_rt_714 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<4>_rt  (
    .I0(\t0/count [4]),
    .O(\t0/Mcount_count_cy<4>_rt_712 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<3>_rt  (
    .I0(\t0/count [3]),
    .O(\t0/Mcount_count_cy<3>_rt_710 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<2>_rt  (
    .I0(\t0/count [2]),
    .O(\t0/Mcount_count_cy<2>_rt_704 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_cy<1>_rt  (
    .I0(\t0/count [1]),
    .O(\t0/Mcount_count_cy<1>_rt_682 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Madd_old_outtimer_2_add0000_xor<23>_rt  (
    .I0(outtimer[23]),
    .O(\Madd_old_outtimer_2_add0000_xor<23>_rt_50 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_prescale_xor<7>_rt  (
    .I0(\t0/prescale [7]),
    .O(\t0/Mcount_prescale_xor<7>_rt_749 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \t0/Mcount_count_xor<32>_rt  (
    .I0(\t0/count [32]),
    .O(\t0/Mcount_count_xor<32>_rt_724 )
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<18>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[18]),
    .I2(old_outtimer_2_add0000[18]),
    .I3(N2),
    .O(Mcount_outtimer_lut[18])
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<16>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[16]),
    .I2(old_outtimer_2_add0000[16]),
    .I3(N3),
    .O(Mcount_outtimer_lut[16])
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<19>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[19]),
    .I2(old_outtimer_2_add0000[19]),
    .I3(N2),
    .O(Mcount_outtimer_lut[19])
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<17>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[17]),
    .I2(old_outtimer_2_add0000[17]),
    .I3(N3),
    .O(Mcount_outtimer_lut[17])
  );
  LUT3 #(
    .INIT ( 8'hC9 ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<0>  (
    .I0(TIMEOUT_FSM_FFd1_366),
    .I1(\t0/count [2]),
    .I2(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[0] )
  );
  LUT4 #(
    .INIT ( 16'hFEEE ))
  \outtimer_mux0001<0>1  (
    .I0(N210),
    .I1(\outtimer_mux0001<10>117_551 ),
    .I2(repeat_code_and0000),
    .I3(repeat_code_or0000137_576),
    .O(N2)
  );
  LUT3 #(
    .INIT ( 8'hA9 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<2>  (
    .I0(\t0/count [3]),
    .I1(PREPULSE_FSM_FFd1_350),
    .I2(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[2] )
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<5>  (
    .I0(TIMEOUT_FSM_FFd1_366),
    .I1(\t0/count [7]),
    .I2(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[5] )
  );
  LUT3 #(
    .INIT ( 8'h36 ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<7>  (
    .I0(TIMEOUT_FSM_FFd1_366),
    .I1(\t0/count [9]),
    .I2(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[7] )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<7>  (
    .I0(\t0/count [8]),
    .I1(PREPULSE_FSM_FFd1_350),
    .I2(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[7] )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<8>  (
    .I0(\t0/count [9]),
    .I1(PREPULSE_FSM_FFd1_350),
    .I2(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[8] )
  );
  LUT3 #(
    .INIT ( 8'h9C ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<9>  (
    .I0(TIMEOUT_FSM_FFd1_366),
    .I1(\t0/count [11]),
    .I2(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[9] )
  );
  LUT3 #(
    .INIT ( 8'hA6 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<9>  (
    .I0(\t0/count [10]),
    .I1(PREPULSE_FSM_FFd1_350),
    .I2(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[9] )
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<10>  (
    .I0(\t0/count [11]),
    .I1(PREPULSE_FSM_FFd1_350),
    .I2(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[10] )
  );
  LUT3 #(
    .INIT ( 8'h36 ))
  \Mcompar_TIMEOUT_cmp_lt0001_lut<11>  (
    .I0(TIMEOUT_FSM_FFd1_366),
    .I1(\t0/count [13]),
    .I2(TIMEOUT_FSM_FFd2_369),
    .O(\Mcompar_TIMEOUT_cmp_lt0001_lut[11] )
  );
  LUT3 #(
    .INIT ( 8'h56 ))
  \Mcompar_TIMEOUT_cmp_gt0002_lut<11>  (
    .I0(\t0/count [12]),
    .I1(PREPULSE_FSM_FFd1_350),
    .I2(PREPULSE_FSM_FFd2_353),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[11] )
  );
  LUT4 #(
    .INIT ( 16'hE4EE ))
  \outtimer_mux0001<10>131  (
    .I0(\outtimer_mux0001<10>117_551 ),
    .I1(N60),
    .I2(N211),
    .I3(repeat_code_or0000137_576),
    .O(N3)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<20>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[20]),
    .I2(old_outtimer_2_add0000[20]),
    .I3(N3),
    .O(Mcount_outtimer_lut[20])
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<22>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[22]),
    .I2(old_outtimer_2_add0000[22]),
    .I3(N3),
    .O(Mcount_outtimer_lut[22])
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<21>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[21]),
    .I2(old_outtimer_2_add0000[21]),
    .I3(N2),
    .O(Mcount_outtimer_lut[21])
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \Mcount_outtimer_lut<5>  (
    .I0(repeat_code_or0000137_576),
    .I1(N61),
    .I2(N64),
    .I3(N63),
    .O(Mcount_outtimer_lut[5])
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<0>  (
    .I0(N117),
    .I1(repeat_code_and0000),
    .I2(repeat_code_or0000137_576),
    .I3(N68),
    .O(Mcount_outtimer_lut[0])
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  outtimer_cmp_eq00021_SW0 (
    .I0(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .I1(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I2(outtimer_or0007),
    .O(N60)
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  outtimer_cmp_eq00021_SW1_SW0 (
    .I0(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .I1(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I2(old_outtimer_2_add0000[23]),
    .I3(N217),
    .O(N71)
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<1>  (
    .I0(N120),
    .I1(repeat_code_and0000),
    .I2(repeat_code_or0000137_576),
    .I3(N73),
    .O(Mcount_outtimer_lut[1])
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<2>  (
    .I0(N126),
    .I1(repeat_code_and0000),
    .I2(repeat_code_or0000137_576),
    .I3(N76),
    .O(Mcount_outtimer_lut[2])
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \Mcount_outtimer_lut<23>  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[23]),
    .I2(old_outtimer_2_add0000[23]),
    .I3(N2),
    .O(Mcount_outtimer_lut[23])
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<3>  (
    .I0(N129),
    .I1(repeat_code_and0000),
    .I2(repeat_code_or0000137_576),
    .I3(N79),
    .O(Mcount_outtimer_lut[3])
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<4>  (
    .I0(N83),
    .I1(repeat_code_and0000),
    .I2(repeat_code_or0000137_576),
    .I3(N82),
    .O(Mcount_outtimer_lut[4])
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \Mcount_outtimer_lut<6>  (
    .I0(repeat_code_or0000137_576),
    .I1(N61),
    .I2(N86),
    .I3(N85),
    .O(Mcount_outtimer_lut[6])
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<7>  (
    .I0(N89),
    .I1(repeat_code_and0000),
    .I2(N14),
    .I3(N88),
    .O(Mcount_outtimer_lut[7])
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<8>  (
    .I0(N92),
    .I1(repeat_code_and0000),
    .I2(N14),
    .I3(N91),
    .O(Mcount_outtimer_lut[8])
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \outtimer_mux0001<10>117  (
    .I0(N212),
    .I1(Mcompar_TIMEOUT_cmp_gt0003_cy[7]),
    .I2(Mcompar_TIMEOUT_cmp_lt0002_cy[7]),
    .I3(TIMEOUT_cmp_eq0001),
    .O(\outtimer_mux0001<10>117_551 )
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<9>  (
    .I0(N97),
    .I1(repeat_code_and0000),
    .I2(N14),
    .I3(N96),
    .O(Mcount_outtimer_lut[9])
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \Mcount_outtimer_lut<10>  (
    .I0(N14),
    .I1(N61),
    .I2(N100),
    .I3(N99),
    .O(Mcount_outtimer_lut[10])
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  outtimer_or0000211 (
    .I0(TIMEOUT_xor0000),
    .I1(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .I2(dataready_and0000),
    .I3(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .O(rxbuffer_31_not0001)
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \Mcount_outtimer_lut<11>  (
    .I0(N14),
    .I1(N61),
    .I2(N103),
    .I3(N102),
    .O(Mcount_outtimer_lut[11])
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  \Mcount_outtimer_lut<12>  (
    .I0(N106),
    .I1(repeat_code_and0000),
    .I2(N14),
    .I3(N105),
    .O(Mcount_outtimer_lut[12])
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \Mcount_outtimer_lut<13>  (
    .I0(N14),
    .I1(N61),
    .I2(N109),
    .I3(N108),
    .O(Mcount_outtimer_lut[13])
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \Mcount_outtimer_lut<14>  (
    .I0(N14),
    .I1(N61),
    .I2(N114),
    .I3(N113),
    .O(Mcount_outtimer_lut[14])
  );
  LUT4 #(
    .INIT ( 16'hAAB8 ))
  \outtimer_mux0001<0>1_SW0  (
    .I0(N117),
    .I1(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I2(N116),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N68)
  );
  LUT4 #(
    .INIT ( 16'hCCD8 ))
  \outtimer_mux0001<0>1_SW3  (
    .I0(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I1(N120),
    .I2(N119),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N73)
  );
  LUT4 #(
    .INIT ( 16'h02DF ))
  \Mcount_outtimer_lut<15>  (
    .I0(N14),
    .I1(N61),
    .I2(N123),
    .I3(N122),
    .O(Mcount_outtimer_lut[15])
  );
  LUT4 #(
    .INIT ( 16'hCCD8 ))
  \outtimer_mux0001<0>1_SW5  (
    .I0(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I1(N126),
    .I2(N125),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N76)
  );
  LUT4 #(
    .INIT ( 16'hCCD8 ))
  \outtimer_mux0001<0>1_SW7  (
    .I0(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I1(N129),
    .I2(N128),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N79)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \necpoj_mux0000<1>11  (
    .I0(necpoj[5]),
    .I1(necpoj[4]),
    .I2(necpoj[3]),
    .I3(N205),
    .O(N02)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \TIMEOUT_FSM_FFd1-In1110_SW3  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[1]),
    .I3(old_outtimer_2_add0000[1]),
    .O(N120)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \TIMEOUT_FSM_FFd1-In1110_SW5  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[2]),
    .I3(old_outtimer_2_add0000[2]),
    .O(N126)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \TIMEOUT_FSM_FFd1-In1110_SW7  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[3]),
    .I3(old_outtimer_2_add0000[3]),
    .O(N129)
  );
  MUXF5   \outtimer_mux0001<10>131_SW0  (
    .I0(N131),
    .I1(N132),
    .S(N60),
    .O(N63)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW0_F  (
    .I0(outtimer[5]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[5]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N131)
  );
  MUXF5   \outtimer_mux0001<10>131_SW1  (
    .I0(N133),
    .I1(N134),
    .S(N60),
    .O(N64)
  );
  LUT4 #(
    .INIT ( 16'hAF27 ))
  \outtimer_mux0001<10>131_SW1_G  (
    .I0(TIMEOUT_xor0000),
    .I1(old_outtimer_2_add0000[5]),
    .I2(outtimer[5]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N134)
  );
  MUXF5   \outtimer_mux0001<0>1_SW9  (
    .I0(N135),
    .I1(N136),
    .S(\outtimer_mux0001<10>1171 ),
    .O(N82)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \outtimer_mux0001<0>1_SW9_F  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[4]),
    .I2(old_outtimer_2_add0000[4]),
    .I3(N311),
    .O(N135)
  );
  MUXF5   \outtimer_mux0001<10>131_SW2  (
    .I0(N137),
    .I1(N138),
    .S(\outtimer_mux0001<10>1171 ),
    .O(N85)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW2_F  (
    .I0(outtimer[6]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[6]),
    .I3(N60),
    .O(N137)
  );
  MUXF5   \outtimer_mux0001<10>131_SW3  (
    .I0(N139),
    .I1(N140),
    .S(\outtimer_mux0001<10>1171 ),
    .O(N86)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW3_F  (
    .I0(outtimer[6]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[6]),
    .I3(N60),
    .O(N139)
  );
  MUXF5   \outtimer_mux0001<0>1_SW11  (
    .I0(N141),
    .I1(N142),
    .S(\outtimer_mux0001<10>1171 ),
    .O(N88)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \outtimer_mux0001<0>1_SW11_F  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[7]),
    .I2(old_outtimer_2_add0000[7]),
    .I3(N311),
    .O(N141)
  );
  MUXF5   \outtimer_mux0001<0>1_SW13  (
    .I0(N143),
    .I1(N144),
    .S(\outtimer_mux0001<10>1171 ),
    .O(N91)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \outtimer_mux0001<0>1_SW13_F  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[8]),
    .I2(old_outtimer_2_add0000[8]),
    .I3(N311),
    .O(N143)
  );
  MUXF5   \outtimer_mux0001<0>1_SW15  (
    .I0(N145),
    .I1(N146),
    .S(\outtimer_mux0001<10>1171 ),
    .O(N96)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \outtimer_mux0001<0>1_SW15_F  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[9]),
    .I2(old_outtimer_2_add0000[9]),
    .I3(N311),
    .O(N145)
  );
  MUXF5   \outtimer_mux0001<10>131_SW4  (
    .I0(N147),
    .I1(N148),
    .S(N60),
    .O(N99)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW4_F  (
    .I0(outtimer[10]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[10]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N147)
  );
  MUXF5   \outtimer_mux0001<10>131_SW5  (
    .I0(N149),
    .I1(N150),
    .S(N60),
    .O(N100)
  );
  LUT4 #(
    .INIT ( 16'hAF27 ))
  \outtimer_mux0001<10>131_SW5_G  (
    .I0(TIMEOUT_xor0000),
    .I1(old_outtimer_2_add0000[10]),
    .I2(outtimer[10]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N150)
  );
  MUXF5   \outtimer_mux0001<10>131_SW6  (
    .I0(N151),
    .I1(N152),
    .S(N60),
    .O(N102)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW6_F  (
    .I0(outtimer[11]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[11]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N151)
  );
  MUXF5   \outtimer_mux0001<10>131_SW7  (
    .I0(N153),
    .I1(N154),
    .S(N60),
    .O(N103)
  );
  LUT4 #(
    .INIT ( 16'hAF27 ))
  \outtimer_mux0001<10>131_SW7_G  (
    .I0(TIMEOUT_xor0000),
    .I1(old_outtimer_2_add0000[11]),
    .I2(outtimer[11]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N154)
  );
  MUXF5   \outtimer_mux0001<0>1_SW17  (
    .I0(N155),
    .I1(N156),
    .S(\outtimer_mux0001<10>117_551 ),
    .O(N105)
  );
  LUT4 #(
    .INIT ( 16'hE444 ))
  \outtimer_mux0001<0>1_SW17_F  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[12]),
    .I2(old_outtimer_2_add0000[12]),
    .I3(N311),
    .O(N155)
  );
  MUXF5   \outtimer_mux0001<10>131_SW8  (
    .I0(N157),
    .I1(N158),
    .S(N60),
    .O(N108)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW8_F  (
    .I0(outtimer[13]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[13]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N157)
  );
  MUXF5   \outtimer_mux0001<10>131_SW9  (
    .I0(N159),
    .I1(N160),
    .S(N60),
    .O(N109)
  );
  LUT4 #(
    .INIT ( 16'hAF27 ))
  \outtimer_mux0001<10>131_SW9_G  (
    .I0(TIMEOUT_xor0000),
    .I1(old_outtimer_2_add0000[13]),
    .I2(outtimer[13]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N160)
  );
  MUXF5   \outtimer_mux0001<10>131_SW10  (
    .I0(N161),
    .I1(N162),
    .S(N60),
    .O(N113)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW10_F  (
    .I0(outtimer[14]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[14]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N161)
  );
  MUXF5   \outtimer_mux0001<10>131_SW11  (
    .I0(N163),
    .I1(N164),
    .S(N60),
    .O(N114)
  );
  LUT4 #(
    .INIT ( 16'hAF27 ))
  \outtimer_mux0001<10>131_SW11_G  (
    .I0(TIMEOUT_xor0000),
    .I1(old_outtimer_2_add0000[14]),
    .I2(outtimer[14]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N164)
  );
  MUXF5   \outtimer_mux0001<10>131_SW12  (
    .I0(N165),
    .I1(N166),
    .S(N60),
    .O(N122)
  );
  LUT4 #(
    .INIT ( 16'h1DDD ))
  \outtimer_mux0001<10>131_SW12_F  (
    .I0(outtimer[15]),
    .I1(TIMEOUT_xor0000),
    .I2(old_outtimer_2_add0000[15]),
    .I3(\outtimer_mux0001<10>117_551 ),
    .O(N165)
  );
  MUXF5   \outtimer_mux0001<10>131_SW13  (
    .I0(N167),
    .I1(N168),
    .S(N60),
    .O(N123)
  );
  LUT4 #(
    .INIT ( 16'hAF27 ))
  \outtimer_mux0001<10>131_SW13_G  (
    .I0(TIMEOUT_xor0000),
    .I1(old_outtimer_2_add0000[15]),
    .I2(outtimer[15]),
    .I3(\outtimer_mux0001<10>1171 ),
    .O(N168)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<7>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(N203),
    .O(data_mux0000[7])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<6>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(N202),
    .O(data_mux0000[6])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<5>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(N201),
    .O(data_mux0000[5])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<4>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(N200),
    .O(data_mux0000[4])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<3>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(N199),
    .O(data_mux0000[3])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<2>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(_mux0021),
    .O(data_mux0000[2])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<1>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(N196),
    .O(data_mux0000[1])
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \data_mux0000<0>1  (
    .I0(outtimer_cmp_eq0000),
    .I1(outtimer_cmp_eq0001),
    .I2(_mux0023),
    .O(data_mux0000[0])
  );
  LUT4 #(
    .INIT ( 16'h6000 ))
  dataready_mux00000 (
    .I0(last[0]),
    .I1(last[1]),
    .I2(TIMEOUT_cmp_gt0001),
    .I3(TIMEOUT_cmp_lt0000),
    .O(dataready_mux00000_463)
  );
  LUT4 #(
    .INIT ( 16'h7EFE ))
  TIMEOUT_cmp_gt0000127 (
    .I0(necpoj[2]),
    .I1(necpoj[3]),
    .I2(necpoj[1]),
    .I3(necpoj[0]),
    .O(TIMEOUT_cmp_gt0000127_375)
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \outtimer_mux0001<10>131_SW1_F  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(outtimer[5]),
    .O(N133)
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \outtimer_mux0001<10>131_SW3_G  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(outtimer[6]),
    .O(N140)
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \outtimer_mux0001<10>131_SW5_F  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(outtimer[10]),
    .O(N149)
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \outtimer_mux0001<10>131_SW7_F  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(outtimer[11]),
    .O(N153)
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \outtimer_mux0001<10>131_SW9_F  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(outtimer[13]),
    .O(N159)
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \outtimer_mux0001<10>131_SW11_F  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(outtimer[14]),
    .O(N163)
  );
  LUT3 #(
    .INIT ( 8'h6F ))
  \outtimer_mux0001<10>131_SW13_F  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(outtimer[15]),
    .O(N167)
  );
  LUT3 #(
    .INIT ( 8'h28 ))
  repeat_code_mux000099 (
    .I0(dataready_OBUF_460),
    .I1(last[1]),
    .I2(last[0]),
    .O(repeat_code_mux000099_572)
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  TIMEOUT_xor0000_inv1 (
    .I0(last[1]),
    .I1(last[0]),
    .O(TIMEOUT_xor0000_inv)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \Madd_old_necpoj_4_add0000_cy<3>11  (
    .I0(necpoj[3]),
    .I1(necpoj[2]),
    .I2(necpoj[1]),
    .I3(necpoj[0]),
    .O(Madd_old_necpoj_4_add0000_cy[3])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \Result<3>1  (
    .I0(prescale[3]),
    .I1(prescale[0]),
    .I2(prescale[1]),
    .I3(prescale[2]),
    .O(Result[3])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  address_not00011 (
    .I0(TIMEOUT_cmp_gt0000),
    .I1(N197),
    .I2(rxbuffer_31_not0001),
    .I3(outtimer_cmp_eq0001),
    .O(address_not0001)
  );
  LUT4 #(
    .INIT ( 16'h0B01 ))
  rxbuffer_0_mux00001 (
    .I0(necpoj[0]),
    .I1(\Mcompar_TIMEOUT_cmp_gt0003_cy<6>1 ),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[0]),
    .O(rxbuffer_0_mux0000)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \necpoj_mux0000<7>2  (
    .I0(TIMEOUT_cmp_eq0001),
    .I1(Mcompar_TIMEOUT_cmp_lt0002_cy[7]),
    .I2(Mcompar_TIMEOUT_cmp_gt0003_cy[7]),
    .O(\necpoj_mux0000<7>2_486 )
  );
  LUT4 #(
    .INIT ( 16'hFFBF ))
  outtimer_or0000_SW2 (
    .I0(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I1(TIMEOUT_xor0000),
    .I2(outtimer_or0007),
    .I3(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .O(N171)
  );
  LUT4 #(
    .INIT ( 16'hBF80 ))
  outtimer_or0000 (
    .I0(N171),
    .I1(repeat_code_and0000),
    .I2(N14),
    .I3(N51),
    .O(outtimer_or0000_553)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_01  (
    .I0(\t0/Result<0>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_0 )
  );
  LUT4 #(
    .INIT ( 16'hAAA8 ))
  dataready_mux000045 (
    .I0(dataready_OBUF_460),
    .I1(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I2(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .I3(N173),
    .O(dataready_mux000045_465)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  repeat_code_mux0000108 (
    .I0(N175),
    .I1(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I2(outtimer_and0011),
    .I3(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .O(repeat_code_mux0000108_566)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW9_G  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[4]),
    .I3(old_outtimer_2_add0000[4]),
    .O(N136)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW11_G  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[7]),
    .I3(old_outtimer_2_add0000[7]),
    .O(N142)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW13_G  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[8]),
    .I3(old_outtimer_2_add0000[8]),
    .O(N144)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW15_G  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[9]),
    .I3(old_outtimer_2_add0000[9]),
    .O(N146)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW17_G  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[12]),
    .I3(old_outtimer_2_add0000[12]),
    .O(N156)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \TIMEOUT_FSM_FFd1-In1110_SW1  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[0]),
    .I3(old_outtimer_2_add0000[0]),
    .O(N117)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW10  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[4]),
    .I3(old_outtimer_2_add0000[4]),
    .O(N83)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW12  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[7]),
    .I3(old_outtimer_2_add0000[7]),
    .O(N89)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW14  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[8]),
    .I3(old_outtimer_2_add0000[8]),
    .O(N92)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW16  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[9]),
    .I3(old_outtimer_2_add0000[9]),
    .O(N97)
  );
  LUT4 #(
    .INIT ( 16'hF690 ))
  \outtimer_mux0001<0>1_SW18  (
    .I0(last[1]),
    .I1(last[0]),
    .I2(outtimer[12]),
    .I3(old_outtimer_2_add0000[12]),
    .O(N106)
  );
  LUT4 #(
    .INIT ( 16'h60C0 ))
  \necpoj_mux0000<5>1  (
    .I0(necpoj[1]),
    .I1(necpoj[2]),
    .I2(N32),
    .I3(necpoj[0]),
    .O(necpoj_mux0000[5])
  );
  LUT3 #(
    .INIT ( 8'h9F ))
  \TIMEOUT_FSM_FFd2-In_SW0  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(N195),
    .O(N45)
  );
  LUT3 #(
    .INIT ( 8'hF6 ))
  prescale_or00001 (
    .I0(last[1]),
    .I1(last[0]),
    .I2(clear_cmp_eq0000),
    .O(prescale_or0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_9_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[8]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[9]),
    .O(rxbuffer_9_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_8_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[7]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[8]),
    .O(rxbuffer_8_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_7_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[6]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[7]),
    .O(rxbuffer_7_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_6_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[5]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[6]),
    .O(rxbuffer_6_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_5_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[4]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[5]),
    .O(rxbuffer_5_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_4_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[3]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[4]),
    .O(rxbuffer_4_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_3_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[2]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[3]),
    .O(rxbuffer_3_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_31_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[30]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[31]),
    .O(rxbuffer_31_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_30_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[29]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[30]),
    .O(rxbuffer_30_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_2_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[1]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[2]),
    .O(rxbuffer_2_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_29_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[28]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[29]),
    .O(rxbuffer_29_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_28_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[27]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[28]),
    .O(rxbuffer_28_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_27_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[26]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[27]),
    .O(rxbuffer_27_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_26_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[25]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[26]),
    .O(rxbuffer_26_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_25_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[24]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[25]),
    .O(rxbuffer_25_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_24_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[23]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[24]),
    .O(rxbuffer_24_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_23_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[22]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[23]),
    .O(rxbuffer_23_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_22_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[21]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[22]),
    .O(rxbuffer_22_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_21_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[20]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[21]),
    .O(rxbuffer_21_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_20_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[19]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[20]),
    .O(rxbuffer_20_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_1_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[0]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[1]),
    .O(rxbuffer_1_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_19_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[18]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[19]),
    .O(rxbuffer_19_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_18_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[17]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[18]),
    .O(rxbuffer_18_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_17_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[16]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[17]),
    .O(rxbuffer_17_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_16_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[15]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[16]),
    .O(rxbuffer_16_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_15_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[14]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[15]),
    .O(rxbuffer_15_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_14_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[13]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[14]),
    .O(rxbuffer_14_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_13_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[12]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[13]),
    .O(rxbuffer_13_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_12_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[11]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[12]),
    .O(rxbuffer_12_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_11_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[10]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[11]),
    .O(rxbuffer_11_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0E04 ))
  rxbuffer_10_mux00001 (
    .I0(necpoj[0]),
    .I1(rxbuffer[9]),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(rxbuffer[10]),
    .O(rxbuffer_10_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \PREPULSE_FSM_FFd1-In13  (
    .I0(TIMEOUT_xor0000),
    .I1(N215),
    .I2(Mcompar_TIMEOUT_cmp_gt0003_cy[7]),
    .I3(Mcompar_TIMEOUT_cmp_lt0002_cy[7]),
    .O(\PREPULSE_FSM_FFd1-In13_352 )
  );
  LUT4 #(
    .INIT ( 16'h14D7 ))
  \outtimer_mux0001<10>131_SW0_G  (
    .I0(old_outtimer_2_add0000[5]),
    .I1(last[0]),
    .I2(last[1]),
    .I3(outtimer[5]),
    .O(N132)
  );
  LUT4 #(
    .INIT ( 16'h14D7 ))
  \outtimer_mux0001<10>131_SW2_G  (
    .I0(old_outtimer_2_add0000[6]),
    .I1(last[0]),
    .I2(last[1]),
    .I3(outtimer[6]),
    .O(N138)
  );
  LUT4 #(
    .INIT ( 16'h14D7 ))
  \outtimer_mux0001<10>131_SW4_G  (
    .I0(old_outtimer_2_add0000[10]),
    .I1(last[0]),
    .I2(last[1]),
    .I3(outtimer[10]),
    .O(N148)
  );
  LUT4 #(
    .INIT ( 16'h14D7 ))
  \outtimer_mux0001<10>131_SW6_G  (
    .I0(old_outtimer_2_add0000[11]),
    .I1(last[0]),
    .I2(last[1]),
    .I3(outtimer[11]),
    .O(N152)
  );
  LUT4 #(
    .INIT ( 16'h14D7 ))
  \outtimer_mux0001<10>131_SW8_G  (
    .I0(old_outtimer_2_add0000[13]),
    .I1(last[0]),
    .I2(last[1]),
    .I3(outtimer[13]),
    .O(N158)
  );
  LUT4 #(
    .INIT ( 16'h14D7 ))
  \outtimer_mux0001<10>131_SW10_G  (
    .I0(old_outtimer_2_add0000[14]),
    .I1(last[0]),
    .I2(last[1]),
    .I3(outtimer[14]),
    .O(N162)
  );
  LUT4 #(
    .INIT ( 16'h14D7 ))
  \outtimer_mux0001<10>131_SW12_G  (
    .I0(old_outtimer_2_add0000[15]),
    .I1(last[0]),
    .I2(last[1]),
    .I3(outtimer[15]),
    .O(N166)
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_71  (
    .I0(\t0/Result<7>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_7 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_61  (
    .I0(\t0/Result<6>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_6 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_51  (
    .I0(\t0/Result<5>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_5 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_41  (
    .I0(\t0/Result<4>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_4 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_31  (
    .I0(\t0/Result<3>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_3 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_21  (
    .I0(\t0/Result<2>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_2 )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \t0/Mcount_prescale_eqn_11  (
    .I0(\t0/Result<1>1 ),
    .I1(\t0/Mcount_prescale_eqn_014_740 ),
    .I2(\t0/Mcount_prescale_eqn_0116_739 ),
    .O(\t0/Mcount_prescale_eqn_1 )
  );
  LUT4 #(
    .INIT ( 16'h9F06 ))
  \PREPULSE_FSM_FFd2-In  (
    .I0(last[0]),
    .I1(last[1]),
    .I2(N177),
    .I3(PREPULSE_FSM_FFd2_353),
    .O(\PREPULSE_FSM_FFd2-In_354 )
  );
  LUT4 #(
    .INIT ( 16'h009F ))
  \TIMEOUT_FSM_FFd1-In127  (
    .I0(necpoj[1]),
    .I1(necpoj[0]),
    .I2(N29),
    .I3(PREPULSE_FSM_N0),
    .O(\TIMEOUT_FSM_FFd1-In127_368 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  dataready_mux000062_SW0 (
    .I0(dataready_mux000014_464),
    .I1(outtimer_cmp_eq0000),
    .I2(outtimer_cmp_eq0001),
    .O(N183)
  );
  LUT4 #(
    .INIT ( 16'hFF70 ))
  dataready_mux000062 (
    .I0(repeat_code_and0000),
    .I1(N14),
    .I2(dataready_mux000045_465),
    .I3(N183),
    .O(dataready_mux0000)
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  outtimer_or0000211_1 (
    .I0(TIMEOUT_xor0000),
    .I1(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .I2(dataready_and0000),
    .I3(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .O(outtimer_or0000211_554)
  );
  LUT4 #(
    .INIT ( 16'hA8EC ))
  TIMEOUT_cmp_gt0000142_1 (
    .I0(necpoj[6]),
    .I1(TIMEOUT_cmp_gt0000127_375),
    .I2(N214),
    .I3(N02),
    .O(TIMEOUT_cmp_gt0000142_376)
  );
  FDE #(
    .INIT ( 1'b0 ))
  necpoj_0_1 (
    .C(clk_BUFGP_433),
    .CE(TIMEOUT_xor0000),
    .D(necpoj_mux0000[7]),
    .Q(necpoj_0_1_469)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  repeat_code_or0000137_1 (
    .I0(repeat_code_or000010_573),
    .I1(repeat_code_or000018_577),
    .I2(repeat_code_or0000124_574),
    .I3(N209),
    .O(repeat_code_or0000137_576)
  );
  LUT4 #(
    .INIT ( 16'hFEFF ))
  \outtimer_mux0001<10>117_1  (
    .I0(N94),
    .I1(Mcompar_TIMEOUT_cmp_gt0003_cy[7]),
    .I2(Mcompar_TIMEOUT_cmp_lt0002_cy[7]),
    .I3(N213),
    .O(\outtimer_mux0001<10>1171 )
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_433)
  );
  INV   \Madd_old_outtimer_2_add0000_lut<0>_INV_0  (
    .I(outtimer[0]),
    .O(Madd_old_outtimer_2_add0000_lut[0])
  );
  INV   \Mcompar_TIMEOUT_cmp_gt0003_lut<2>_INV_0  (
    .I(\t0/count [4]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[2])
  );
  INV   \Mcompar_TIMEOUT_cmp_gt0003_lut<4>_INV_0  (
    .I(\t0/count [7]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[4])
  );
  INV   \Mcompar_TIMEOUT_cmp_gt0003_lut<7>_INV_0  (
    .I(\t0/count [15]),
    .O(Mcompar_TIMEOUT_cmp_gt0003_lut[7])
  );
  INV   \Mcompar_TIMEOUT_cmp_gt0003_lut<0>1_INV_0  (
    .I(\t0/count [0]),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_lut<0>1 )
  );
  INV   \Mcompar_TIMEOUT_cmp_gt0003_lut<6>1_INV_0  (
    .I(\t0/count [15]),
    .O(\Mcompar_TIMEOUT_cmp_gt0003_lut<6>1 )
  );
  INV   \Mcompar_TIMEOUT_cmp_lt0002_lut<3>_INV_0  (
    .I(\t0/count [8]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_lut[3] )
  );
  INV   \Mcompar_TIMEOUT_cmp_lt0002_lut<5>_INV_0  (
    .I(\t0/count [10]),
    .O(\Mcompar_TIMEOUT_cmp_lt0002_lut[5] )
  );
  INV   \Mcompar_TIMEOUT_cmp_gt0002_lut<3>_INV_0  (
    .I(\t0/count [4]),
    .O(\Mcompar_TIMEOUT_cmp_gt0002_lut[3] )
  );
  INV   \t0/Mcount_prescale_lut<0>_INV_0  (
    .I(\t0/prescale [0]),
    .O(\t0/Mcount_prescale_lut [0])
  );
  INV   \t0/Mcount_count_lut<0>_INV_0  (
    .I(\t0/count [0]),
    .O(\t0/Mcount_count_lut [0])
  );
  INV   \t0/Mcompar_count_cmp_ge0000_lut<8>_INV_0  (
    .I(\t0/count [32]),
    .O(\t0/Mcompar_count_cmp_ge0000_lut [8])
  );
  INV   \Mcount_prescale_xor<0>11_INV_0  (
    .I(prescale[0]),
    .O(Result[0])
  );
  MUXF5   \PREPULSE_FSM_FFd1-In41  (
    .I0(N187),
    .I1(N188),
    .S(\PREPULSE_FSM_FFd1-In13_352 ),
    .O(\PREPULSE_FSM_FFd1-In )
  );
  LUT4 #(
    .INIT ( 16'h02AA ))
  \PREPULSE_FSM_FFd1-In41_F  (
    .I0(PREPULSE_FSM_FFd1_350),
    .I1(N311),
    .I2(PREPULSE_FSM_N0),
    .I3(TIMEOUT_xor0000),
    .O(N187)
  );
  LUT4 #(
    .INIT ( 16'h32BA ))
  \PREPULSE_FSM_FFd1-In41_G  (
    .I0(PREPULSE_FSM_FFd1_350),
    .I1(N311),
    .I2(PREPULSE_FSM_N0),
    .I3(TIMEOUT_xor0000),
    .O(N188)
  );
  MUXF5   outtimer_cmp_eq000185_SW0 (
    .I0(N189),
    .I1(N190),
    .S(necpoj[0]),
    .O(N181)
  );
  LUT4 #(
    .INIT ( 16'h7F77 ))
  outtimer_cmp_eq000185_SW0_F (
    .I0(outtimer_cmp_eq000141_548),
    .I1(outtimer_cmp_eq000154_549),
    .I2(\Mcompar_TIMEOUT_cmp_gt0003_cy<6>1 ),
    .I3(rxbuffer[7]),
    .O(N189)
  );
  LUT4 #(
    .INIT ( 16'h8FFF ))
  outtimer_cmp_eq000185_SW0_G (
    .I0(rxbuffer[8]),
    .I1(rxbuffer[0]),
    .I2(outtimer_cmp_eq000141_548),
    .I3(outtimer_cmp_eq000154_549),
    .O(N190)
  );
  MUXF5   outtimer_cmp_eq000185 (
    .I0(N191),
    .I1(N192),
    .S(necpoj[0]),
    .O(outtimer_cmp_eq0001)
  );
  LUT4 #(
    .INIT ( 16'h020A ))
  outtimer_cmp_eq000185_F (
    .I0(outtimer_cmp_eq000120_547),
    .I1(rxbuffer[1]),
    .I2(N181),
    .I3(rxbuffer[9]),
    .O(N191)
  );
  LUT4 #(
    .INIT ( 16'h020A ))
  outtimer_cmp_eq000185_G (
    .I0(outtimer_cmp_eq000120_547),
    .I1(rxbuffer[2]),
    .I2(N181),
    .I3(rxbuffer[10]),
    .O(N192)
  );
  MUXF5   TIMEOUT_not0001_SW0 (
    .I0(N193),
    .I1(N194),
    .S(N39),
    .O(dataready_and0000)
  );
  LUT4 #(
    .INIT ( 16'h3236 ))
  TIMEOUT_not0001_SW0_F (
    .I0(necpoj[5]),
    .I1(necpoj[6]),
    .I2(necpoj[4]),
    .I3(N43),
    .O(N193)
  );
  LUT4 #(
    .INIT ( 16'h01FF ))
  TIMEOUT_not0001_SW0_G (
    .I0(N43),
    .I1(necpoj[5]),
    .I2(necpoj[4]),
    .I3(necpoj[6]),
    .O(N194)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \Result<4>11  (
    .I0(prescale[0]),
    .I1(prescale[1]),
    .I2(prescale[2]),
    .I3(prescale[3]),
    .O(\Result<4>1 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \Result<4>12  (
    .I0(prescale[3]),
    .I1(prescale[0]),
    .I2(prescale[1]),
    .I3(prescale[2]),
    .O(\Result<4>11_365 )
  );
  MUXF5   \Result<4>1_f5  (
    .I0(\Result<4>11_365 ),
    .I1(\Result<4>1 ),
    .S(prescale[4]),
    .O(Result[4])
  );
  LUT4 #(
    .INIT ( 16'h0600 ))
  \necpoj_mux0000<6>191  (
    .I0(necpoj[1]),
    .I1(necpoj[0]),
    .I2(N29),
    .I3(TIMEOUT_cmp_gt0001),
    .O(\necpoj_mux0000<6>191_483 )
  );
  MUXF5   \necpoj_mux0000<6>19_f5  (
    .I0(N0),
    .I1(\necpoj_mux0000<6>191_483 ),
    .S(TIMEOUT_cmp_lt0000),
    .O(\necpoj_mux0000<6>19 )
  );
  LUT4 #(
    .INIT ( 16'h0020 ))
  clear_cmp_eq00001 (
    .I0(prescale[3]),
    .I1(prescale[2]),
    .I2(prescale[0]),
    .I3(prescale[1]),
    .O(clear_cmp_eq00001_431)
  );
  MUXF5   clear_cmp_eq0000_f5 (
    .I0(clear_cmp_eq00001_431),
    .I1(N0),
    .S(prescale[4]),
    .O(clear_cmp_eq0000)
  );
  LUT4_D #(
    .INIT ( 16'h2000 ))
  outtimer_and00101 (
    .I0(IR_IBUF_1),
    .I1(necpoj[1]),
    .I2(N29),
    .I3(necpoj[0]),
    .LO(N195),
    .O(outtimer_and0010)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  _mux00301 (
    .I0(rxbuffer[1]),
    .I1(rxbuffer[0]),
    .I2(necpoj[0]),
    .LO(_mux0030)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  _mux00221 (
    .I0(rxbuffer[9]),
    .I1(rxbuffer[8]),
    .I2(necpoj[0]),
    .LO(N196),
    .O(_mux0022)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  _mux00151 (
    .I0(rxbuffer[16]),
    .I1(rxbuffer[15]),
    .I2(necpoj[0]),
    .LO(_mux0015)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  _mux00131 (
    .I0(rxbuffer[18]),
    .I1(rxbuffer[17]),
    .I2(necpoj[0]),
    .LO(_mux0013)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  _mux00111 (
    .I0(rxbuffer[20]),
    .I1(rxbuffer[19]),
    .I2(necpoj[0]),
    .LO(_mux0011)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  _mux00081 (
    .I0(rxbuffer[23]),
    .I1(rxbuffer[22]),
    .I2(necpoj[0]),
    .LO(_mux0008)
  );
  LUT4_D #(
    .INIT ( 16'h8000 ))
  outtimer_cmp_eq000076 (
    .I0(outtimer_cmp_eq000012_542),
    .I1(outtimer_cmp_eq000025_543),
    .I2(outtimer_cmp_eq000049_544),
    .I3(outtimer_cmp_eq000062_545),
    .LO(N197),
    .O(outtimer_cmp_eq0000)
  );
  LUT3_L #(
    .INIT ( 8'hAC ))
  _mux00271 (
    .I0(rxbuffer[4]),
    .I1(rxbuffer[3]),
    .I2(necpoj_0_1_469),
    .LO(_mux0027)
  );
  LUT3_D #(
    .INIT ( 8'hEC ))
  TIMEOUT_cmp_lt00001_SW0 (
    .I0(necpoj[2]),
    .I1(necpoj[3]),
    .I2(necpoj[1]),
    .LO(N198),
    .O(N43)
  );
  LUT3_L #(
    .INIT ( 8'hCA ))
  _mux00241 (
    .I0(rxbuffer[6]),
    .I1(rxbuffer[7]),
    .I2(necpoj_0_1_469),
    .LO(_mux0024)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  _mux00201 (
    .I0(rxbuffer[11]),
    .I1(rxbuffer[10]),
    .I2(necpoj_0_1_469),
    .LO(N199),
    .O(_mux0020)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  _mux00191 (
    .I0(rxbuffer[12]),
    .I1(rxbuffer[11]),
    .I2(necpoj_0_1_469),
    .LO(N200),
    .O(_mux0019)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  _mux00181 (
    .I0(rxbuffer[13]),
    .I1(rxbuffer[12]),
    .I2(necpoj_0_1_469),
    .LO(N201),
    .O(_mux0018)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  _mux00171 (
    .I0(rxbuffer[14]),
    .I1(rxbuffer[13]),
    .I2(necpoj[0]),
    .LO(N202),
    .O(_mux0017)
  );
  LUT3_D #(
    .INIT ( 8'hAC ))
  _mux00161 (
    .I0(rxbuffer[15]),
    .I1(rxbuffer[14]),
    .I2(necpoj_0_1_469),
    .LO(N203),
    .O(_mux0016)
  );
  LUT4_L #(
    .INIT ( 16'h0002 ))
  \necpoj_mux0000<7>24  (
    .I0(dataready_and0000),
    .I1(TIMEOUT_cmp_eq0001),
    .I2(necpoj[0]),
    .I3(TIMEOUT_cmp_gt0000),
    .LO(\necpoj_mux0000<7>24_487 )
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  \necpoj_mux0000<1>31  (
    .I0(dataready_and0000),
    .I1(outtimer_or0007),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(N311),
    .LO(N204),
    .O(N32)
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  dataready_mux000014 (
    .I0(dataready_mux00000_463),
    .I1(outtimer_or0007),
    .I2(TIMEOUT_cmp_gt0000),
    .I3(N311),
    .LO(dataready_mux000014_464)
  );
  LUT2_L #(
    .INIT ( 4'hD ))
  repeat_code_mux00003 (
    .I0(old_outtimer_2_add0000[8]),
    .I1(old_outtimer_2_add0000[11]),
    .LO(repeat_code_mux00003_569)
  );
  LUT3_L #(
    .INIT ( 8'hFD ))
  repeat_code_mux000020 (
    .I0(old_outtimer_2_add0000[7]),
    .I1(old_outtimer_2_add0000[6]),
    .I2(old_outtimer_2_add0000[14]),
    .LO(repeat_code_mux000020_568)
  );
  LUT3_D #(
    .INIT ( 8'h80 ))
  \Madd_old_necpoj_4_add0000_cy<2>11  (
    .I0(necpoj[2]),
    .I1(necpoj[1]),
    .I2(necpoj_0_1_469),
    .LO(N205),
    .O(Madd_old_necpoj_4_add0000_cy[2])
  );
  LUT4_D #(
    .INIT ( 16'hA8EC ))
  TIMEOUT_cmp_gt0000142 (
    .I0(necpoj[6]),
    .I1(TIMEOUT_cmp_gt0000127_375),
    .I2(TIMEOUT_cmp_gt000012_374),
    .I3(N02),
    .LO(N206),
    .O(TIMEOUT_cmp_gt0000)
  );
  LUT2_L #(
    .INIT ( 4'hE ))
  TIMEOUT_cmp_eq00001_SW0 (
    .I0(necpoj[2]),
    .I1(necpoj[3]),
    .LO(N54)
  );
  LUT4_D #(
    .INIT ( 16'h0002 ))
  old_dataready_3_cmp_eq0000125 (
    .I0(old_outtimer_2_add0000[5]),
    .I1(old_outtimer_2_add0000[4]),
    .I2(old_outtimer_2_add0000[12]),
    .I3(old_outtimer_2_add0000[19]),
    .LO(N207),
    .O(old_dataready_3_cmp_eq0000125_489)
  );
  LUT2_L #(
    .INIT ( 4'h8 ))
  outtimer_cmp_eq00021 (
    .I0(repeat_code_and0000),
    .I1(N14),
    .LO(outtimer_cmp_eq0002)
  );
  LUT4_D #(
    .INIT ( 16'h2000 ))
  repeat_code_or0000124 (
    .I0(old_outtimer_2_add0000[14]),
    .I1(old_outtimer_2_add0000[7]),
    .I2(old_outtimer_2_add0000[6]),
    .I3(old_outtimer_2_add0000[22]),
    .LO(N208),
    .O(repeat_code_or0000124_574)
  );
  LUT2_D #(
    .INIT ( 4'h2 ))
  repeat_code_or0000127 (
    .I0(old_outtimer_2_add0000[20]),
    .I1(old_outtimer_2_add0000[21]),
    .LO(N209),
    .O(repeat_code_or0000127_575)
  );
  LUT2_D #(
    .INIT ( 4'hE ))
  \TIMEOUT_FSM_FFd1-In1110  (
    .I0(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .I1(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .LO(N210),
    .O(N311)
  );
  LUT4_D #(
    .INIT ( 16'hFF7F ))
  outtimer_cmp_eq00021_SW1 (
    .I0(old_dataready_3_cmp_eq0000125_489),
    .I1(old_dataready_3_cmp_eq0000110_488),
    .I2(old_dataready_3_cmp_eq0000150_490),
    .I3(N71),
    .LO(N211),
    .O(N61)
  );
  LUT4_L #(
    .INIT ( 16'h2000 ))
  outtimer_or0000_SW0 (
    .I0(outtimer_cmp_eq0001),
    .I1(outtimer_or0007),
    .I2(outtimer_cmp_eq0000),
    .I3(data_not0001),
    .LO(N51)
  );
  LUT2_D #(
    .INIT ( 4'hD ))
  outtimer_and00121_SW0 (
    .I0(dataready_OBUF_460),
    .I1(IR_IBUF_1),
    .LO(N212),
    .O(N94)
  );
  LUT3_D #(
    .INIT ( 8'h20 ))
  TIMEOUT_cmp_eq00011 (
    .I0(necpoj[1]),
    .I1(necpoj[0]),
    .I2(N29),
    .LO(N213),
    .O(TIMEOUT_cmp_eq0001)
  );
  LUT4_L #(
    .INIT ( 16'hE444 ))
  \TIMEOUT_FSM_FFd1-In1110_SW0  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[0]),
    .I2(old_outtimer_2_add0000[0]),
    .I3(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .LO(N116)
  );
  LUT4_L #(
    .INIT ( 16'hE444 ))
  \TIMEOUT_FSM_FFd1-In1110_SW2  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[1]),
    .I2(old_outtimer_2_add0000[1]),
    .I3(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .LO(N119)
  );
  LUT4_L #(
    .INIT ( 16'hE444 ))
  \TIMEOUT_FSM_FFd1-In1110_SW4  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[2]),
    .I2(old_outtimer_2_add0000[2]),
    .I3(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .LO(N125)
  );
  LUT4_L #(
    .INIT ( 16'hE444 ))
  \TIMEOUT_FSM_FFd1-In1110_SW6  (
    .I0(TIMEOUT_xor0000),
    .I1(outtimer[3]),
    .I2(old_outtimer_2_add0000[3]),
    .I3(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .LO(N128)
  );
  LUT4_D #(
    .INIT ( 16'hFEEE ))
  TIMEOUT_cmp_gt000012 (
    .I0(necpoj[5]),
    .I1(necpoj[4]),
    .I2(necpoj[3]),
    .I3(Madd_old_necpoj_4_add0000_cy[2]),
    .LO(N214),
    .O(TIMEOUT_cmp_gt000012_374)
  );
  LUT4_D #(
    .INIT ( 16'h0020 ))
  \outtimer_mux0001<0>121  (
    .I0(necpoj[1]),
    .I1(necpoj[0]),
    .I2(N29),
    .I3(IR_IBUF_1),
    .LO(N215),
    .O(outtimer_and0011)
  );
  LUT4_D #(
    .INIT ( 16'h5755 ))
  \TIMEOUT_FSM_FFd1-In148  (
    .I0(TIMEOUT_xor0000),
    .I1(Mcompar_TIMEOUT_cmp_lt0001_cy[12]),
    .I2(Mcompar_TIMEOUT_cmp_gt0002_cy[12]),
    .I3(\TIMEOUT_FSM_FFd1-In127_368 ),
    .LO(N216),
    .O(TIMEOUT_FSM_N0)
  );
  LUT4_L #(
    .INIT ( 16'hFF7F ))
  dataready_mux000045_SW0 (
    .I0(TIMEOUT_cmp_gt0000),
    .I1(TIMEOUT_xor0000),
    .I2(dataready_and0000),
    .I3(outtimer_or0007),
    .LO(N173)
  );
  LUT4_L #(
    .INIT ( 16'hFFC8 ))
  \necpoj_mux0000<6>5  (
    .I0(Mcompar_TIMEOUT_cmp_lt0002_cy[7]),
    .I1(outtimer_and0011),
    .I2(Mcompar_TIMEOUT_cmp_gt0003_cy[7]),
    .I3(outtimer_and0010),
    .LO(\necpoj_mux0000<6>5_484 )
  );
  LUT4_L #(
    .INIT ( 16'h57FF ))
  \TIMEOUT_FSM_FFd1-In_SW0  (
    .I0(TIMEOUT_xor0000),
    .I1(Mcompar_TIMEOUT_cmp_lt0002_cy[7]),
    .I2(Mcompar_TIMEOUT_cmp_gt0003_cy[7]),
    .I3(outtimer_and0011),
    .LO(N47)
  );
  LUT4_L #(
    .INIT ( 16'hFF27 ))
  \PREPULSE_FSM_FFd2-In_SW1  (
    .I0(PREPULSE_FSM_N0),
    .I1(outtimer_and0010),
    .I2(PREPULSE_FSM_FFd2_353),
    .I3(N311),
    .LO(N177)
  );
  LUT4_L #(
    .INIT ( 16'h0020 ))
  repeat_code_mux0000108_SW0 (
    .I0(repeat_code_mux000099_572),
    .I1(Mcompar_TIMEOUT_cmp_lt0002_cy[7]),
    .I2(outtimer_or0007),
    .I3(Mcompar_TIMEOUT_cmp_gt0003_cy[7]),
    .LO(N175)
  );
  LUT3_D #(
    .INIT ( 8'h60 ))
  outtimer_or00071 (
    .I0(necpoj[1]),
    .I1(necpoj[0]),
    .I2(N29),
    .LO(N217),
    .O(outtimer_or0007)
  );
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

