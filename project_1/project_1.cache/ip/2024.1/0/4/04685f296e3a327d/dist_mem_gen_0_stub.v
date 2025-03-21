// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Jan  5 11:58:40 2025
// Host        : Denisa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_stub.v
// Design      : dist_mem_gen_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(a, d, clk, we, qspo_ce, qspo_rst, qspo_srst, spo, qspo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],d[15:0],we,qspo_ce,qspo_rst,qspo_srst,spo[15:0],qspo[15:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input [5:0]a;
  input [15:0]d;
  input clk /* synthesis syn_isclock = 1 */;
  input we;
  input qspo_ce;
  input qspo_rst;
  input qspo_srst;
  output [15:0]spo;
  output [15:0]qspo;
endmodule
