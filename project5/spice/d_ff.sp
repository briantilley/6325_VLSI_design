*
*
*
*                       LINUX           Sun Nov 11 22:29:19 2018
*
*
*
*  PROGRAM  advgen
*
*  Name           : advgen - QRC - (32-bit)
*  Version        : 9.1.3-p005
*  Build Date     : Tue Aug  3 12:36:00 PDT 2010
*
*  HSPICE LIBRARY
*
*
*
.GLOBAL gnd! vdd!
*
.SUBCKT d_ff D R clk Q
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MT15	gnd!	R	net234	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT31	gnd!	net201	Q	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT28	net205	net234	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT29	net201	net249	net205	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT26	net209	phi	net201	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT27	gnd!	net206	net209	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT25	net206	net201	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT24	gnd!	R	net206	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT0	gnd!	clk	net257	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT1	phi	net257	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT2	gnd!	phi	net249	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT9	net241	D	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT8	net245	phi	net241	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT13	net237	net249	net245	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT12	gnd!	net234	net237	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT14	net234	net245	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT16	net234	R	net164	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT30	vdd!	net201	Q	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT23	net140	net234	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT22	net201	phi	net140	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT21	net144	net249	net201	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT20	vdd!	net206	net144	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT18	net152	net201	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT19	net206	R	net152	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT3	vdd!	clk	net257	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT4	phi	net257	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT5	vdd!	phi	net249	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT6	net176	D	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT7	net245	net249	net176	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT10	net172	phi	net245	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT11	vdd!	net234	net172	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT17	net164	net245	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
*
*
*       CAPACITOR CARDS
*
*
C1	vdd!	gnd!	1.00205E-15
C2	D	gnd!	5.33702E-16
C3	R	gnd!	1.61281E-15
C4	clk	gnd!	4.82529E-16
C5	Q	gnd!	7.00662E-16
C6	avC24	gnd!	3.7585E-17
C7	net206	gnd!	6.85488E-16
C8	net245	gnd!	1.10418E-15
C9	net201	gnd!	1.55946E-15
C10	phi	gnd!	2.65366E-15
C11	net257	gnd!	7.16601E-16
C12	net249	gnd!	2.35742E-15
C13	net234	gnd!	1.77325E-15
*
*
.ENDS d_ff
*
