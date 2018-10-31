*
*
*
*                       LINUX           Wed Oct 31 13:52:44 2018
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
.SUBCKT xor2 a b out
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MT4	gnd!	a	net27	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT3	net27	b	out	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT2	out	net43	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT0	gnd!	a	net43	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT1	net43	b	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT6	net052	b	net43	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT5	vdd!	a	net052	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT7	net044	net43	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT9	out	b	net044	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT8	net044	a	out	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
*
*
*       CAPACITOR CARDS
*
*
C1	vdd!	gnd!	2.12111E-16
C2	a	gnd!	9.95852E-16
C3	b	gnd!	1.00901E-15
C4	out	gnd!	4.32512E-16
C5	avC10	gnd!	1.94254E-17
C6	net044	gnd!	2.67828E-16
C7	net43	gnd!	6.6292E-16
*
*
.ENDS xor2
*
