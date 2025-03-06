// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sat Jan  4 17:31:53 2025
// Host        : Denisa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    d,
    clk,
    we,
    qspo_ce,
    qspo_rst,
    qspo_srst,
    spo,
    qspo);
  input [5:0]a;
  input [15:0]d;
  input clk;
  input we;
  input qspo_ce;
  input qspo_rst;
  input qspo_srst;
  output [15:0]spo;
  output [15:0]qspo;

  wire [5:0]a;
  wire clk;
  wire [15:0]d;
  wire [15:0]qspo;
  wire qspo_ce;
  wire qspo_rst;
  wire qspo_srst;
  wire [15:0]spo;
  wire we;
  wire [15:0]NLW_U0_dpo_UNCONNECTED;
  wire [15:0]NLW_U0_qdpo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_CLK = "1" *) 
  (* C_HAS_D = "1" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_i_ce = "0" *) 
  (* c_has_qspo = "1" *) 
  (* c_has_qspo_ce = "1" *) 
  (* c_has_qspo_rst = "1" *) 
  (* c_has_qspo_srst = "1" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "no_coe_file_loaded" *) 
  (* c_parser_type = "1" *) 
  (* c_pipeline_stages = "0" *) 
  (* c_qualify_we = "0" *) 
  (* c_read_mif = "0" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "16" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_15 U0
       (.a(a),
        .clk(clk),
        .d(d),
        .dpo(NLW_U0_dpo_UNCONNECTED[15:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[15:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(qspo),
        .qspo_ce(qspo_ce),
        .qspo_rst(qspo_rst),
        .qspo_srst(qspo_srst),
        .spo(spo),
        .we(we));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2024.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
uLChqOUbTt1NFqiY8jPjjWJ62+rDBQqU79LiT+Z6+gdlWinUir8nc2O0EGNyofvJW07+2lWUpfZh
gfpJjsobqvpJ2nYLxgwBiBsL8wBAP1jKld4vcwrRFif8QIkQ0apJAb/olBJLjoXrVaHBRe2cnb1c
oYTXROWoQOueWYRDTt8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
cWFMh19dcAfh5I2fm5gNkzVKA+E12s5YjF++3lKiIst8GaBwa4on4FAuXEKW4EnPpxcvyMqXVyau
1iv3smLGLOPLYRGmQ+Lqbgvnzwf0EOjN2tKhG9aO1m0eNGrAn2GOB6+s+qBZ7yZ0bw9aIRZ14ADt
0tgxTDmKFjSrS1E20XpQOS/rgmJwxM+4uqb8CgmWM1DhycsOPCMvKYvEd8HuRQRtpK/QCa4/xxa0
4EgKNEoh6VEVoH5iktCx8a5+8whAk38RI77NFnH76yoxMmDeQo9htMBWBjYtn0904uI2jEYWqHjo
oyzVDOnhKivDgp7VhUkZNTMlJgpm1rNnMTnDng==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Bac+rfdUQnZTOZSHj+fbLlDkqY9V6T37mC79TYn32zd9e4UQWEMVu/Qq9mmvmrOQU69Mo3lrXlh+
6Xh2h+E8iRO9eFGvneX8CXGQd0+s/GL2SrY/9HoZy9C4vwBabKKgVk05W72+t1LJigoJxEIMxVlZ
VJmkNkC6/xqCdF3k9SY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Jhb8ls74g0uc3Fd1307BQ9zyFNylFTnHZyMBh2k6oawiqjyVvQFcgUo5Hh/3yGyp3nxnBgBQ2lU1
DV1XHDmTCa6V7QoVSgBHIG/AmNSKliiA8MYTdT49XiELM8GMNKijDtWYSe7t5sBTK5s09epxoWn+
AcWO7Qb/kBVeon2Ud1c8Njaqetd39tjcrSsrlC+v4qazicD0ULHrcgZC5cfPFXFCwwhk6xMIc9hn
uIFyZAHl0Y1rkaiVs1Ro5K5WDl9gIgMv6R+yGWnq8LsJU6J//4S5eZ72M7xkmquGupGAmOz7MJTE
sZEdmmljHxosXY88CkFVfwkmXHhtjj5/sOxYMg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oNXIIL+xgdkNOfFImtuCpLT9HBDzBIRAelFSucWDBQIE5/qEUiXr1F6w6okbsOnTr/1BK1y82hBr
2hMFq6kPdTjzBxoeDHhEVkbhR70n2nJ/cdS7XjLDsq1yeewi+EVstQQPNMK5O2J5iKuWDb/BEszK
B2mkR2jCTIMfN9osMXmA5MNJlY6aUD+mQ6Yb4ci81LQ6pwO9g1mJWXvsO5Xzk/Kc4JdiCQW52zxx
5k7GvGT8MhCROXmrsQdTK0YqsSJMLec0DGXUwyM6C1F9o6Z2fMRuzZMQVqPr3QOathetEogsKSl3
f4+BUic/Ye+1upn7OF6gjteB//inYfCBagnzVQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2023_11", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gHrJRrOqtj1TQdMA/j92Y5PCCE1aNTwtE2jxzyKWyMM6kulnC0cMXqpUEoeDugoLkRBAuQQEfmwa
7mR9gfbs4ny9pg44hBu/27yOMq7/cXIvwvKa3CHpdbmA6HSp2icSU8hDyvTbioJU2jppkhALVD2J
duyjLrdwr+7Nxfy/16rq1EAxHAVjja/qweZ/UQdZhRqCCEGMu0D/d49pRtkDU/FTB79LchJ76YIm
puJWCUOtAH4D4pOOp4kuSPaw7JDzCwzSWYi3XiFoZKIcX4cosq95hjJ32vycPF7PBMbHjARJufvx
wVAbXjvXOrZfVDNy80LGXvLEqLygKskL/cvk/Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Swaq1gE2XfBxa8PrQrjW8HeMxN2R1seHvbcqrEn4Vav/sU6KouMEb7x82gVljEEGZtTMz4nKgE4P
h7B3y7rjOmwAPdfHwyzfUpb3SOeGgSvneW0fVeEhfJyJKDlXdBx+Dt5o1yZgVEdBzdooFB4X4B91
dUBK1p+ROFTZHmYGDy53ecZ0rg9NypgKGJh5NEaA/MDPRq29Iix+NKMq9CHPHBM4Ui+PESbZbOZv
U1jC1AJvuuokiKM9cGlNe5BqZGZYLk/LibvGuUV1+ljlSoxAlDySWniD/0FYwPDkBRipMHZiG4EK
ID9g8l9T5UHyouVfKjD+D0ZpaSLl5pUAhx9+iw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
UatAu37joqwtobUVXchAh60uD53sdShUFZul39l9SJl1Id/88habH4svoqRknnswD+rqq1GW4P4x
DFAMPwW26Ez36mOxLzasDsjnjxROE9mAMNshTId7NaZlg0TsnDYvtZZSXNP/5NuRcy+kO5rSehKt
ve3QwiNvjmviJRlrudf2QbUZzUuWSwNMfntqkibRomvnakdSbVYz7zmKxyF2wbUKkjGVBAa7HLne
KD0Jsbq6aNVY6OgNO9CfYFNsWpkpXz/d3WD9jzjBeZhsBxlvS6yhEqdz2iDtcm+HajUonkV2An/2
1ef4pf36CCK87N7GGeDLIDEPNMMzXi3O6DkRZQc0xVPg6I8FzqnNCRE3zGr0F5AnvSNQC9QiHSgP
aCQfqpFRrNIniMnAMGGzbSV/SoyqkKRfgtk8MjWeR8cMlhjqLh0HbRh+Es9W2aiio4vg19/jNotO
qCWpFn+5luhpGz8n4u0x8sIZpE1C0IVZqrdmBDVNX7sdv6uW+KnvElCJ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jUks1HJ15RgDCglsJ6hDx9APGBmp3wVWHl0yyWJHvx3HdJBQe2/57etU1k3NSeSWRzKEzpRgB9wW
VDVL8UxQ2KYOn7Jn4Eok7xhzaW4bJGraUVsrXN6OZEp81mNq/ckk3uuAncXUC8EDfNFPEak7o/qk
a/xsAOFMxYHiAjFyct4Ej83egvfj275clFiA5QGodrJeBfNdhmeUAmTlWxx9Bb4JnGCwIIR6O2AG
Eb701jsv/lt2NvUCk6NmRHUf0MB+kt/am17FwpIR7PBC9DfEad1iwB/kj1c3SIPTMrh1FsW6avkC
wE7eSYRz+VD1UFn20x5AKaZLmYGz0HIELP6T9A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19504)
`pragma protect data_block
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
jhYCJVio8UmKtA==
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
