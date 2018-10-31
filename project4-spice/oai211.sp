*
*
*
*                       LINUX           Wed Oct 31 13:51:24 2018
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
.SUBCKT oai211 a b c d out
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MT5	net20	b	out	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT4	out	a	net20	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT6	net20	c	net9	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT7	net9	d	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT1	out	b	net055	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT0	net055	a	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT2	vdd!	c	out	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT3	out	d	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
*
*
*       CAPACITOR CARDS
*
*
C1	vdd!	gnd!	2.01267E-16
C2	a	gnd!	5.69628E-16
C3	b	gnd!	4.87729E-16
C4	c	gnd!	5.53566E-16
C5	d	gnd!	4.79461E-16
C6	out	gnd!	6.24105E-16
C7	avC11	gnd!	1.49939E-17
C8	net20	gnd!	2.34557E-16
*
*
.ENDS oai211
*
