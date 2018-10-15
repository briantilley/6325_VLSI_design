*
*
*
*                       LINUX           Wed Oct 10 05:50:29 2018
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
.SUBCKT inverter in out
*
*
*  caps2d version: 10
*
*
*       TRANSISTOR CARDS
*
*
MT1	out	in	gnd!	gnd!	nfet	L=0.12U	W=0.48U
+ wt=1.1e-06 rf=0 nrs=0.208531 nrd=0.208531 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
MT0	out	in	vdd!	vdd!	pfet	L=0.12U	W=1.35U
+ wt=1.35e-06 rf=0 nrs=0.168582 nrd=0.168582 ngcon=1 nf=1 mSwitch=0 m=1 blockParasiticsBetween="PC sub" PWORIENT=1 PLORIENT=1
*
*
*       CAPACITOR CARDS
*
*
C1	vdd!	gnd!	1.0457E-16
C2	in	gnd!	4.63263E-16
C3	out	gnd!	2.00942E-16
*
*
.ENDS inverter
*
