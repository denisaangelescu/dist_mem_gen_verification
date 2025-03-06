// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Sun Jan  5 11:58:40 2025
// Host        : Denisa running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/denis/Desktop/vpc/project_1/project_1.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xa7a12tcpg238-2I
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_15,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_15,Vivado 2024.1" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
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
  dist_mem_gen_0_dist_mem_gen_v8_0_15 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
`pragma protect data_block
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
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
