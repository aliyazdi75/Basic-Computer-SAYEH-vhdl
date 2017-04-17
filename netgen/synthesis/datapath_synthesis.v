////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: datapath_synthesis.v
// /___/   /\     Timestamp: Mon Apr 17 23:41:26 2017
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim datapath.ngc datapath_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: datapath.ngc
// Output file	: D:\Ali Yazdi\Documents\GitHub\Architecture_Project\netgen\synthesis\datapath_synthesis.v
// # of Modules	: 1
// Design Name	: datapath
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
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

module datapath (
  shadow, reset_pc, pc_plus1, pc_plusi, r0_plusi, r0_plus0, b15to0, aandb, aorb, axorb, notb, aaddb, asubb, amulb, acmpb, shrb, shlb, 
alu_out_on_databus, cset, creset, zset, zreset, sr_load, ir_load, pc_load, rfl_write, rfh_write, wpadd, wpreset, adrs_on_daabus, rd_on_adrs, 
rs_on_adrs, clk, cout, zout, adrs_to_mem, databus
);
  input shadow;
  input reset_pc;
  input pc_plus1;
  input pc_plusi;
  input r0_plusi;
  input r0_plus0;
  input b15to0;
  input aandb;
  input aorb;
  input axorb;
  input notb;
  input aaddb;
  input asubb;
  input amulb;
  input acmpb;
  input shrb;
  input shlb;
  input alu_out_on_databus;
  input cset;
  input creset;
  input zset;
  input zreset;
  input sr_load;
  input ir_load;
  input pc_load;
  input rfl_write;
  input rfh_write;
  input wpadd;
  input wpreset;
  input adrs_on_daabus;
  input rd_on_adrs;
  input rs_on_adrs;
  input clk;
  output cout;
  output zout;
  output [15 : 0] adrs_to_mem;
  inout [15 : 0] databus;
  wire shadow_IBUF_0;
  wire reset_pc_IBUF_1;
  wire pc_plus1_IBUF_2;
  wire pc_plusi_IBUF_3;
  wire r0_plusi_IBUF_4;
  wire r0_plus0_IBUF_5;
  wire b15to0_IBUF_6;
  wire aandb_IBUF_7;
  wire aorb_IBUF_8;
  wire axorb_IBUF_9;
  wire aaddb_IBUF_10;
  wire asubb_IBUF_11;
  wire acmpb_BUFGP_12;
  wire shrb_IBUF_13;
  wire shlb_IBUF_14;
  wire alu_out_on_databus_IBUF_15;
  wire cset_IBUF_16;
  wire creset_IBUF_17;
  wire sr_load_IBUF_18;
  wire ir_load_IBUF_19;
  wire pc_load_IBUF_20;
  wire rfl_write_IBUF_21;
  wire rfh_write_IBUF_22;
  wire wpadd_IBUF_23;
  wire wpreset_IBUF_24;
  wire adrs_on_daabus_IBUF_25;
  wire rd_on_adrs_IBUF_26;
  wire rs_on_adrs_IBUF_27;
  wire clk_BUFGP_28;
  wire \maddress_logic/adrs_out_15_29 ;
  wire \maddress_logic/adrs_out_14_30 ;
  wire \maddress_logic/adrs_out_13_31 ;
  wire \maddress_logic/adrs_out_12_32 ;
  wire \maddress_logic/adrs_out_11_33 ;
  wire \maddress_logic/adrs_out_10_34 ;
  wire \maddress_logic/adrs_out_9_35 ;
  wire \maddress_logic/adrs_out_8_36 ;
  wire \maddress_logic/adrs_out_7_37 ;
  wire \maddress_logic/adrs_out_6_38 ;
  wire \maddress_logic/adrs_out_5_39 ;
  wire \maddress_logic/adrs_out_4_40 ;
  wire \maddress_logic/adrs_out_3_41 ;
  wire \maddress_logic/adrs_out_2_42 ;
  wire \maddress_logic/adrs_out_1_43 ;
  wire \maddress_logic/adrs_out_0_44 ;
  wire \malu/alu_out_15_45 ;
  wire \malu/alu_out_14_46 ;
  wire \malu/alu_out_13_47 ;
  wire \malu/alu_out_12_48 ;
  wire \malu/alu_out_11_49 ;
  wire \malu/alu_out_10_50 ;
  wire \malu/alu_out_9_51 ;
  wire \malu/alu_out_8_52 ;
  wire \malu/alu_out_7_53 ;
  wire \malu/alu_out_6_54 ;
  wire \malu/alu_out_5_55 ;
  wire \malu/alu_out_4_56 ;
  wire \malu/alu_out_3_57 ;
  wire \malu/alu_out_2_58 ;
  wire \malu/alu_out_1_59 ;
  wire \malu/alu_out_0_60 ;
  wire \malu/cout_61 ;
  wire \malu/zout_62 ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<15> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<14> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<13> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<12> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<11> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<10> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<9> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<8> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<7> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<6> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<5> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<4> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<3> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<2> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<1> ;
  wire \databus[15]_alu_on_databus[15]_mux_2_OUT<0> ;
  wire \mflags/cin_79 ;
  wire \rside[15]_a[15]_mux_4_OUT<15> ;
  wire \rside[15]_a[15]_mux_4_OUT<14> ;
  wire \rside[15]_a[15]_mux_4_OUT<13> ;
  wire \rside[15]_a[15]_mux_4_OUT<12> ;
  wire \rside[15]_a[15]_mux_4_OUT<11> ;
  wire \rside[15]_a[15]_mux_4_OUT<10> ;
  wire \rside[15]_a[15]_mux_4_OUT<9> ;
  wire \rside[15]_a[15]_mux_4_OUT<8> ;
  wire \rside[15]_a[15]_mux_4_OUT<7> ;
  wire \rside[15]_a[15]_mux_4_OUT<6> ;
  wire \rside[15]_a[15]_mux_4_OUT<5> ;
  wire \rside[15]_a[15]_mux_4_OUT<4> ;
  wire \rside[15]_a[15]_mux_4_OUT<3> ;
  wire \rside[15]_a[15]_mux_4_OUT<2> ;
  wire \rside[15]_a[15]_mux_4_OUT<1> ;
  wire \rside[15]_a[15]_mux_4_OUT<0> ;
  wire cout_OBUF_178;
  wire zout_OBUF_179;
  wire adrs_to_mem_15_184;
  wire adrs_to_mem_14_185;
  wire adrs_to_mem_13_186;
  wire adrs_to_mem_12_187;
  wire adrs_to_mem_11_188;
  wire adrs_to_mem_10_189;
  wire adrs_to_mem_9_190;
  wire adrs_to_mem_8_191;
  wire adrs_to_mem_7_192;
  wire adrs_to_mem_6_193;
  wire adrs_to_mem_5_194;
  wire adrs_to_mem_4_195;
  wire adrs_to_mem_3_196;
  wire adrs_to_mem_2_197;
  wire adrs_to_mem_1_198;
  wire adrs_to_mem_0_199;
  wire databus_15_200;
  wire databus_14_201;
  wire databus_13_202;
  wire databus_12_203;
  wire databus_11_204;
  wire databus_10_205;
  wire databus_9_206;
  wire databus_8_207;
  wire databus_7_208;
  wire databus_6_209;
  wire databus_5_210;
  wire databus_4_211;
  wire databus_3_212;
  wire databus_2_213;
  wire databus_1_214;
  wire databus_0_215;
  wire \ir_out[3]_ir_out[11]_mux_0_OUT<3> ;
  wire \ir_out[3]_ir_out[11]_mux_0_OUT<2> ;
  wire \ir_out[3]_ir_out[11]_mux_0_OUT<1> ;
  wire \ir_out[3]_ir_out[11]_mux_0_OUT<0> ;
  wire N0;
  wire N1;
  wire _n0035_inv;
  wire _n0032_inv;
  wire \mflags/_n0011 ;
  wire \mwp/_n0017_inv ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_259 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_260 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_261 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_262 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_263 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_264 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_265 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<7>_266 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<7>_267 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<6>_268 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<6>_269 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<5>_270 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<5>_271 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<4>_272 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<4>_273 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<3>_274 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<3>_275 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<2>_276 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<2>_277 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<1>_278 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<1>_279 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<0>_280 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<0>_281 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_282 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_283 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_284 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_285 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_286 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_287 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_288 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<7>_289 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<7>_290 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<6>_291 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<6>_292 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<5>_293 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<5>_294 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<4>_295 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<4>_296 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<3>_297 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<3>_298 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<2>_299 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<2>_300 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<1>_301 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<1>_302 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<0>_303 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<0>_304 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_305 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_306 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_307 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_308 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_309 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_310 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_311 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_312 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_313 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_314 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_315 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_316 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_317 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_318 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<0>_319 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_lut<0> ;
  wire \maddress_logic/adrs_out[15]_rside[0]_MUX_84_o ;
  wire \maddress_logic/adrs_out[15]_rside[1]_MUX_80_o ;
  wire \maddress_logic/adrs_out[15]_rside[2]_MUX_76_o ;
  wire \maddress_logic/adrs_out[15]_rside[3]_MUX_72_o ;
  wire \maddress_logic/adrs_out[15]_rside[4]_MUX_68_o ;
  wire \maddress_logic/adrs_out[15]_rside[5]_MUX_64_o ;
  wire \maddress_logic/adrs_out[15]_rside[6]_MUX_60_o ;
  wire \maddress_logic/adrs_out[15]_rside[7]_MUX_56_o ;
  wire \maddress_logic/adrs_out[15]_rside[8]_MUX_52_o ;
  wire \maddress_logic/adrs_out[15]_rside[9]_MUX_48_o ;
  wire \maddress_logic/adrs_out[15]_rside[10]_MUX_44_o ;
  wire \maddress_logic/adrs_out[15]_rside[11]_MUX_40_o ;
  wire \maddress_logic/adrs_out[15]_rside[12]_MUX_36_o ;
  wire \maddress_logic/adrs_out[15]_rside[13]_MUX_32_o ;
  wire \maddress_logic/adrs_out[15]_rside[14]_MUX_28_o ;
  wire \maddress_logic/adrs_out[15]_rside[15]_MUX_24_o ;
  wire \maddress_logic/r0_plus0_r0_plusi_OR_3_o ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<0> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<1> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<2> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<3> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<4> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<5> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<6> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<7> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<8> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<9> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<10> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<11> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<12> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<13> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<14> ;
  wire \maddress_logic/rside[15]_GND_5_o_add_5_OUT<15> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<0> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<1> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<2> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<3> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<4> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<5> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<6> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<7> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<8> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<9> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<10> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<11> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<12> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<13> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<14> ;
  wire \maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<15> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<0> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<1> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<2> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<3> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<4> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<5> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<6> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<7> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<8> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<9> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<10> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<11> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<12> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<13> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<14> ;
  wire \maddress_logic/pc_out[15]_one[15]_add_1_OUT<15> ;
  wire \malu/Mmux_alu_out[15]_b[10]_MUX_134_o321 ;
  wire \malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ;
  wire \malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ;
  wire \malu/Mmux_alu_out[15]_b[15]_MUX_94_o11 ;
  wire \malu/sub/p1/p2/s1 ;
  wire \malu/sub/p1/c2 ;
  wire \malu/sub/p1/c3 ;
  wire \malu/sub/p2/c1 ;
  wire \malu/sub/p2/c3 ;
  wire \malu/sub/p3/c1 ;
  wire \malu/sub/p3/c3 ;
  wire \malu/sub/p4/c1 ;
  wire \malu/sub/p4/c2 ;
  wire \malu/adder/p1/c2 ;
  wire \malu/adder/p1/c3 ;
  wire \malu/adder/p2/c1 ;
  wire \malu/adder/p2/c2 ;
  wire \malu/adder/p2/c3 ;
  wire \malu/adder/p3/c1 ;
  wire \malu/adder/p3/c2 ;
  wire \malu/adder/p3/c3 ;
  wire \malu/adder/p4/c1 ;
  wire \malu/adder/p4/c2 ;
  wire \malu/adder/c1 ;
  wire \malu/adder/c2 ;
  wire \malu/adder/c3 ;
  wire \malu/alu_out[15]_b[0]_MUX_214_o ;
  wire \malu/alu_out[15]_b[1]_MUX_206_o ;
  wire \malu/alu_out[15]_b[2]_MUX_198_o ;
  wire \malu/alu_out[15]_b[3]_MUX_190_o ;
  wire \malu/alu_out[15]_b[4]_MUX_182_o ;
  wire \malu/alu_out[15]_b[5]_MUX_174_o ;
  wire \malu/alu_out[15]_b[6]_MUX_166_o ;
  wire \malu/alu_out[15]_b[7]_MUX_158_o ;
  wire \malu/alu_out[15]_b[8]_MUX_150_o ;
  wire \malu/alu_out[15]_b[9]_MUX_142_o ;
  wire \malu/alu_out[15]_b[10]_MUX_134_o ;
  wire \malu/alu_out[15]_b[11]_MUX_126_o ;
  wire \malu/alu_out[15]_b[12]_MUX_118_o ;
  wire \malu/alu_out[15]_b[13]_MUX_110_o ;
  wire \malu/alu_out[15]_b[14]_MUX_102_o ;
  wire \malu/alu_out[15]_b[15]_MUX_94_o ;
  wire \malu/b15to0_shlb_OR_74_o_428 ;
  wire \malu/alu_cmp_eq ;
  wire \malu/alu_cmp_lt ;
  wire \malu/cmp/comprate/cryl[13] ;
  wire \malu/cmp/comprate/cryl[10] ;
  wire \malu/cmp/comprate/cryl[7] ;
  wire \malu/cmp/comprate/cryl[4] ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<0> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<1> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<2> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<3> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<4> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<5> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<6> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<7> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<8> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<9> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<10> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<11> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<12> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<13> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<14> ;
  wire \mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<15> ;
  wire N3;
  wire N5;
  wire N7;
  wire N9;
  wire N11;
  wire N13;
  wire N15;
  wire N17;
  wire N19;
  wire N21;
  wire N23;
  wire N25;
  wire N27;
  wire N29;
  wire N31;
  wire N33;
  wire \malu/Mmux_alu_out[15]_b[9]_MUX_142_o3 ;
  wire \malu/Mmux_alu_out[15]_b[9]_MUX_142_o32 ;
  wire \malu/Mmux_alu_out[15]_b[9]_MUX_142_o33_481 ;
  wire \malu/Mmux_alu_out[15]_b[9]_MUX_142_o34_482 ;
  wire \malu/Mmux_alu_out[15]_b[8]_MUX_150_o3 ;
  wire \malu/Mmux_alu_out[15]_b[8]_MUX_150_o32 ;
  wire \malu/Mmux_alu_out[15]_b[8]_MUX_150_o33_485 ;
  wire \malu/Mmux_alu_out[15]_b[8]_MUX_150_o34_486 ;
  wire \malu/Mmux_alu_out[15]_b[7]_MUX_158_o3 ;
  wire \malu/Mmux_alu_out[15]_b[7]_MUX_158_o32 ;
  wire \malu/Mmux_alu_out[15]_b[7]_MUX_158_o33_489 ;
  wire \malu/Mmux_alu_out[15]_b[7]_MUX_158_o34_490 ;
  wire \malu/Mmux_alu_out[15]_b[6]_MUX_166_o3 ;
  wire \malu/Mmux_alu_out[15]_b[6]_MUX_166_o32 ;
  wire \malu/Mmux_alu_out[15]_b[6]_MUX_166_o33_493 ;
  wire \malu/Mmux_alu_out[15]_b[6]_MUX_166_o34_494 ;
  wire \malu/Mmux_alu_out[15]_b[5]_MUX_174_o3 ;
  wire \malu/Mmux_alu_out[15]_b[5]_MUX_174_o32 ;
  wire \malu/Mmux_alu_out[15]_b[5]_MUX_174_o33_497 ;
  wire \malu/Mmux_alu_out[15]_b[5]_MUX_174_o34_498 ;
  wire \malu/Mmux_alu_out[15]_b[4]_MUX_182_o3 ;
  wire \malu/Mmux_alu_out[15]_b[4]_MUX_182_o32 ;
  wire \malu/Mmux_alu_out[15]_b[4]_MUX_182_o33_501 ;
  wire \malu/Mmux_alu_out[15]_b[4]_MUX_182_o34_502 ;
  wire \malu/Mmux_alu_out[15]_b[3]_MUX_190_o3 ;
  wire \malu/Mmux_alu_out[15]_b[3]_MUX_190_o32 ;
  wire \malu/Mmux_alu_out[15]_b[3]_MUX_190_o33_505 ;
  wire \malu/Mmux_alu_out[15]_b[3]_MUX_190_o34_506 ;
  wire \malu/Mmux_alu_out[15]_b[2]_MUX_198_o3 ;
  wire \malu/Mmux_alu_out[15]_b[2]_MUX_198_o32 ;
  wire \malu/Mmux_alu_out[15]_b[2]_MUX_198_o33_509 ;
  wire \malu/Mmux_alu_out[15]_b[2]_MUX_198_o34_510 ;
  wire \malu/Mmux_alu_out[15]_b[14]_MUX_102_o3 ;
  wire \malu/Mmux_alu_out[15]_b[14]_MUX_102_o32 ;
  wire \malu/Mmux_alu_out[15]_b[14]_MUX_102_o33_513 ;
  wire \malu/Mmux_alu_out[15]_b[14]_MUX_102_o34_514 ;
  wire \malu/Mmux_alu_out[15]_b[13]_MUX_110_o3 ;
  wire \malu/Mmux_alu_out[15]_b[13]_MUX_110_o32 ;
  wire \malu/Mmux_alu_out[15]_b[13]_MUX_110_o33_517 ;
  wire \malu/Mmux_alu_out[15]_b[13]_MUX_110_o34_518 ;
  wire \malu/Mmux_alu_out[15]_b[12]_MUX_118_o3 ;
  wire \malu/Mmux_alu_out[15]_b[12]_MUX_118_o32 ;
  wire \malu/Mmux_alu_out[15]_b[12]_MUX_118_o33_521 ;
  wire \malu/Mmux_alu_out[15]_b[12]_MUX_118_o34_522 ;
  wire \malu/Mmux_alu_out[15]_b[11]_MUX_126_o3 ;
  wire \malu/Mmux_alu_out[15]_b[11]_MUX_126_o32 ;
  wire \malu/Mmux_alu_out[15]_b[11]_MUX_126_o33_525 ;
  wire \malu/Mmux_alu_out[15]_b[11]_MUX_126_o34_526 ;
  wire \malu/Mmux_alu_out[15]_b[10]_MUX_134_o3 ;
  wire \malu/Mmux_alu_out[15]_b[10]_MUX_134_o32 ;
  wire \malu/Mmux_alu_out[15]_b[10]_MUX_134_o33_529 ;
  wire \malu/Mmux_alu_out[15]_b[10]_MUX_134_o34_530 ;
  wire \malu/Mmux_alu_out[15]_b[1]_MUX_206_o3 ;
  wire \malu/Mmux_alu_out[15]_b[1]_MUX_206_o31_532 ;
  wire \malu/Mmux_alu_out[15]_b[1]_MUX_206_o32_533 ;
  wire \malu/Mmux_alu_out[15]_b[1]_MUX_206_o33_534 ;
  wire \malu/Mmux_alu_out[15]_b[1]_MUX_206_o34_535 ;
  wire \malu/Mmux_alu_out[15]_b[15]_MUX_94_o2 ;
  wire \malu/Mmux_alu_out[15]_b[15]_MUX_94_o21_537 ;
  wire \malu/Mmux_alu_out[15]_b[15]_MUX_94_o22_538 ;
  wire \malu/Mmux_alu_out[15]_b[15]_MUX_94_o23_539 ;
  wire \malu/Mmux_alu_out[15]_b[15]_MUX_94_o24_540 ;
  wire N35;
  wire N37;
  wire N39;
  wire \malu/cmp/comprate/comprate[9].mycomprator/lt ;
  wire N41;
  wire N43;
  wire \malu/cmp/comprate/comprate[15].mycomprator/eq ;
  wire \malu/cmp/comprate/comprate[15].mycomprator/eq1_548 ;
  wire \malu/cmp/comprate/comprate[15].mycomprator/eq2_549 ;
  wire \malu/cmp/comprate/comprate[15].mycomprator/eq3_550 ;
  wire \malu/cmp/comprate/comprate[15].mycomprator/eq4_551 ;
  wire \malu/cmp/comprate/comprate[15].mycomprator/eq5_552 ;
  wire \malu/cmp/comprate/comprate[15].mycomprator/eq6_553 ;
  wire \mflags/cin_glue_set_617 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_rt_618 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_rt_619 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_rt_620 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_rt_621 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_rt_622 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_rt_623 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_rt_624 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_rt_625 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_rt_626 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_rt_627 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_rt_628 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_rt_629 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_rt_630 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_rt_631 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_rt_632 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_rt_633 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_rt_634 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_rt_635 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_rt_636 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_rt_637 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_rt_638 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_rt_639 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_rt_640 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_rt_641 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_rt_642 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_rt_643 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_rt_644 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_rt_645 ;
  wire \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<15>_rt_646 ;
  wire \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<15>_rt_647 ;
  wire \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<15>_rt_648 ;
  wire N61;
  wire N63;
  wire N69;
  wire N71;
  wire N73;
  wire N75;
  wire N77;
  wire N79;
  wire N81;
  wire N83;
  wire N85;
  wire N87;
  wire N89;
  wire N91;
  wire N93;
  wire N95;
  wire N97;
  wire N98;
  wire databus_15_1_667;
  wire databus_14_1_668;
  wire databus_13_1_669;
  wire databus_12_1_670;
  wire databus_11_1_671;
  wire databus_10_1_672;
  wire databus_9_1_673;
  wire databus_8_1_674;
  wire databus_7_1_675;
  wire databus_6_1_676;
  wire databus_5_1_677;
  wire databus_4_1_678;
  wire databus_3_1_679;
  wire databus_2_1_680;
  wire databus_1_1_681;
  wire databus_0_1_682;
  wire [11 : 0] \mir/ir_out ;
  wire [15 : 0] \mpc/pc_out ;
  wire [15 : 0] a;
  wire [15 : 0] b;
  wire [5 : 0] \mwp/add ;
  wire [15 : 0] databus_inp;
  wire [3 : 0] ir_reg;
  wire [15 : 0] rside;
  wire [5 : 0] Result;
  wire [5 : 0] \mwp/Maccum_add_lut ;
  wire [4 : 0] \mwp/Maccum_add_cy ;
  wire [0 : 0] \mregister_files/Madd_ladrs_lut ;
  wire [0 : 0] \mregister_files/Madd_radrs_lut ;
  wire [5 : 1] \mregister_files/radrs ;
  wire [5 : 1] \mregister_files/ladrs ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   databus_inp_0 (
    .C(clk_BUFGP_28),
    .D(databus_0_215),
    .Q(databus_inp[0])
  );
  FD   databus_inp_1 (
    .C(clk_BUFGP_28),
    .D(databus_1_214),
    .Q(databus_inp[1])
  );
  FD   databus_inp_2 (
    .C(clk_BUFGP_28),
    .D(databus_2_213),
    .Q(databus_inp[2])
  );
  FD   databus_inp_3 (
    .C(clk_BUFGP_28),
    .D(databus_3_212),
    .Q(databus_inp[3])
  );
  FD   databus_inp_4 (
    .C(clk_BUFGP_28),
    .D(databus_4_211),
    .Q(databus_inp[4])
  );
  FD   databus_inp_5 (
    .C(clk_BUFGP_28),
    .D(databus_5_210),
    .Q(databus_inp[5])
  );
  FD   databus_inp_6 (
    .C(clk_BUFGP_28),
    .D(databus_6_209),
    .Q(databus_inp[6])
  );
  FD   databus_inp_7 (
    .C(clk_BUFGP_28),
    .D(databus_7_208),
    .Q(databus_inp[7])
  );
  FD   databus_inp_8 (
    .C(clk_BUFGP_28),
    .D(databus_8_207),
    .Q(databus_inp[8])
  );
  FD   databus_inp_9 (
    .C(clk_BUFGP_28),
    .D(databus_9_206),
    .Q(databus_inp[9])
  );
  FD   databus_inp_10 (
    .C(clk_BUFGP_28),
    .D(databus_10_205),
    .Q(databus_inp[10])
  );
  FD   databus_inp_11 (
    .C(clk_BUFGP_28),
    .D(databus_11_204),
    .Q(databus_inp[11])
  );
  FD   databus_inp_12 (
    .C(clk_BUFGP_28),
    .D(databus_12_203),
    .Q(databus_inp[12])
  );
  FD   databus_inp_13 (
    .C(clk_BUFGP_28),
    .D(databus_13_202),
    .Q(databus_inp[13])
  );
  FD   databus_inp_14 (
    .C(clk_BUFGP_28),
    .D(databus_14_201),
    .Q(databus_inp[14])
  );
  FD   databus_inp_15 (
    .C(clk_BUFGP_28),
    .D(databus_15_200),
    .Q(databus_inp[15])
  );
  FD   ir_reg_0 (
    .C(clk_BUFGP_28),
    .D(\ir_out[3]_ir_out[11]_mux_0_OUT<0> ),
    .Q(ir_reg[0])
  );
  FD   ir_reg_1 (
    .C(clk_BUFGP_28),
    .D(\ir_out[3]_ir_out[11]_mux_0_OUT<1> ),
    .Q(ir_reg[1])
  );
  FD   ir_reg_2 (
    .C(clk_BUFGP_28),
    .D(\ir_out[3]_ir_out[11]_mux_0_OUT<2> ),
    .Q(ir_reg[2])
  );
  FD   ir_reg_3 (
    .C(clk_BUFGP_28),
    .D(\ir_out[3]_ir_out[11]_mux_0_OUT<3> ),
    .Q(ir_reg[3])
  );
  FD   cout_23 (
    .C(clk_BUFGP_28),
    .D(\malu/cout_61 ),
    .Q(cout_OBUF_178)
  );
  FD   zout_24 (
    .C(clk_BUFGP_28),
    .D(\malu/zout_62 ),
    .Q(zout_OBUF_179)
  );
  FDE   rside_0 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<0> ),
    .Q(rside[0])
  );
  FDE   rside_1 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<1> ),
    .Q(rside[1])
  );
  FDE   rside_2 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<2> ),
    .Q(rside[2])
  );
  FDE   rside_3 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<3> ),
    .Q(rside[3])
  );
  FDE   rside_4 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<4> ),
    .Q(rside[4])
  );
  FDE   rside_5 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<5> ),
    .Q(rside[5])
  );
  FDE   rside_6 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<6> ),
    .Q(rside[6])
  );
  FDE   rside_7 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<7> ),
    .Q(rside[7])
  );
  FDE   rside_8 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<8> ),
    .Q(rside[8])
  );
  FDE   rside_9 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<9> ),
    .Q(rside[9])
  );
  FDE   rside_10 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<10> ),
    .Q(rside[10])
  );
  FDE   rside_11 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<11> ),
    .Q(rside[11])
  );
  FDE   rside_12 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<12> ),
    .Q(rside[12])
  );
  FDE   rside_13 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<13> ),
    .Q(rside[13])
  );
  FDE   rside_14 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<14> ),
    .Q(rside[14])
  );
  FDE   rside_15 (
    .C(clk_BUFGP_28),
    .CE(_n0035_inv),
    .D(\rside[15]_a[15]_mux_4_OUT<15> ),
    .Q(rside[15])
  );
  FDE   databus_0 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<0> ),
    .Q(databus_0_215)
  );
  FDE   databus_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<1> ),
    .Q(databus_1_214)
  );
  FDE   databus_2 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<2> ),
    .Q(databus_2_213)
  );
  FDE   databus_3 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<3> ),
    .Q(databus_3_212)
  );
  FDE   databus_4 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<4> ),
    .Q(databus_4_211)
  );
  FDE   databus_5 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<5> ),
    .Q(databus_5_210)
  );
  FDE   databus_6 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<6> ),
    .Q(databus_6_209)
  );
  FDE   databus_7 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<7> ),
    .Q(databus_7_208)
  );
  FDE   databus_8 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<8> ),
    .Q(databus_8_207)
  );
  FDE   databus_9 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<9> ),
    .Q(databus_9_206)
  );
  FDE   databus_10 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<10> ),
    .Q(databus_10_205)
  );
  FDE   databus_11 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<11> ),
    .Q(databus_11_204)
  );
  FDE   databus_12 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<12> ),
    .Q(databus_12_203)
  );
  FDE   databus_13 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<13> ),
    .Q(databus_13_202)
  );
  FDE   databus_14 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<14> ),
    .Q(databus_14_201)
  );
  FDE   databus_15 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<15> ),
    .Q(databus_15_200)
  );
  FD   adrs_to_mem_0 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_0_44 ),
    .Q(adrs_to_mem_0_199)
  );
  FD   adrs_to_mem_1 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_1_43 ),
    .Q(adrs_to_mem_1_198)
  );
  FD   adrs_to_mem_2 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_2_42 ),
    .Q(adrs_to_mem_2_197)
  );
  FD   adrs_to_mem_3 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_3_41 ),
    .Q(adrs_to_mem_3_196)
  );
  FD   adrs_to_mem_4 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_4_40 ),
    .Q(adrs_to_mem_4_195)
  );
  FD   adrs_to_mem_5 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_5_39 ),
    .Q(adrs_to_mem_5_194)
  );
  FD   adrs_to_mem_6 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_6_38 ),
    .Q(adrs_to_mem_6_193)
  );
  FD   adrs_to_mem_7 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_7_37 ),
    .Q(adrs_to_mem_7_192)
  );
  FD   adrs_to_mem_8 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_8_36 ),
    .Q(adrs_to_mem_8_191)
  );
  FD   adrs_to_mem_9 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_9_35 ),
    .Q(adrs_to_mem_9_190)
  );
  FD   adrs_to_mem_10 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_10_34 ),
    .Q(adrs_to_mem_10_189)
  );
  FD   adrs_to_mem_11 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_11_33 ),
    .Q(adrs_to_mem_11_188)
  );
  FD   adrs_to_mem_12 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_12_32 ),
    .Q(adrs_to_mem_12_187)
  );
  FD   adrs_to_mem_13 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_13_31 ),
    .Q(adrs_to_mem_13_186)
  );
  FD   adrs_to_mem_14 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_14_30 ),
    .Q(adrs_to_mem_14_185)
  );
  FD   adrs_to_mem_15 (
    .C(clk_BUFGP_28),
    .D(\maddress_logic/adrs_out_15_29 ),
    .Q(adrs_to_mem_15_184)
  );
  FDE   \mwp/add_0  (
    .C(clk_BUFGP_28),
    .CE(\mwp/_n0017_inv ),
    .D(Result[0]),
    .Q(\mwp/add [0])
  );
  FDE   \mwp/add_1  (
    .C(clk_BUFGP_28),
    .CE(\mwp/_n0017_inv ),
    .D(Result[1]),
    .Q(\mwp/add [1])
  );
  FDE   \mwp/add_2  (
    .C(clk_BUFGP_28),
    .CE(\mwp/_n0017_inv ),
    .D(Result[2]),
    .Q(\mwp/add [2])
  );
  FDE   \mwp/add_3  (
    .C(clk_BUFGP_28),
    .CE(\mwp/_n0017_inv ),
    .D(Result[3]),
    .Q(\mwp/add [3])
  );
  FDE   \mwp/add_4  (
    .C(clk_BUFGP_28),
    .CE(\mwp/_n0017_inv ),
    .D(Result[4]),
    .Q(\mwp/add [4])
  );
  FDE   \mwp/add_5  (
    .C(clk_BUFGP_28),
    .CE(\mwp/_n0017_inv ),
    .D(Result[5]),
    .Q(\mwp/add [5])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mwp/Maccum_add_lut<0>  (
    .I0(\mwp/add [0]),
    .I1(\mir/ir_out [0]),
    .O(\mwp/Maccum_add_lut [0])
  );
  MUXCY   \mwp/Maccum_add_cy<0>  (
    .CI(N0),
    .DI(\mwp/add [0]),
    .S(\mwp/Maccum_add_lut [0]),
    .O(\mwp/Maccum_add_cy [0])
  );
  XORCY   \mwp/Maccum_add_xor<0>  (
    .CI(N0),
    .LI(\mwp/Maccum_add_lut [0]),
    .O(Result[0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mwp/Maccum_add_lut<1>  (
    .I0(\mwp/add [1]),
    .I1(\mir/ir_out [1]),
    .O(\mwp/Maccum_add_lut [1])
  );
  MUXCY   \mwp/Maccum_add_cy<1>  (
    .CI(\mwp/Maccum_add_cy [0]),
    .DI(\mwp/add [1]),
    .S(\mwp/Maccum_add_lut [1]),
    .O(\mwp/Maccum_add_cy [1])
  );
  XORCY   \mwp/Maccum_add_xor<1>  (
    .CI(\mwp/Maccum_add_cy [0]),
    .LI(\mwp/Maccum_add_lut [1]),
    .O(Result[1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mwp/Maccum_add_lut<2>  (
    .I0(\mwp/add [2]),
    .I1(\mir/ir_out [2]),
    .O(\mwp/Maccum_add_lut [2])
  );
  MUXCY   \mwp/Maccum_add_cy<2>  (
    .CI(\mwp/Maccum_add_cy [1]),
    .DI(\mwp/add [2]),
    .S(\mwp/Maccum_add_lut [2]),
    .O(\mwp/Maccum_add_cy [2])
  );
  XORCY   \mwp/Maccum_add_xor<2>  (
    .CI(\mwp/Maccum_add_cy [1]),
    .LI(\mwp/Maccum_add_lut [2]),
    .O(Result[2])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mwp/Maccum_add_lut<3>  (
    .I0(\mwp/add [3]),
    .I1(\mir/ir_out [3]),
    .O(\mwp/Maccum_add_lut [3])
  );
  MUXCY   \mwp/Maccum_add_cy<3>  (
    .CI(\mwp/Maccum_add_cy [2]),
    .DI(\mwp/add [3]),
    .S(\mwp/Maccum_add_lut [3]),
    .O(\mwp/Maccum_add_cy [3])
  );
  XORCY   \mwp/Maccum_add_xor<3>  (
    .CI(\mwp/Maccum_add_cy [2]),
    .LI(\mwp/Maccum_add_lut [3]),
    .O(Result[3])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mwp/Maccum_add_lut<4>  (
    .I0(\mwp/add [4]),
    .I1(\mir/ir_out [4]),
    .O(\mwp/Maccum_add_lut [4])
  );
  MUXCY   \mwp/Maccum_add_cy<4>  (
    .CI(\mwp/Maccum_add_cy [3]),
    .DI(\mwp/add [4]),
    .S(\mwp/Maccum_add_lut [4]),
    .O(\mwp/Maccum_add_cy [4])
  );
  XORCY   \mwp/Maccum_add_xor<4>  (
    .CI(\mwp/Maccum_add_cy [3]),
    .LI(\mwp/Maccum_add_lut [4]),
    .O(Result[4])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mwp/Maccum_add_lut<5>  (
    .I0(\mwp/add [5]),
    .I1(\mir/ir_out [5]),
    .O(\mwp/Maccum_add_lut [5])
  );
  XORCY   \mwp/Maccum_add_xor<5>  (
    .CI(\mwp/Maccum_add_cy [4]),
    .LI(\mwp/Maccum_add_lut [5]),
    .O(Result[5])
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<15>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_259 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<15>_rt_646 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<15> )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<14>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_260 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_rt_618 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<14> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_260 ),
    .DI(N0),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_rt_618 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_259 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<13>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_261 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_rt_619 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<13> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_261 ),
    .DI(N0),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_rt_619 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_260 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<12>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_262 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_rt_620 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<12> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_262 ),
    .DI(N0),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_rt_620 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_261 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<11>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_263 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_rt_621 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<11> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_263 ),
    .DI(N0),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_rt_621 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_262 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<10>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_264 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_rt_622 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<10> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_264 ),
    .DI(N0),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_rt_622 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_263 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<9>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_265 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_rt_623 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<9> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_265 ),
    .DI(N0),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_rt_623 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_264 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<8>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<7>_266 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_rt_624 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<8> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<7>_266 ),
    .DI(N0),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_rt_624 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_265 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<7>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<6>_268 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<7>_267 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<7> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<7>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<6>_268 ),
    .DI(rside[7]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<7>_267 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<7>_266 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<7>  (
    .I0(rside[7]),
    .I1(\mir/ir_out [7]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<7>_267 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<6>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<5>_270 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<6>_269 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<6> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<6>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<5>_270 ),
    .DI(rside[6]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<6>_269 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<6>_268 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<6>  (
    .I0(rside[6]),
    .I1(\mir/ir_out [6]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<6>_269 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<5>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<4>_272 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<5>_271 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<5> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<5>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<4>_272 ),
    .DI(rside[5]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<5>_271 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<5>_270 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<5>  (
    .I0(rside[5]),
    .I1(\mir/ir_out [5]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<5>_271 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<4>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<3>_274 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<4>_273 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<4> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<4>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<3>_274 ),
    .DI(rside[4]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<4>_273 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<4>_272 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<4>  (
    .I0(rside[4]),
    .I1(\mir/ir_out [4]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<4>_273 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<3>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<2>_276 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<3>_275 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<3> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<3>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<2>_276 ),
    .DI(rside[3]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<3>_275 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<3>_274 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<3>  (
    .I0(rside[3]),
    .I1(\mir/ir_out [3]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<3>_275 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<2>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<1>_278 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<2>_277 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<2> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<2>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<1>_278 ),
    .DI(rside[2]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<2>_277 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<2>_276 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<2>  (
    .I0(rside[2]),
    .I1(\mir/ir_out [2]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<2>_277 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<1>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<0>_280 ),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<1>_279 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<1> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<1>  (
    .CI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<0>_280 ),
    .DI(rside[1]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<1>_279 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<1>_278 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<1>  (
    .I0(rside[1]),
    .I1(\mir/ir_out [1]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<1>_279 )
  );
  XORCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<0>  (
    .CI(N0),
    .LI(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<0>_281 ),
    .O(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<0> )
  );
  MUXCY   \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<0>  (
    .CI(N0),
    .DI(rside[0]),
    .S(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<0>_281 ),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<0>_280 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<0>  (
    .I0(rside[0]),
    .I1(\mir/ir_out [0]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_lut<0>_281 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<15>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_282 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<15>_rt_647 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<15> )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<14>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_283 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_rt_625 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<14> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_283 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_rt_625 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_282 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<13>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_284 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_rt_626 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<13> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_284 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_rt_626 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_283 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<12>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_285 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_rt_627 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<12> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_285 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_rt_627 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_284 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<11>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_286 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_rt_628 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<11> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_286 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_rt_628 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_285 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<10>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_287 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_rt_629 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<10> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_287 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_rt_629 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_286 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<9>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_288 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_rt_630 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<9> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_288 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_rt_630 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_287 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<8>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<7>_289 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_rt_631 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<8> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<7>_289 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_rt_631 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_288 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<7>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<6>_291 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<7>_290 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<7> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<7>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<6>_291 ),
    .DI(\mpc/pc_out [7]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<7>_290 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<7>_289 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<7>  (
    .I0(\mpc/pc_out [7]),
    .I1(\mir/ir_out [7]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<7>_290 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<6>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<5>_293 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<6>_292 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<6> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<6>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<5>_293 ),
    .DI(\mpc/pc_out [6]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<6>_292 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<6>_291 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<6>  (
    .I0(\mpc/pc_out [6]),
    .I1(\mir/ir_out [6]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<6>_292 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<5>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<4>_295 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<5>_294 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<5> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<5>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<4>_295 ),
    .DI(\mpc/pc_out [5]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<5>_294 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<5>_293 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<5>  (
    .I0(\mpc/pc_out [5]),
    .I1(\mir/ir_out [5]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<5>_294 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<4>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<3>_297 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<4>_296 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<4> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<4>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<3>_297 ),
    .DI(\mpc/pc_out [4]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<4>_296 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<4>_295 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<4>  (
    .I0(\mpc/pc_out [4]),
    .I1(\mir/ir_out [4]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<4>_296 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<3>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<2>_299 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<3>_298 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<3> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<3>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<2>_299 ),
    .DI(\mpc/pc_out [3]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<3>_298 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<3>_297 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<3>  (
    .I0(\mpc/pc_out [3]),
    .I1(\mir/ir_out [3]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<3>_298 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<2>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<1>_301 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<2>_300 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<2> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<2>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<1>_301 ),
    .DI(\mpc/pc_out [2]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<2>_300 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<2>_299 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<2>  (
    .I0(\mpc/pc_out [2]),
    .I1(\mir/ir_out [2]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<2>_300 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<1>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<0>_303 ),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<1>_302 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<1> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<1>  (
    .CI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<0>_303 ),
    .DI(\mpc/pc_out [1]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<1>_302 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<1>_301 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<1>  (
    .I0(\mpc/pc_out [1]),
    .I1(\mir/ir_out [1]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<1>_302 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<0>  (
    .CI(N0),
    .LI(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<0>_304 ),
    .O(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<0> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<0>  (
    .CI(N0),
    .DI(\mpc/pc_out [0]),
    .S(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<0>_304 ),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<0>_303 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<0>  (
    .I0(\mpc/pc_out [0]),
    .I1(\mir/ir_out [0]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_lut<0>_304 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<15>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_305 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<15>_rt_648 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<15> )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<14>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_306 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_rt_632 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<14> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_306 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_rt_632 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_305 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<13>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_307 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_rt_633 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<13> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_307 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_rt_633 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_306 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<12>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_308 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_rt_634 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<12> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_308 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_rt_634 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_307 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<11>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_309 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_rt_635 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<11> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_309 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_rt_635 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_308 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<10>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_310 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_rt_636 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<10> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_310 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_rt_636 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_309 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<9>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_311 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_rt_637 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<9> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_311 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_rt_637 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_310 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<8>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_312 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_rt_638 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<8> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_312 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_rt_638 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_311 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<7>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_313 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_rt_639 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<7> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_313 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_rt_639 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_312 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<6>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_314 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_rt_640 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<6> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_314 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_rt_640 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_313 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<5>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_315 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_rt_641 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<5> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_315 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_rt_641 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_314 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<4>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_316 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_rt_642 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<4> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_316 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_rt_642 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_315 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<3>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_317 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_rt_643 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<3> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_317 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_rt_643 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_316 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<2>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_318 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_rt_644 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<2> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_318 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_rt_644 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_317 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<1>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<0>_319 ),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_rt_645 ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<1> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>  (
    .CI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<0>_319 ),
    .DI(N0),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_rt_645 ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_318 )
  );
  XORCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<0>  (
    .CI(N0),
    .LI(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_lut<0> ),
    .O(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<0> )
  );
  MUXCY   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_lut<0> ),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<0>_319 )
  );
  LDC   \maddress_logic/adrs_out_15  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[15]_MUX_24_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_15_29 )
  );
  LDC   \maddress_logic/adrs_out_0  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[0]_MUX_84_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_0_44 )
  );
  LDC   \maddress_logic/adrs_out_1  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[1]_MUX_80_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_1_43 )
  );
  LDC   \maddress_logic/adrs_out_2  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[2]_MUX_76_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_2_42 )
  );
  LDC   \maddress_logic/adrs_out_3  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[3]_MUX_72_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_3_41 )
  );
  LDC   \maddress_logic/adrs_out_4  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[4]_MUX_68_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_4_40 )
  );
  LDC   \maddress_logic/adrs_out_5  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[5]_MUX_64_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_5_39 )
  );
  LDC   \maddress_logic/adrs_out_6  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[6]_MUX_60_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_6_38 )
  );
  LDC   \maddress_logic/adrs_out_7  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[7]_MUX_56_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_7_37 )
  );
  LDC   \maddress_logic/adrs_out_8  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[8]_MUX_52_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_8_36 )
  );
  LDC   \maddress_logic/adrs_out_9  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[9]_MUX_48_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_9_35 )
  );
  LDC   \maddress_logic/adrs_out_10  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[10]_MUX_44_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_10_34 )
  );
  LDC   \maddress_logic/adrs_out_11  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[11]_MUX_40_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_11_33 )
  );
  LDC   \maddress_logic/adrs_out_12  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[12]_MUX_36_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_12_32 )
  );
  LDC   \maddress_logic/adrs_out_13  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[13]_MUX_32_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_13_31 )
  );
  LDC   \maddress_logic/adrs_out_14  (
    .CLR(reset_pc_IBUF_1),
    .D(\maddress_logic/adrs_out[15]_rside[14]_MUX_28_o ),
    .G(\maddress_logic/r0_plus0_r0_plusi_OR_3_o ),
    .Q(\maddress_logic/adrs_out_14_30 )
  );
  LD   \malu/alu_out_15  (
    .D(\malu/alu_out[15]_b[15]_MUX_94_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_15_45 )
  );
  LD   \malu/alu_out_0  (
    .D(\malu/alu_out[15]_b[0]_MUX_214_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_0_60 )
  );
  LD   \malu/alu_out_1  (
    .D(\malu/alu_out[15]_b[1]_MUX_206_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_1_59 )
  );
  LD   \malu/alu_out_2  (
    .D(\malu/alu_out[15]_b[2]_MUX_198_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_2_58 )
  );
  LD   \malu/alu_out_3  (
    .D(\malu/alu_out[15]_b[3]_MUX_190_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_3_57 )
  );
  LD   \malu/alu_out_4  (
    .D(\malu/alu_out[15]_b[4]_MUX_182_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_4_56 )
  );
  LD   \malu/alu_out_5  (
    .D(\malu/alu_out[15]_b[5]_MUX_174_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_5_55 )
  );
  LD   \malu/alu_out_6  (
    .D(\malu/alu_out[15]_b[6]_MUX_166_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_6_54 )
  );
  LD   \malu/alu_out_7  (
    .D(\malu/alu_out[15]_b[7]_MUX_158_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_7_53 )
  );
  LD   \malu/alu_out_8  (
    .D(\malu/alu_out[15]_b[8]_MUX_150_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_8_52 )
  );
  LD   \malu/alu_out_9  (
    .D(\malu/alu_out[15]_b[9]_MUX_142_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_9_51 )
  );
  LD   \malu/alu_out_10  (
    .D(\malu/alu_out[15]_b[10]_MUX_134_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_10_50 )
  );
  LD   \malu/alu_out_11  (
    .D(\malu/alu_out[15]_b[11]_MUX_126_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_11_49 )
  );
  LD   \malu/alu_out_12  (
    .D(\malu/alu_out[15]_b[12]_MUX_118_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_12_48 )
  );
  LD   \malu/alu_out_13  (
    .D(\malu/alu_out[15]_b[13]_MUX_110_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_13_47 )
  );
  LD   \malu/alu_out_14  (
    .D(\malu/alu_out[15]_b[14]_MUX_102_o ),
    .G(\malu/b15to0_shlb_OR_74_o_428 ),
    .Q(\malu/alu_out_14_46 )
  );
  LD   \malu/zout  (
    .D(\malu/alu_cmp_lt ),
    .G(acmpb_BUFGP_12),
    .Q(\malu/zout_62 )
  );
  LD   \malu/cout  (
    .D(\malu/alu_cmp_eq ),
    .G(acmpb_BUFGP_12),
    .Q(\malu/cout_61 )
  );
  FDE   \mir/ir_out_11  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_11_204),
    .Q(\mir/ir_out [11])
  );
  FDE   \mir/ir_out_10  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_10_205),
    .Q(\mir/ir_out [10])
  );
  FDE   \mir/ir_out_9  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_9_206),
    .Q(\mir/ir_out [9])
  );
  FDE   \mir/ir_out_8  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_8_207),
    .Q(\mir/ir_out [8])
  );
  FDE   \mir/ir_out_7  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_7_208),
    .Q(\mir/ir_out [7])
  );
  FDE   \mir/ir_out_6  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_6_209),
    .Q(\mir/ir_out [6])
  );
  FDE   \mir/ir_out_5  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_5_210),
    .Q(\mir/ir_out [5])
  );
  FDE   \mir/ir_out_4  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_4_211),
    .Q(\mir/ir_out [4])
  );
  FDE   \mir/ir_out_3  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_3_212),
    .Q(\mir/ir_out [3])
  );
  FDE   \mir/ir_out_2  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_2_213),
    .Q(\mir/ir_out [2])
  );
  FDE   \mir/ir_out_1  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_1_214),
    .Q(\mir/ir_out [1])
  );
  FDE   \mir/ir_out_0  (
    .C(clk_BUFGP_28),
    .CE(ir_load_IBUF_19),
    .D(databus_0_215),
    .Q(\mir/ir_out [0])
  );
  FDE   \mpc/pc_out_15  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_15_29 ),
    .Q(\mpc/pc_out [15])
  );
  FDE   \mpc/pc_out_14  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_14_30 ),
    .Q(\mpc/pc_out [14])
  );
  FDE   \mpc/pc_out_13  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_13_31 ),
    .Q(\mpc/pc_out [13])
  );
  FDE   \mpc/pc_out_12  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_12_32 ),
    .Q(\mpc/pc_out [12])
  );
  FDE   \mpc/pc_out_11  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_11_33 ),
    .Q(\mpc/pc_out [11])
  );
  FDE   \mpc/pc_out_10  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_10_34 ),
    .Q(\mpc/pc_out [10])
  );
  FDE   \mpc/pc_out_9  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_9_35 ),
    .Q(\mpc/pc_out [9])
  );
  FDE   \mpc/pc_out_8  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_8_36 ),
    .Q(\mpc/pc_out [8])
  );
  FDE   \mpc/pc_out_7  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_7_37 ),
    .Q(\mpc/pc_out [7])
  );
  FDE   \mpc/pc_out_6  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_6_38 ),
    .Q(\mpc/pc_out [6])
  );
  FDE   \mpc/pc_out_5  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_5_39 ),
    .Q(\mpc/pc_out [5])
  );
  FDE   \mpc/pc_out_4  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_4_40 ),
    .Q(\mpc/pc_out [4])
  );
  FDE   \mpc/pc_out_3  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_3_41 ),
    .Q(\mpc/pc_out [3])
  );
  FDE   \mpc/pc_out_2  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_2_42 ),
    .Q(\mpc/pc_out [2])
  );
  FDE   \mpc/pc_out_1  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_1_43 ),
    .Q(\mpc/pc_out [1])
  );
  FDE   \mpc/pc_out_0  (
    .C(clk_BUFGP_28),
    .CE(pc_load_IBUF_20),
    .D(\maddress_logic/adrs_out_0_44 ),
    .Q(\mpc/pc_out [0])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf16  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<15> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[15]),
    .DPO(b[15])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf15  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<14> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[14]),
    .DPO(b[14])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf14  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<13> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[13]),
    .DPO(b[13])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf13  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<12> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[12]),
    .DPO(b[12])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf12  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<11> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[11]),
    .DPO(b[11])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf11  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<10> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[10]),
    .DPO(b[10])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf10  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<9> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[9]),
    .DPO(b[9])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf9  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<8> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[8]),
    .DPO(b[8])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf8  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<7> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[7]),
    .DPO(b[7])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf7  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<6> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[6]),
    .DPO(b[6])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf6  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<5> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[5]),
    .DPO(b[5])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf5  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<4> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[4]),
    .DPO(b[4])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf4  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<3> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[3]),
    .DPO(b[3])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf3  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<2> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[2]),
    .DPO(b[2])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf1  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<0> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[0]),
    .DPO(b[0])
  );
  RAM64X1D #(
    .INIT ( 64'h0000000000000000 ))
  \mregister_files/Mram_regf2  (
    .A0(\mregister_files/Madd_ladrs_lut [0]),
    .A1(\mregister_files/ladrs [1]),
    .A2(\mregister_files/ladrs [2]),
    .A3(\mregister_files/ladrs [3]),
    .A4(\mregister_files/ladrs [4]),
    .A5(\mregister_files/ladrs [5]),
    .D(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<1> ),
    .DPRA0(\mregister_files/Madd_radrs_lut [0]),
    .DPRA1(\mregister_files/radrs [1]),
    .DPRA2(\mregister_files/radrs [2]),
    .DPRA3(\mregister_files/radrs [3]),
    .DPRA4(\mregister_files/radrs [4]),
    .DPRA5(\mregister_files/radrs [5]),
    .WCLK(clk_BUFGP_28),
    .WE(N1),
    .SPO(a[1]),
    .DPO(b[1])
  );
  LUT2 #(
    .INIT ( 4'hE ))
  _n0035_inv1 (
    .I0(rd_on_adrs_IBUF_26),
    .I1(rs_on_adrs_IBUF_27),
    .O(_n0035_inv)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  _n0032_inv1 (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(adrs_on_daabus_IBUF_25),
    .O(_n0032_inv)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mflags/_n00111  (
    .I0(sr_load_IBUF_18),
    .I1(creset_IBUF_17),
    .O(\mflags/_n0011 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \mwp/_n0017_inv1  (
    .I0(wpreset_IBUF_24),
    .I1(wpadd_IBUF_23),
    .O(\mwp/_n0017_inv )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT161  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[9]),
    .I2(a[9]),
    .O(\rside[15]_a[15]_mux_4_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT151  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[8]),
    .I2(a[8]),
    .O(\rside[15]_a[15]_mux_4_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT141  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[7]),
    .I2(a[7]),
    .O(\rside[15]_a[15]_mux_4_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT131  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[6]),
    .I2(a[6]),
    .O(\rside[15]_a[15]_mux_4_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT121  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[5]),
    .I2(a[5]),
    .O(\rside[15]_a[15]_mux_4_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT111  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[4]),
    .I2(a[4]),
    .O(\rside[15]_a[15]_mux_4_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT101  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[3]),
    .I2(a[3]),
    .O(\rside[15]_a[15]_mux_4_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT91  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[2]),
    .I2(a[2]),
    .O(\rside[15]_a[15]_mux_4_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT81  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[1]),
    .I2(a[1]),
    .O(\rside[15]_a[15]_mux_4_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT71  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[15]),
    .I2(a[15]),
    .O(\rside[15]_a[15]_mux_4_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT61  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[14]),
    .I2(a[14]),
    .O(\rside[15]_a[15]_mux_4_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT51  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[13]),
    .I2(a[13]),
    .O(\rside[15]_a[15]_mux_4_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT41  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[12]),
    .I2(a[12]),
    .O(\rside[15]_a[15]_mux_4_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT31  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[11]),
    .I2(a[11]),
    .O(\rside[15]_a[15]_mux_4_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT21  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[10]),
    .I2(a[10]),
    .O(\rside[15]_a[15]_mux_4_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_rside[15]_a[15]_mux_4_OUT11  (
    .I0(rd_on_adrs_IBUF_26),
    .I1(b[0]),
    .I2(a[0]),
    .O(\rside[15]_a[15]_mux_4_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_ir_out[3]_ir_out[11]_mux_0_OUT41  (
    .I0(shadow_IBUF_0),
    .I1(\mir/ir_out [11]),
    .I2(\mir/ir_out [3]),
    .O(\ir_out[3]_ir_out[11]_mux_0_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_ir_out[3]_ir_out[11]_mux_0_OUT31  (
    .I0(shadow_IBUF_0),
    .I1(\mir/ir_out [10]),
    .I2(\mir/ir_out [2]),
    .O(\ir_out[3]_ir_out[11]_mux_0_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_ir_out[3]_ir_out[11]_mux_0_OUT21  (
    .I0(shadow_IBUF_0),
    .I1(\mir/ir_out [9]),
    .I2(\mir/ir_out [1]),
    .O(\ir_out[3]_ir_out[11]_mux_0_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_ir_out[3]_ir_out[11]_mux_0_OUT11  (
    .I0(shadow_IBUF_0),
    .I1(\mir/ir_out [8]),
    .I2(\mir/ir_out [0]),
    .O(\ir_out[3]_ir_out[11]_mux_0_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT161  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_9_35 ),
    .I2(\malu/alu_out_9_51 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT151  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_8_36 ),
    .I2(\malu/alu_out_8_52 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<8> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT141  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_7_37 ),
    .I2(\malu/alu_out_7_53 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT131  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_6_38 ),
    .I2(\malu/alu_out_6_54 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT121  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_5_39 ),
    .I2(\malu/alu_out_5_55 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT111  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_4_40 ),
    .I2(\malu/alu_out_4_56 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT101  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_3_41 ),
    .I2(\malu/alu_out_3_57 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT91  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_2_42 ),
    .I2(\malu/alu_out_2_58 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT81  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_1_43 ),
    .I2(\malu/alu_out_1_59 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT71  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_15_29 ),
    .I2(\malu/alu_out_15_45 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<15> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT61  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_14_30 ),
    .I2(\malu/alu_out_14_46 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<14> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT51  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_13_31 ),
    .I2(\malu/alu_out_13_47 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<13> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT41  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_12_32 ),
    .I2(\malu/alu_out_12_48 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<12> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT31  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_11_33 ),
    .I2(\malu/alu_out_11_49 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<11> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT21  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_10_34 ),
    .I2(\malu/alu_out_10_50 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<10> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \Mmux_databus[15]_alu_on_databus[15]_mux_2_OUT11  (
    .I0(alu_out_on_databus_IBUF_15),
    .I1(\maddress_logic/adrs_out_0_44 ),
    .I2(\malu/alu_out_0_60 ),
    .O(\databus[15]_alu_on_databus[15]_mux_2_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \maddress_logic/r0_plus0_r0_plusi_OR_3_o1  (
    .I0(pc_plus1_IBUF_2),
    .I1(pc_plusi_IBUF_3),
    .I2(r0_plus0_IBUF_5),
    .I3(r0_plusi_IBUF_4),
    .O(\maddress_logic/r0_plus0_r0_plusi_OR_3_o )
  );
  LUT5 #(
    .INIT ( 32'hBB2B2B22 ))
  \malu/sub/p1/p2/cout1  (
    .I0(a[1]),
    .I1(b[1]),
    .I2(b[0]),
    .I3(\mflags/cin_79 ),
    .I4(a[0]),
    .O(\malu/sub/p1/c2 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \malu/adder/p1/p2/cout1  (
    .I0(a[1]),
    .I1(b[1]),
    .I2(b[0]),
    .I3(\mflags/cin_79 ),
    .I4(a[0]),
    .O(\malu/adder/p1/c2 )
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  \malu/sub/p4/p2/cout1  (
    .I0(b[13]),
    .I1(\malu/sub/p4/c1 ),
    .I2(a[13]),
    .O(\malu/sub/p4/c2 )
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  \malu/sub/p1/p3/cout1  (
    .I0(b[2]),
    .I1(\malu/sub/p1/c2 ),
    .I2(a[2]),
    .O(\malu/sub/p1/c3 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \malu/adder/p4/p2/cout1  (
    .I0(\malu/adder/p4/c1 ),
    .I1(b[13]),
    .I2(a[13]),
    .O(\malu/adder/p4/c2 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \malu/adder/p3/p2/cout1  (
    .I0(\malu/adder/p3/c1 ),
    .I1(b[9]),
    .I2(a[9]),
    .O(\malu/adder/p3/c2 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \malu/adder/p3/p4/cout1  (
    .I0(\malu/adder/p3/c3 ),
    .I1(b[11]),
    .I2(a[11]),
    .O(\malu/adder/c3 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \malu/adder/p2/p2/cout1  (
    .I0(\malu/adder/p2/c1 ),
    .I1(b[5]),
    .I2(a[5]),
    .O(\malu/adder/p2/c2 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \malu/adder/p2/p4/cout1  (
    .I0(\malu/adder/p2/c3 ),
    .I1(b[7]),
    .I2(a[7]),
    .O(\malu/adder/c2 )
  );
  LUT3 #(
    .INIT ( 8'hE8 ))
  \malu/adder/p1/p3/cout1  (
    .I0(\malu/adder/p1/c2 ),
    .I1(b[2]),
    .I2(a[2]),
    .O(\malu/adder/p1/c3 )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \malu/Mmux_alu_out[15]_b[0]_MUX_214_o221  (
    .I0(shlb_IBUF_14),
    .I1(asubb_IBUF_11),
    .I2(shrb_IBUF_13),
    .O(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o121  (
    .I0(aorb_IBUF_8),
    .I1(aaddb_IBUF_10),
    .I2(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o111  (
    .I0(a[15]),
    .I1(b[15]),
    .O(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o11 )
  );
  LUT2 #(
    .INIT ( 4'h9 ))
  \malu/sub/p1/p2/p1/Mxor_s_xo<0>1  (
    .I0(a[1]),
    .I1(b[1]),
    .O(\malu/sub/p1/p2/s1 )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT21  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[10]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[2]),
    .I4(a[10]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<10> )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT31  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[11]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[3]),
    .I4(a[11]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<11> )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT41  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[12]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[4]),
    .I4(a[12]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<12> )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT51  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[13]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[5]),
    .I4(a[13]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<13> )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT61  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[14]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[6]),
    .I4(a[14]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<14> )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT71  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[15]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[7]),
    .I4(a[15]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<15> )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT151  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[8]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[0]),
    .I4(a[8]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<8> )
  );
  LUT5 #(
    .INIT ( 32'hDFD58A80 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT161  (
    .I0(rfh_write_IBUF_22),
    .I1(databus_inp[9]),
    .I2(rfl_write_IBUF_21),
    .I3(databus_inp[1]),
    .I4(a[9]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<9> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT15  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[0]),
    .I2(a[0]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT81  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[1]),
    .I2(a[1]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT91  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[2]),
    .I2(a[2]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<2> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT101  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[3]),
    .I2(a[3]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT111  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[4]),
    .I2(a[4]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT121  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[5]),
    .I2(a[5]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<5> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT131  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[6]),
    .I2(a[6]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hD8 ))
  \mregister_files/Mmux_BUS_0035_databus_inp[15]_mux_7_OUT141  (
    .I0(rfl_write_IBUF_21),
    .I1(databus_inp[7]),
    .I2(a[7]),
    .O(\mregister_files/BUS_0035_databus_inp[15]_mux_7_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mregister_files/Madd_ladrs_lut<0>1  (
    .I0(ir_reg[2]),
    .I1(\mwp/add [0]),
    .O(\mregister_files/Madd_ladrs_lut [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \mregister_files/Madd_radrs_lut<0>1  (
    .I0(ir_reg[0]),
    .I1(\mwp/add [0]),
    .O(\mregister_files/Madd_radrs_lut [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[9]_MUX_48_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<9> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<9> ),
    .O(N3)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[9]_MUX_48_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<9> ),
    .I3(N3),
    .I4(rside[9]),
    .O(\maddress_logic/adrs_out[15]_rside[9]_MUX_48_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[8]_MUX_52_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<8> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<8> ),
    .O(N5)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[8]_MUX_52_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<8> ),
    .I3(N5),
    .I4(rside[8]),
    .O(\maddress_logic/adrs_out[15]_rside[8]_MUX_52_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[7]_MUX_56_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<7> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<7> ),
    .O(N7)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[7]_MUX_56_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<7> ),
    .I3(N7),
    .I4(rside[7]),
    .O(\maddress_logic/adrs_out[15]_rside[7]_MUX_56_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[6]_MUX_60_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<6> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<6> ),
    .O(N9)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[6]_MUX_60_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<6> ),
    .I3(N9),
    .I4(rside[6]),
    .O(\maddress_logic/adrs_out[15]_rside[6]_MUX_60_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[5]_MUX_64_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<5> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<5> ),
    .O(N11)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[5]_MUX_64_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<5> ),
    .I3(N11),
    .I4(rside[5]),
    .O(\maddress_logic/adrs_out[15]_rside[5]_MUX_64_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[4]_MUX_68_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<4> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<4> ),
    .O(N13)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[4]_MUX_68_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<4> ),
    .I3(N13),
    .I4(rside[4]),
    .O(\maddress_logic/adrs_out[15]_rside[4]_MUX_68_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[3]_MUX_72_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<3> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<3> ),
    .O(N15)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[3]_MUX_72_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<3> ),
    .I3(N15),
    .I4(rside[3]),
    .O(\maddress_logic/adrs_out[15]_rside[3]_MUX_72_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[2]_MUX_76_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<2> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<2> ),
    .O(N17)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[2]_MUX_76_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<2> ),
    .I3(N17),
    .I4(rside[2]),
    .O(\maddress_logic/adrs_out[15]_rside[2]_MUX_76_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[1]_MUX_80_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<1> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<1> ),
    .O(N19)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[1]_MUX_80_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<1> ),
    .I3(N19),
    .I4(rside[1]),
    .O(\maddress_logic/adrs_out[15]_rside[1]_MUX_80_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[15]_MUX_24_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<15> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<15> ),
    .O(N21)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[15]_MUX_24_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<15> ),
    .I3(N21),
    .I4(rside[15]),
    .O(\maddress_logic/adrs_out[15]_rside[15]_MUX_24_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[14]_MUX_28_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<14> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<14> ),
    .O(N23)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[14]_MUX_28_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<14> ),
    .I3(N23),
    .I4(rside[14]),
    .O(\maddress_logic/adrs_out[15]_rside[14]_MUX_28_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[13]_MUX_32_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<13> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<13> ),
    .O(N25)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[13]_MUX_32_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<13> ),
    .I3(N25),
    .I4(rside[13]),
    .O(\maddress_logic/adrs_out[15]_rside[13]_MUX_32_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[12]_MUX_36_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<12> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<12> ),
    .O(N27)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[12]_MUX_36_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<12> ),
    .I3(N27),
    .I4(rside[12]),
    .O(\maddress_logic/adrs_out[15]_rside[12]_MUX_36_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[11]_MUX_40_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<11> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<11> ),
    .O(N29)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[11]_MUX_40_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<11> ),
    .I3(N29),
    .I4(rside[11]),
    .O(\maddress_logic/adrs_out[15]_rside[11]_MUX_40_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[10]_MUX_44_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<10> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<10> ),
    .O(N31)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[10]_MUX_44_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<10> ),
    .I3(N31),
    .I4(rside[10]),
    .O(\maddress_logic/adrs_out[15]_rside[10]_MUX_44_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[0]_MUX_84_o1_SW0  (
    .I0(pc_plusi_IBUF_3),
    .I1(\maddress_logic/pc_out[15]_one[15]_add_1_OUT<0> ),
    .I2(\maddress_logic/pc_out[15]_GND_5_o_add_3_OUT<0> ),
    .O(N33)
  );
  LUT5 #(
    .INIT ( 32'hFBEA5140 ))
  \maddress_logic/Mmux_adrs_out[15]_rside[0]_MUX_84_o1  (
    .I0(r0_plus0_IBUF_5),
    .I1(r0_plusi_IBUF_4),
    .I2(\maddress_logic/rside[15]_GND_5_o_add_5_OUT<0> ),
    .I3(N33),
    .I4(rside[0]),
    .O(\maddress_logic/adrs_out[15]_rside[0]_MUX_84_o )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[9]_MUX_142_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p3/c1 ),
    .I2(a[9]),
    .I3(b[9]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o32 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \malu/Mmux_alu_out[15]_b[9]_MUX_142_o34  (
    .I0(\malu/sub/p3/c1 ),
    .I1(a[9]),
    .I2(b[9]),
    .O(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o33_481 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[9]_MUX_142_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[9]),
    .I5(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o33_481 ),
    .O(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o34_482 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[8]_MUX_150_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/c2 ),
    .I2(a[8]),
    .I3(b[8]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o32 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[8]_MUX_150_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[8]),
    .I5(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o33_485 ),
    .O(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o34_486 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[7]_MUX_158_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p2/c3 ),
    .I2(a[7]),
    .I3(b[7]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o32 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \malu/Mmux_alu_out[15]_b[7]_MUX_158_o34  (
    .I0(\malu/sub/p2/c3 ),
    .I1(a[7]),
    .I2(b[7]),
    .O(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o33_489 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[7]_MUX_158_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[7]),
    .I5(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o33_489 ),
    .O(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o34_490 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[6]_MUX_166_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p2/c2 ),
    .I2(a[6]),
    .I3(b[6]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o32 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[6]_MUX_166_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[6]),
    .I5(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o33_493 ),
    .O(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o34_494 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[5]_MUX_174_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p2/c1 ),
    .I2(a[5]),
    .I3(b[5]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o32 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \malu/Mmux_alu_out[15]_b[5]_MUX_174_o34  (
    .I0(\malu/sub/p2/c1 ),
    .I1(a[5]),
    .I2(b[5]),
    .O(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o33_497 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[5]_MUX_174_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[5]),
    .I5(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o33_497 ),
    .O(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o34_498 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[4]_MUX_182_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/c1 ),
    .I2(a[4]),
    .I3(b[4]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o32 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[4]_MUX_182_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[4]),
    .I5(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o33_501 ),
    .O(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o34_502 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[3]_MUX_190_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p1/c3 ),
    .I2(a[3]),
    .I3(b[3]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o32 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[3]_MUX_190_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[3]),
    .I5(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o33_505 ),
    .O(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o34_506 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[2]_MUX_198_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p1/c2 ),
    .I2(a[2]),
    .I3(b[2]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o32 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \malu/Mmux_alu_out[15]_b[2]_MUX_198_o34  (
    .I0(\malu/sub/p1/c2 ),
    .I1(a[2]),
    .I2(b[2]),
    .O(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o33_509 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[2]_MUX_198_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[2]),
    .I5(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o33_509 ),
    .O(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o34_510 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[14]_MUX_102_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p4/c2 ),
    .I2(a[14]),
    .I3(b[14]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o32 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[14]_MUX_102_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[14]),
    .I5(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o33_513 ),
    .O(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o34_514 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[13]_MUX_110_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p4/c1 ),
    .I2(a[13]),
    .I3(b[13]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o32 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \malu/Mmux_alu_out[15]_b[13]_MUX_110_o34  (
    .I0(\malu/sub/p4/c1 ),
    .I1(a[13]),
    .I2(b[13]),
    .O(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o33_517 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[13]_MUX_110_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[13]),
    .I5(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o33_517 ),
    .O(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o34_518 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[12]_MUX_118_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/c3 ),
    .I2(a[12]),
    .I3(b[12]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o32 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[12]_MUX_118_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[12]),
    .I5(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o33_521 ),
    .O(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o34_522 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[11]_MUX_126_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p3/c3 ),
    .I2(a[11]),
    .I3(b[11]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o32 )
  );
  LUT3 #(
    .INIT ( 8'h69 ))
  \malu/Mmux_alu_out[15]_b[11]_MUX_126_o34  (
    .I0(\malu/sub/p3/c3 ),
    .I1(a[11]),
    .I2(b[11]),
    .O(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o33_525 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[11]_MUX_126_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[11]),
    .I5(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o33_525 ),
    .O(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o34_526 )
  );
  LUT5 #(
    .INIT ( 32'h87788228 ))
  \malu/Mmux_alu_out[15]_b[10]_MUX_134_o33  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/adder/p3/c2 ),
    .I2(a[10]),
    .I3(b[10]),
    .I4(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o32 )
  );
  LUT6 #(
    .INIT ( 64'h5554545411101010 ))
  \malu/Mmux_alu_out[15]_b[10]_MUX_134_o35  (
    .I0(b15to0_IBUF_6),
    .I1(asubb_IBUF_11),
    .I2(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o32 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I4(a[10]),
    .I5(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o33_529 ),
    .O(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o34_530 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00000080 ))
  \malu/Mmux_alu_out[15]_b[1]_MUX_206_o31  (
    .I0(b[1]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(a[1]),
    .I3(aaddb_IBUF_10),
    .I4(axorb_IBUF_9),
    .I5(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o321 ),
    .O(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o3 )
  );
  LUT6 #(
    .INIT ( 64'h0202A002A002A020 ))
  \malu/Mmux_alu_out[15]_b[1]_MUX_206_o32  (
    .I0(asubb_IBUF_11),
    .I1(shlb_IBUF_14),
    .I2(\malu/sub/p1/p2/s1 ),
    .I3(b[0]),
    .I4(\mflags/cin_79 ),
    .I5(a[0]),
    .O(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o31_532 )
  );
  LUT5 #(
    .INIT ( 32'hBF8FB888 ))
  \malu/Mmux_alu_out[15]_b[1]_MUX_206_o33  (
    .I0(b[0]),
    .I1(shlb_IBUF_14),
    .I2(shrb_IBUF_13),
    .I3(b[2]),
    .I4(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o31_532 ),
    .O(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o32_533 )
  );
  LUT6 #(
    .INIT ( 64'h9993933388828222 ))
  \malu/Mmux_alu_out[15]_b[1]_MUX_206_o34  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/sub/p1/p2/s1 ),
    .I2(b[0]),
    .I3(\mflags/cin_79 ),
    .I4(a[0]),
    .I5(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o33_534 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \malu/Mmux_alu_out[15]_b[1]_MUX_206_o36  (
    .I0(b15to0_IBUF_6),
    .I1(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o34_535 ),
    .I2(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o32_533 ),
    .I3(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o3 ),
    .O(\malu/alu_out[15]_b[1]_MUX_206_o )
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA00000080 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o21  (
    .I0(b[15]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(a[15]),
    .I3(aaddb_IBUF_10),
    .I4(axorb_IBUF_9),
    .I5(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o321 ),
    .O(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o2 )
  );
  LUT6 #(
    .INIT ( 64'h20200A200A200A02 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o22  (
    .I0(asubb_IBUF_11),
    .I1(shlb_IBUF_14),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o11 ),
    .I3(b[14]),
    .I4(a[14]),
    .I5(\malu/sub/p4/c2 ),
    .O(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o21_537 )
  );
  LUT4 #(
    .INIT ( 16'hF222 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o23  (
    .I0(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o21_537 ),
    .I1(shrb_IBUF_13),
    .I2(shlb_IBUF_14),
    .I3(b[14]),
    .O(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o22_538 )
  );
  LUT6 #(
    .INIT ( 64'h666C6CCC22282888 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o24  (
    .I0(aaddb_IBUF_10),
    .I1(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o11 ),
    .I2(\malu/adder/p4/c2 ),
    .I3(b[14]),
    .I4(a[14]),
    .I5(axorb_IBUF_9),
    .O(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o23_539 )
  );
  LUT4 #(
    .INIT ( 16'hFF54 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o26  (
    .I0(b15to0_IBUF_6),
    .I1(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o24_540 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o22_538 ),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o2 ),
    .O(\malu/alu_out[15]_b[15]_MUX_94_o )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \malu/b15to0_shlb_OR_74_o_SW0  (
    .I0(aorb_IBUF_8),
    .I1(aaddb_IBUF_10),
    .I2(aandb_IBUF_7),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \malu/b15to0_shlb_OR_74_o  (
    .I0(shrb_IBUF_13),
    .I1(shlb_IBUF_14),
    .I2(b15to0_IBUF_6),
    .I3(axorb_IBUF_9),
    .I4(asubb_IBUF_11),
    .I5(N35),
    .O(\malu/b15to0_shlb_OR_74_o_428 )
  );
  LUT3 #(
    .INIT ( 8'h71 ))
  \malu/cmp/comprate/comprate[12].mycomprator/lt_SW0  (
    .I0(b[10]),
    .I1(\malu/cmp/comprate/cryl[10] ),
    .I2(a[10]),
    .O(N37)
  );
  LUT5 #(
    .INIT ( 32'h088AAEEF ))
  \malu/cmp/comprate/comprate[12].mycomprator/lt  (
    .I0(b[12]),
    .I1(b[11]),
    .I2(N37),
    .I3(a[11]),
    .I4(a[12]),
    .O(\malu/cmp/comprate/cryl[13] )
  );
  LUT4 #(
    .INIT ( 16'hF571 ))
  \malu/cmp/comprate/comprate[3].mycomprator/lt_SW0  (
    .I0(b[1]),
    .I1(b[0]),
    .I2(a[1]),
    .I3(a[0]),
    .O(N39)
  );
  LUT5 #(
    .INIT ( 32'h088AAEEF ))
  \malu/cmp/comprate/comprate[3].mycomprator/lt  (
    .I0(b[3]),
    .I1(b[2]),
    .I2(N39),
    .I3(a[2]),
    .I4(a[3]),
    .O(\malu/cmp/comprate/cryl[4] )
  );
  LUT3 #(
    .INIT ( 8'hD4 ))
  \malu/cmp/comprate/comprate[9].mycomprator/lt1  (
    .I0(a[7]),
    .I1(\malu/cmp/comprate/cryl[7] ),
    .I2(b[7]),
    .O(\malu/cmp/comprate/comprate[9].mycomprator/lt )
  );
  LUT5 #(
    .INIT ( 32'hBB2B2B22 ))
  \malu/cmp/comprate/comprate[9].mycomprator/lt2  (
    .I0(b[9]),
    .I1(a[9]),
    .I2(a[8]),
    .I3(b[8]),
    .I4(\malu/cmp/comprate/comprate[9].mycomprator/lt ),
    .O(\malu/cmp/comprate/cryl[10] )
  );
  LUT3 #(
    .INIT ( 8'h71 ))
  \malu/cmp/comprate/comprate[6].mycomprator/lt_SW0  (
    .I0(b[4]),
    .I1(\malu/cmp/comprate/cryl[4] ),
    .I2(a[4]),
    .O(N41)
  );
  LUT5 #(
    .INIT ( 32'h088AAEEF ))
  \malu/cmp/comprate/comprate[6].mycomprator/lt  (
    .I0(b[6]),
    .I1(b[5]),
    .I2(N41),
    .I3(a[5]),
    .I4(a[6]),
    .O(\malu/cmp/comprate/cryl[7] )
  );
  LUT3 #(
    .INIT ( 8'h71 ))
  \malu/cmp/comprate/comprate[15].mycomprator/lt_SW0  (
    .I0(b[13]),
    .I1(\malu/cmp/comprate/cryl[13] ),
    .I2(a[13]),
    .O(N43)
  );
  LUT5 #(
    .INIT ( 32'h088AAEEF ))
  \malu/cmp/comprate/comprate[15].mycomprator/lt  (
    .I0(b[15]),
    .I1(b[14]),
    .I2(N43),
    .I3(a[14]),
    .I4(a[15]),
    .O(\malu/alu_cmp_lt )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq1  (
    .I0(a[6]),
    .I1(b[6]),
    .I2(a[2]),
    .I3(b[2]),
    .I4(a[1]),
    .I5(b[1]),
    .O(\malu/cmp/comprate/comprate[15].mycomprator/eq )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq2  (
    .I0(a[3]),
    .I1(b[3]),
    .I2(a[7]),
    .I3(b[7]),
    .I4(\malu/cmp/comprate/comprate[15].mycomprator/eq ),
    .O(\malu/cmp/comprate/comprate[15].mycomprator/eq1_548 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq3  (
    .I0(a[5]),
    .I1(b[5]),
    .I2(a[4]),
    .I3(b[4]),
    .I4(\malu/cmp/comprate/comprate[15].mycomprator/eq1_548 ),
    .O(\malu/cmp/comprate/comprate[15].mycomprator/eq2_549 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq4  (
    .I0(a[0]),
    .I1(b[0]),
    .I2(a[9]),
    .I3(b[9]),
    .I4(\malu/cmp/comprate/comprate[15].mycomprator/eq2_549 ),
    .O(\malu/cmp/comprate/comprate[15].mycomprator/eq3_550 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq5  (
    .I0(a[13]),
    .I1(b[13]),
    .I2(a[11]),
    .I3(b[11]),
    .I4(\malu/cmp/comprate/comprate[15].mycomprator/eq3_550 ),
    .O(\malu/cmp/comprate/comprate[15].mycomprator/eq4_551 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq6  (
    .I0(a[15]),
    .I1(b[15]),
    .I2(a[14]),
    .I3(b[14]),
    .I4(\malu/cmp/comprate/comprate[15].mycomprator/eq4_551 ),
    .O(\malu/cmp/comprate/comprate[15].mycomprator/eq5_552 )
  );
  LUT5 #(
    .INIT ( 32'h90090000 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq7  (
    .I0(a[8]),
    .I1(b[8]),
    .I2(a[10]),
    .I3(b[10]),
    .I4(\malu/cmp/comprate/comprate[15].mycomprator/eq5_552 ),
    .O(\malu/cmp/comprate/comprate[15].mycomprator/eq6_553 )
  );
  LUT3 #(
    .INIT ( 8'h82 ))
  \malu/cmp/comprate/comprate[15].mycomprator/eq8  (
    .I0(\malu/cmp/comprate/comprate[15].mycomprator/eq6_553 ),
    .I1(a[12]),
    .I2(b[12]),
    .O(\malu/alu_cmp_eq )
  );
  IBUF   shadow_IBUF (
    .I(shadow),
    .O(shadow_IBUF_0)
  );
  IBUF   reset_pc_IBUF (
    .I(reset_pc),
    .O(reset_pc_IBUF_1)
  );
  IBUF   pc_plus1_IBUF (
    .I(pc_plus1),
    .O(pc_plus1_IBUF_2)
  );
  IBUF   pc_plusi_IBUF (
    .I(pc_plusi),
    .O(pc_plusi_IBUF_3)
  );
  IBUF   r0_plusi_IBUF (
    .I(r0_plusi),
    .O(r0_plusi_IBUF_4)
  );
  IBUF   r0_plus0_IBUF (
    .I(r0_plus0),
    .O(r0_plus0_IBUF_5)
  );
  IBUF   b15to0_IBUF (
    .I(b15to0),
    .O(b15to0_IBUF_6)
  );
  IBUF   aandb_IBUF (
    .I(aandb),
    .O(aandb_IBUF_7)
  );
  IBUF   aorb_IBUF (
    .I(aorb),
    .O(aorb_IBUF_8)
  );
  IBUF   axorb_IBUF (
    .I(axorb),
    .O(axorb_IBUF_9)
  );
  IBUF   aaddb_IBUF (
    .I(aaddb),
    .O(aaddb_IBUF_10)
  );
  IBUF   asubb_IBUF (
    .I(asubb),
    .O(asubb_IBUF_11)
  );
  IBUF   shrb_IBUF (
    .I(shrb),
    .O(shrb_IBUF_13)
  );
  IBUF   shlb_IBUF (
    .I(shlb),
    .O(shlb_IBUF_14)
  );
  IBUF   alu_out_on_databus_IBUF (
    .I(alu_out_on_databus),
    .O(alu_out_on_databus_IBUF_15)
  );
  IBUF   cset_IBUF (
    .I(cset),
    .O(cset_IBUF_16)
  );
  IBUF   creset_IBUF (
    .I(creset),
    .O(creset_IBUF_17)
  );
  IBUF   sr_load_IBUF (
    .I(sr_load),
    .O(sr_load_IBUF_18)
  );
  IBUF   ir_load_IBUF (
    .I(ir_load),
    .O(ir_load_IBUF_19)
  );
  IBUF   pc_load_IBUF (
    .I(pc_load),
    .O(pc_load_IBUF_20)
  );
  IBUF   rfl_write_IBUF (
    .I(rfl_write),
    .O(rfl_write_IBUF_21)
  );
  IBUF   rfh_write_IBUF (
    .I(rfh_write),
    .O(rfh_write_IBUF_22)
  );
  IBUF   wpadd_IBUF (
    .I(wpadd),
    .O(wpadd_IBUF_23)
  );
  IBUF   wpreset_IBUF (
    .I(wpreset),
    .O(wpreset_IBUF_24)
  );
  IBUF   adrs_on_daabus_IBUF (
    .I(adrs_on_daabus),
    .O(adrs_on_daabus_IBUF_25)
  );
  IBUF   rd_on_adrs_IBUF (
    .I(rd_on_adrs),
    .O(rd_on_adrs_IBUF_26)
  );
  IBUF   rs_on_adrs_IBUF (
    .I(rs_on_adrs),
    .O(rs_on_adrs_IBUF_27)
  );
  OBUF   databus_15_OBUF (
    .I(databus_15_1_667),
    .O(databus[15])
  );
  OBUF   databus_14_OBUF (
    .I(databus_14_1_668),
    .O(databus[14])
  );
  OBUF   databus_13_OBUF (
    .I(databus_13_1_669),
    .O(databus[13])
  );
  OBUF   databus_12_OBUF (
    .I(databus_12_1_670),
    .O(databus[12])
  );
  OBUF   databus_11_OBUF (
    .I(databus_11_1_671),
    .O(databus[11])
  );
  OBUF   databus_10_OBUF (
    .I(databus_10_1_672),
    .O(databus[10])
  );
  OBUF   databus_9_OBUF (
    .I(databus_9_1_673),
    .O(databus[9])
  );
  OBUF   databus_8_OBUF (
    .I(databus_8_1_674),
    .O(databus[8])
  );
  OBUF   databus_7_OBUF (
    .I(databus_7_1_675),
    .O(databus[7])
  );
  OBUF   databus_6_OBUF (
    .I(databus_6_1_676),
    .O(databus[6])
  );
  OBUF   databus_5_OBUF (
    .I(databus_5_1_677),
    .O(databus[5])
  );
  OBUF   databus_4_OBUF (
    .I(databus_4_1_678),
    .O(databus[4])
  );
  OBUF   databus_3_OBUF (
    .I(databus_3_1_679),
    .O(databus[3])
  );
  OBUF   databus_2_OBUF (
    .I(databus_2_1_680),
    .O(databus[2])
  );
  OBUF   databus_1_OBUF (
    .I(databus_1_1_681),
    .O(databus[1])
  );
  OBUF   databus_0_OBUF (
    .I(databus_0_1_682),
    .O(databus[0])
  );
  OBUF   adrs_to_mem_15_OBUF (
    .I(adrs_to_mem_15_184),
    .O(adrs_to_mem[15])
  );
  OBUF   adrs_to_mem_14_OBUF (
    .I(adrs_to_mem_14_185),
    .O(adrs_to_mem[14])
  );
  OBUF   adrs_to_mem_13_OBUF (
    .I(adrs_to_mem_13_186),
    .O(adrs_to_mem[13])
  );
  OBUF   adrs_to_mem_12_OBUF (
    .I(adrs_to_mem_12_187),
    .O(adrs_to_mem[12])
  );
  OBUF   adrs_to_mem_11_OBUF (
    .I(adrs_to_mem_11_188),
    .O(adrs_to_mem[11])
  );
  OBUF   adrs_to_mem_10_OBUF (
    .I(adrs_to_mem_10_189),
    .O(adrs_to_mem[10])
  );
  OBUF   adrs_to_mem_9_OBUF (
    .I(adrs_to_mem_9_190),
    .O(adrs_to_mem[9])
  );
  OBUF   adrs_to_mem_8_OBUF (
    .I(adrs_to_mem_8_191),
    .O(adrs_to_mem[8])
  );
  OBUF   adrs_to_mem_7_OBUF (
    .I(adrs_to_mem_7_192),
    .O(adrs_to_mem[7])
  );
  OBUF   adrs_to_mem_6_OBUF (
    .I(adrs_to_mem_6_193),
    .O(adrs_to_mem[6])
  );
  OBUF   adrs_to_mem_5_OBUF (
    .I(adrs_to_mem_5_194),
    .O(adrs_to_mem[5])
  );
  OBUF   adrs_to_mem_4_OBUF (
    .I(adrs_to_mem_4_195),
    .O(adrs_to_mem[4])
  );
  OBUF   adrs_to_mem_3_OBUF (
    .I(adrs_to_mem_3_196),
    .O(adrs_to_mem[3])
  );
  OBUF   adrs_to_mem_2_OBUF (
    .I(adrs_to_mem_2_197),
    .O(adrs_to_mem[2])
  );
  OBUF   adrs_to_mem_1_OBUF (
    .I(adrs_to_mem_1_198),
    .O(adrs_to_mem[1])
  );
  OBUF   adrs_to_mem_0_OBUF (
    .I(adrs_to_mem_0_199),
    .O(adrs_to_mem[0])
  );
  OBUF   cout_OBUF (
    .I(cout_OBUF_178),
    .O(cout)
  );
  OBUF   zout_OBUF (
    .I(zout_OBUF_179),
    .O(zout)
  );
  FDR   \mflags/cin  (
    .C(clk_BUFGP_28),
    .D(\mflags/cin_glue_set_617 ),
    .R(\mflags/_n0011 ),
    .Q(\mflags/cin_79 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_rt  (
    .I0(rside[14]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<14>_rt_618 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_rt  (
    .I0(rside[13]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<13>_rt_619 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_rt  (
    .I0(rside[12]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<12>_rt_620 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_rt  (
    .I0(rside[11]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<11>_rt_621 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_rt  (
    .I0(rside[10]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<10>_rt_622 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_rt  (
    .I0(rside[9]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<9>_rt_623 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_rt  (
    .I0(rside[8]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_cy<8>_rt_624 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_rt  (
    .I0(\mpc/pc_out [14]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<14>_rt_625 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_rt  (
    .I0(\mpc/pc_out [13]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<13>_rt_626 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_rt  (
    .I0(\mpc/pc_out [12]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<12>_rt_627 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_rt  (
    .I0(\mpc/pc_out [11]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<11>_rt_628 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_rt  (
    .I0(\mpc/pc_out [10]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<10>_rt_629 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_rt  (
    .I0(\mpc/pc_out [9]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<9>_rt_630 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_rt  (
    .I0(\mpc/pc_out [8]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_cy<8>_rt_631 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_rt  (
    .I0(\mpc/pc_out [14]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<14>_rt_632 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_rt  (
    .I0(\mpc/pc_out [13]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<13>_rt_633 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_rt  (
    .I0(\mpc/pc_out [12]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<12>_rt_634 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_rt  (
    .I0(\mpc/pc_out [11]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<11>_rt_635 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_rt  (
    .I0(\mpc/pc_out [10]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<10>_rt_636 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_rt  (
    .I0(\mpc/pc_out [9]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<9>_rt_637 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_rt  (
    .I0(\mpc/pc_out [8]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<8>_rt_638 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_rt  (
    .I0(\mpc/pc_out [7]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<7>_rt_639 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_rt  (
    .I0(\mpc/pc_out [6]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<6>_rt_640 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_rt  (
    .I0(\mpc/pc_out [5]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<5>_rt_641 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_rt  (
    .I0(\mpc/pc_out [4]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<4>_rt_642 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_rt  (
    .I0(\mpc/pc_out [3]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<3>_rt_643 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_rt  (
    .I0(\mpc/pc_out [2]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<2>_rt_644 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_rt  (
    .I0(\mpc/pc_out [1]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_cy<1>_rt_645 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<15>_rt  (
    .I0(rside[15]),
    .O(\maddress_logic/Madd_rside[15]_GND_5_o_add_5_OUT_xor<15>_rt_646 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<15>_rt  (
    .I0(\mpc/pc_out [15]),
    .O(\maddress_logic/Madd_pc_out[15]_GND_5_o_add_3_OUT_xor<15>_rt_647 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<15>_rt  (
    .I0(\mpc/pc_out [15]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_xor<15>_rt_648 )
  );
  LUT2 #(
    .INIT ( 4'h7 ))
  \mregister_files/Madd_ladrs_xor<5>111_SW0  (
    .I0(\mwp/add [2]),
    .I1(\mwp/add [3]),
    .O(N61)
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \mregister_files/Madd_ladrs_xor<5>111_SW1  (
    .I0(\mwp/add [2]),
    .I1(\mwp/add [3]),
    .I2(\mwp/add [4]),
    .O(N63)
  );
  LUT6 #(
    .INIT ( 64'h666A6AAA6A6AAAAA ))
  \mregister_files/Madd_ladrs_xor<3>11  (
    .I0(\mwp/add [3]),
    .I1(\mwp/add [2]),
    .I2(\mwp/add [1]),
    .I3(\mwp/add [0]),
    .I4(ir_reg[3]),
    .I5(ir_reg[2]),
    .O(\mregister_files/ladrs [3])
  );
  LUT5 #(
    .INIT ( 32'h566A66AA ))
  \mregister_files/Madd_ladrs_xor<2>11  (
    .I0(\mwp/add [2]),
    .I1(\mwp/add [1]),
    .I2(\mwp/add [0]),
    .I3(ir_reg[3]),
    .I4(ir_reg[2]),
    .O(\mregister_files/ladrs [2])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \mregister_files/Madd_ladrs_xor<1>11  (
    .I0(ir_reg[3]),
    .I1(ir_reg[2]),
    .I2(\mwp/add [1]),
    .I3(\mwp/add [0]),
    .O(\mregister_files/ladrs [1])
  );
  LUT6 #(
    .INIT ( 64'h666A6AAA6A6AAAAA ))
  \mregister_files/Madd_radrs_xor<3>11  (
    .I0(\mwp/add [3]),
    .I1(\mwp/add [2]),
    .I2(\mwp/add [1]),
    .I3(\mwp/add [0]),
    .I4(ir_reg[1]),
    .I5(ir_reg[0]),
    .O(\mregister_files/radrs [3])
  );
  LUT5 #(
    .INIT ( 32'h566A66AA ))
  \mregister_files/Madd_radrs_xor<2>11  (
    .I0(\mwp/add [2]),
    .I1(\mwp/add [1]),
    .I2(\mwp/add [0]),
    .I3(ir_reg[1]),
    .I4(ir_reg[0]),
    .O(\mregister_files/radrs [2])
  );
  LUT4 #(
    .INIT ( 16'h965A ))
  \mregister_files/Madd_radrs_xor<1>11  (
    .I0(ir_reg[1]),
    .I1(ir_reg[0]),
    .I2(\mwp/add [1]),
    .I3(\mwp/add [0]),
    .O(\mregister_files/radrs [1])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA566A66AA ))
  \mregister_files/Madd_ladrs_xor<4>11  (
    .I0(\mwp/add [4]),
    .I1(\mwp/add [1]),
    .I2(\mwp/add [0]),
    .I3(ir_reg[3]),
    .I4(ir_reg[2]),
    .I5(N61),
    .O(\mregister_files/ladrs [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA566A66AA ))
  \mregister_files/Madd_ladrs_xor<5>12  (
    .I0(\mwp/add [5]),
    .I1(\mwp/add [1]),
    .I2(\mwp/add [0]),
    .I3(ir_reg[3]),
    .I4(ir_reg[2]),
    .I5(N63),
    .O(\mregister_files/ladrs [5])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA566A66AA ))
  \mregister_files/Madd_radrs_xor<4>11  (
    .I0(\mwp/add [4]),
    .I1(\mwp/add [1]),
    .I2(\mwp/add [0]),
    .I3(ir_reg[1]),
    .I4(ir_reg[0]),
    .I5(N61),
    .O(\mregister_files/radrs [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAAAAA566A66AA ))
  \mregister_files/Madd_radrs_xor<5>12  (
    .I0(\mwp/add [5]),
    .I1(\mwp/add [1]),
    .I2(\mwp/add [0]),
    .I3(ir_reg[1]),
    .I4(ir_reg[0]),
    .I5(N63),
    .O(\mregister_files/radrs [5])
  );
  LUT6 #(
    .INIT ( 64'hBABBAAAB10110001 ))
  \malu/Mmux_alu_out[15]_b[0]_MUX_214_o27  (
    .I0(b15to0_IBUF_6),
    .I1(shlb_IBUF_14),
    .I2(shrb_IBUF_13),
    .I3(N69),
    .I4(b[1]),
    .I5(b[0]),
    .O(\malu/alu_out[15]_b[0]_MUX_214_o )
  );
  LUT4 #(
    .INIT ( 16'hFE54 ))
  \mflags/cin_glue_set  (
    .I0(sr_load_IBUF_18),
    .I1(cset_IBUF_16),
    .I2(\mflags/cin_79 ),
    .I3(\malu/cout_61 ),
    .O(\mflags/cin_glue_set_617 )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[9]_MUX_142_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o34_482 ),
    .I1(a[9]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[9]),
    .O(N71)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[9]_MUX_142_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[10]),
    .I4(N71),
    .I5(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o3 ),
    .O(\malu/alu_out[15]_b[9]_MUX_142_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[8]_MUX_150_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o34_486 ),
    .I1(a[8]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[8]),
    .O(N73)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[8]_MUX_150_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[9]),
    .I4(N73),
    .I5(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o3 ),
    .O(\malu/alu_out[15]_b[8]_MUX_150_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[7]_MUX_158_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o34_490 ),
    .I1(a[7]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[7]),
    .O(N75)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[7]_MUX_158_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[8]),
    .I4(N75),
    .I5(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o3 ),
    .O(\malu/alu_out[15]_b[7]_MUX_158_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[6]_MUX_166_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o34_494 ),
    .I1(a[6]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[6]),
    .O(N77)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[6]_MUX_166_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[7]),
    .I4(N77),
    .I5(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o3 ),
    .O(\malu/alu_out[15]_b[6]_MUX_166_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[5]_MUX_174_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o34_498 ),
    .I1(a[5]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[5]),
    .O(N79)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[5]_MUX_174_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[6]),
    .I4(N79),
    .I5(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o3 ),
    .O(\malu/alu_out[15]_b[5]_MUX_174_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[4]_MUX_182_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o34_502 ),
    .I1(a[4]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[4]),
    .O(N81)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[4]_MUX_182_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[5]),
    .I4(N81),
    .I5(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o3 ),
    .O(\malu/alu_out[15]_b[4]_MUX_182_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[3]_MUX_190_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o34_506 ),
    .I1(a[3]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[3]),
    .O(N83)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[3]_MUX_190_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[4]),
    .I4(N83),
    .I5(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o3 ),
    .O(\malu/alu_out[15]_b[3]_MUX_190_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[2]_MUX_198_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o34_510 ),
    .I1(a[2]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[2]),
    .O(N85)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[2]_MUX_198_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[3]),
    .I4(N85),
    .I5(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o3 ),
    .O(\malu/alu_out[15]_b[2]_MUX_198_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[14]_MUX_102_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o34_514 ),
    .I1(a[14]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[14]),
    .O(N87)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[14]_MUX_102_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[15]),
    .I4(N87),
    .I5(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o3 ),
    .O(\malu/alu_out[15]_b[14]_MUX_102_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[13]_MUX_110_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o34_518 ),
    .I1(a[13]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[13]),
    .O(N89)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[13]_MUX_110_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[14]),
    .I4(N89),
    .I5(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o3 ),
    .O(\malu/alu_out[15]_b[13]_MUX_110_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[12]_MUX_118_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o34_522 ),
    .I1(a[12]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[12]),
    .O(N91)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[12]_MUX_118_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[13]),
    .I4(N91),
    .I5(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o3 ),
    .O(\malu/alu_out[15]_b[12]_MUX_118_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[11]_MUX_126_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o34_526 ),
    .I1(a[11]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[11]),
    .O(N93)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[11]_MUX_126_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[12]),
    .I4(N93),
    .I5(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o3 ),
    .O(\malu/alu_out[15]_b[11]_MUX_126_o )
  );
  LUT6 #(
    .INIT ( 64'h5555555155555555 ))
  \malu/Mmux_alu_out[15]_b[10]_MUX_134_o37_SW0  (
    .I0(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o34_530 ),
    .I1(a[10]),
    .I2(aaddb_IBUF_10),
    .I3(asubb_IBUF_11),
    .I4(axorb_IBUF_9),
    .I5(b[10]),
    .O(N95)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF04001511 ))
  \malu/Mmux_alu_out[15]_b[10]_MUX_134_o37  (
    .I0(shlb_IBUF_14),
    .I1(shrb_IBUF_13),
    .I2(b15to0_IBUF_6),
    .I3(b[11]),
    .I4(N95),
    .I5(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o3 ),
    .O(\malu/alu_out[15]_b[10]_MUX_134_o )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[9]_MUX_142_o31  (
    .I0(b[9]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[8]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[9]_MUX_142_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[8]_MUX_150_o31  (
    .I0(b[8]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[7]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[7]_MUX_158_o31  (
    .I0(b[7]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[6]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[7]_MUX_158_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[6]_MUX_166_o31  (
    .I0(b[6]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[5]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[5]_MUX_174_o31  (
    .I0(b[5]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[4]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[5]_MUX_174_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[4]_MUX_182_o31  (
    .I0(b[4]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[3]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[3]_MUX_190_o31  (
    .I0(b[3]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[2]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[2]_MUX_198_o31  (
    .I0(b[2]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[1]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[2]_MUX_198_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[14]_MUX_102_o31  (
    .I0(b[14]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[13]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[13]_MUX_110_o31  (
    .I0(b[13]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[12]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[13]_MUX_110_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[12]_MUX_118_o31  (
    .I0(b[12]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[11]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[11]_MUX_126_o31  (
    .I0(b[11]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[10]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[11]_MUX_126_o3 )
  );
  LUT6 #(
    .INIT ( 64'hAAFFAA80AA80AA80 ))
  \malu/Mmux_alu_out[15]_b[10]_MUX_134_o31  (
    .I0(b[10]),
    .I1(\malu/Mmux_alu_out[15]_b[0]_MUX_214_o22 ),
    .I2(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I3(b15to0_IBUF_6),
    .I4(b[9]),
    .I5(shlb_IBUF_14),
    .O(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o3 )
  );
  LUT5 #(
    .INIT ( 32'hBB2B2B22 ))
  \malu/sub/p4/p1/cout1  (
    .I0(a[12]),
    .I1(b[12]),
    .I2(b[11]),
    .I3(\malu/sub/p3/c3 ),
    .I4(a[11]),
    .O(\malu/sub/p4/c1 )
  );
  LUT5 #(
    .INIT ( 32'hBB2B2B22 ))
  \malu/sub/p3/p1/cout1  (
    .I0(a[8]),
    .I1(b[8]),
    .I2(b[7]),
    .I3(\malu/sub/p2/c3 ),
    .I4(a[7]),
    .O(\malu/sub/p3/c1 )
  );
  LUT5 #(
    .INIT ( 32'hBB2B2B22 ))
  \malu/sub/p3/p3/cout1  (
    .I0(a[10]),
    .I1(b[10]),
    .I2(b[9]),
    .I3(\malu/sub/p3/c1 ),
    .I4(a[9]),
    .O(\malu/sub/p3/c3 )
  );
  LUT5 #(
    .INIT ( 32'hBB2B2B22 ))
  \malu/sub/p2/p1/cout1  (
    .I0(a[4]),
    .I1(b[4]),
    .I2(b[3]),
    .I3(\malu/sub/p1/c3 ),
    .I4(a[3]),
    .O(\malu/sub/p2/c1 )
  );
  LUT5 #(
    .INIT ( 32'hBB2B2B22 ))
  \malu/sub/p2/p3/cout1  (
    .I0(a[6]),
    .I1(b[6]),
    .I2(b[5]),
    .I3(\malu/sub/p2/c1 ),
    .I4(a[5]),
    .O(\malu/sub/p2/c3 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \malu/adder/p4/p1/cout1  (
    .I0(a[12]),
    .I1(b[12]),
    .I2(\malu/adder/p3/c3 ),
    .I3(b[11]),
    .I4(a[11]),
    .O(\malu/adder/p4/c1 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \malu/adder/p3/p1/cout1  (
    .I0(a[8]),
    .I1(b[8]),
    .I2(\malu/adder/p2/c3 ),
    .I3(b[7]),
    .I4(a[7]),
    .O(\malu/adder/p3/c1 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \malu/adder/p3/p3/cout1  (
    .I0(a[10]),
    .I1(b[10]),
    .I2(\malu/adder/p3/c1 ),
    .I3(b[9]),
    .I4(a[9]),
    .O(\malu/adder/p3/c3 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \malu/adder/p2/p1/cout1  (
    .I0(a[4]),
    .I1(b[4]),
    .I2(\malu/adder/p1/c3 ),
    .I3(b[3]),
    .I4(a[3]),
    .O(\malu/adder/p2/c1 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \malu/adder/p2/p3/cout1  (
    .I0(a[6]),
    .I1(b[6]),
    .I2(\malu/adder/p2/c1 ),
    .I3(b[5]),
    .I4(a[5]),
    .O(\malu/adder/p2/c3 )
  );
  LUT5 #(
    .INIT ( 32'h2BD4D42B ))
  \malu/Mmux_alu_out[15]_b[8]_MUX_150_o34  (
    .I0(b[7]),
    .I1(\malu/sub/p2/c3 ),
    .I2(a[7]),
    .I3(a[8]),
    .I4(b[8]),
    .O(\malu/Mmux_alu_out[15]_b[8]_MUX_150_o33_485 )
  );
  LUT5 #(
    .INIT ( 32'h2BD4D42B ))
  \malu/Mmux_alu_out[15]_b[6]_MUX_166_o34  (
    .I0(b[5]),
    .I1(\malu/sub/p2/c1 ),
    .I2(a[5]),
    .I3(a[6]),
    .I4(b[6]),
    .O(\malu/Mmux_alu_out[15]_b[6]_MUX_166_o33_493 )
  );
  LUT5 #(
    .INIT ( 32'h2BD4D42B ))
  \malu/Mmux_alu_out[15]_b[4]_MUX_182_o34  (
    .I0(b[3]),
    .I1(\malu/sub/p1/c3 ),
    .I2(a[3]),
    .I3(a[4]),
    .I4(b[4]),
    .O(\malu/Mmux_alu_out[15]_b[4]_MUX_182_o33_501 )
  );
  LUT5 #(
    .INIT ( 32'h2BD4D42B ))
  \malu/Mmux_alu_out[15]_b[3]_MUX_190_o34  (
    .I0(b[2]),
    .I1(\malu/sub/p1/c2 ),
    .I2(a[2]),
    .I3(a[3]),
    .I4(b[3]),
    .O(\malu/Mmux_alu_out[15]_b[3]_MUX_190_o33_505 )
  );
  LUT5 #(
    .INIT ( 32'h2BD4D42B ))
  \malu/Mmux_alu_out[15]_b[14]_MUX_102_o34  (
    .I0(b[13]),
    .I1(\malu/sub/p4/c1 ),
    .I2(a[13]),
    .I3(a[14]),
    .I4(b[14]),
    .O(\malu/Mmux_alu_out[15]_b[14]_MUX_102_o33_513 )
  );
  LUT5 #(
    .INIT ( 32'h2BD4D42B ))
  \malu/Mmux_alu_out[15]_b[12]_MUX_118_o34  (
    .I0(b[11]),
    .I1(\malu/sub/p3/c3 ),
    .I2(a[11]),
    .I3(a[12]),
    .I4(b[12]),
    .O(\malu/Mmux_alu_out[15]_b[12]_MUX_118_o33_521 )
  );
  LUT5 #(
    .INIT ( 32'h2BD4D42B ))
  \malu/Mmux_alu_out[15]_b[10]_MUX_134_o34  (
    .I0(b[9]),
    .I1(\malu/sub/p3/c1 ),
    .I2(a[9]),
    .I3(a[10]),
    .I4(b[10]),
    .O(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o33_529 )
  );
  LUT6 #(
    .INIT ( 64'h0101010001000100 ))
  \malu/Mmux_alu_out[15]_b[1]_MUX_206_o35  (
    .I0(shlb_IBUF_14),
    .I1(asubb_IBUF_11),
    .I2(shrb_IBUF_13),
    .I3(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o33_534 ),
    .I4(a[1]),
    .I5(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .O(\malu/Mmux_alu_out[15]_b[1]_MUX_206_o34_535 )
  );
  LUT6 #(
    .INIT ( 64'h0101010001000100 ))
  \malu/Mmux_alu_out[15]_b[15]_MUX_94_o25  (
    .I0(shlb_IBUF_14),
    .I1(asubb_IBUF_11),
    .I2(shrb_IBUF_13),
    .I3(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o23_539 ),
    .I4(a[15]),
    .I5(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .O(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o24_540 )
  );
  LUT5 #(
    .INIT ( 32'hAAAAAAAE ))
  \malu/Mmux_alu_out[15]_b[10]_MUX_134_o3211  (
    .I0(b15to0_IBUF_6),
    .I1(\malu/Mmux_alu_out[15]_b[15]_MUX_94_o12 ),
    .I2(shlb_IBUF_14),
    .I3(asubb_IBUF_11),
    .I4(shrb_IBUF_13),
    .O(\malu/Mmux_alu_out[15]_b[10]_MUX_134_o321 )
  );
  LUT5 #(
    .INIT ( 32'hEEE8E888 ))
  \malu/adder/p1/p4/cout1  (
    .I0(a[3]),
    .I1(b[3]),
    .I2(\malu/adder/p1/c2 ),
    .I3(b[2]),
    .I4(a[2]),
    .O(\malu/adder/c1 )
  );
  MUXF7   \malu/Mmux_alu_out[15]_b[0]_MUX_214_o27_SW0  (
    .I0(N97),
    .I1(N98),
    .S(b[0]),
    .O(N69)
  );
  LUT6 #(
    .INIT ( 64'h693969396939697D ))
  \malu/Mmux_alu_out[15]_b[0]_MUX_214_o27_SW0_F  (
    .I0(asubb_IBUF_11),
    .I1(a[0]),
    .I2(\mflags/cin_79 ),
    .I3(aaddb_IBUF_10),
    .I4(axorb_IBUF_9),
    .I5(aorb_IBUF_8),
    .O(N97)
  );
  LUT6 #(
    .INIT ( 64'hB54AA44AB54AA45B ))
  \malu/Mmux_alu_out[15]_b[0]_MUX_214_o27_SW0_G  (
    .I0(asubb_IBUF_11),
    .I1(aaddb_IBUF_10),
    .I2(\mflags/cin_79 ),
    .I3(a[0]),
    .I4(axorb_IBUF_9),
    .I5(aorb_IBUF_8),
    .O(N98)
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_28)
  );
  BUFGP   acmpb_BUFGP (
    .I(acmpb),
    .O(acmpb_BUFGP_12)
  );
  INV   \maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_lut<0>_INV_0  (
    .I(\mpc/pc_out [0]),
    .O(\maddress_logic/Madd_pc_out[15]_one[15]_add_1_OUT_lut<0> )
  );
  FDE   databus_15_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<15> ),
    .Q(databus_15_1_667)
  );
  FDE   databus_14_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<14> ),
    .Q(databus_14_1_668)
  );
  FDE   databus_13_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<13> ),
    .Q(databus_13_1_669)
  );
  FDE   databus_12_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<12> ),
    .Q(databus_12_1_670)
  );
  FDE   databus_11_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<11> ),
    .Q(databus_11_1_671)
  );
  FDE   databus_10_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<10> ),
    .Q(databus_10_1_672)
  );
  FDE   databus_9_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<9> ),
    .Q(databus_9_1_673)
  );
  FDE   databus_8_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<8> ),
    .Q(databus_8_1_674)
  );
  FDE   databus_7_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<7> ),
    .Q(databus_7_1_675)
  );
  FDE   databus_6_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<6> ),
    .Q(databus_6_1_676)
  );
  FDE   databus_5_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<5> ),
    .Q(databus_5_1_677)
  );
  FDE   databus_4_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<4> ),
    .Q(databus_4_1_678)
  );
  FDE   databus_3_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<3> ),
    .Q(databus_3_1_679)
  );
  FDE   databus_2_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<2> ),
    .Q(databus_2_1_680)
  );
  FDE   databus_1_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<1> ),
    .Q(databus_1_1_681)
  );
  FDE   databus_0_1 (
    .C(clk_BUFGP_28),
    .CE(_n0032_inv),
    .D(\databus[15]_alu_on_databus[15]_mux_2_OUT<0> ),
    .Q(databus_0_1_682)
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

