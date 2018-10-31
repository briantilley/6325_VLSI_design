*
*
*
*                       LINUX           Wed Oct 31 13:38:14 2018
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
.SUBCKT nand2 a b out
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MT1	out	b	net032	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT0	net032	a	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT2	vdd!	b	out	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT3	out	a	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
*
*
*       CAPACITOR CARDS
*
*
C1	vdd!	gnd!	2.01121E-16
C2	a	gnd!	4.78211E-16
C3	b	gnd!	5.364E-16
C4	out	gnd!	3.937E-16
C5	avC7	gnd!	2.18537E-17
*
*
.ENDS nand2
*
