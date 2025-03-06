// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Jan  5 11:58:40 2025
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
  (* c_sync_enable = "0" *) 
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
R5XIbXxJC9apjg==
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
