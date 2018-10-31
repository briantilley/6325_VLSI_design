*
*
*
*                       LINUX           Wed Oct 31 13:35:34 2018
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
.SUBCKT aoi22 a b c d out
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MT5	out	d	net39	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT7	net39	c	gnd!	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT6	gnd!	b	net43	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT4	net43	a	out	gnd!	nfet	L=0.12U	W=1.08U
+ wt=1.08e-06 rf=0 nrs=0.21256 nrd=0.21256 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT2	net58	d	out	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT3	out	c	net58	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT1	net58	b	vdd!	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT0	vdd!	a	net58	vdd!	pfet	L=0.12U	W=2.28U
+ wt=2.28e-06 rf=0 nrs=0.098434 nrd=0.098434 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
*
*
*       CAPACITOR CARDS
*
*
C1	vdd!	gnd!	1.94474E-16
C2	a	gnd!	5.29056E-16
C3	b	gnd!	6.27195E-16
C4	c	gnd!	5.96896E-16
C5	d	gnd!	4.78059E-16
C6	out	gnd!	7.67789E-16
C7	avC11	gnd!	1.30661E-17
C8	net58	gnd!	5.36015E-16
*
*
.ENDS aoi22
*
