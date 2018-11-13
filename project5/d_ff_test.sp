* example HSPICE setup file

* transistor model and d_ff cell netlist
.include model013.lib
.include d_ff.sp

.global vdd! gnd!
.option post runlvl=5

* instantiate d flip-flop
xut D R clk Q d_ff

* voltage source
vdd vdd! gnd! 1.2v

* data
vd_in D gnd! pwl(
+ 0ns 0v
+ 5ns 0v
+ 5.05ns 1.2v
+ 25ns 1.2v
+ 25.05ns 0v
+ 41ns 0v
+ 41.05ns 1.2v
+ 47ns 1.2v
+ 47.05ns 0v
+ 51ns 0v
+ 51.05ns 1.2v
+ 61ns 1.2v
+ 61.05ns 0v
+ 67ns 0v
+ 67.05ns 1.2v
+ 100ns 1.2v
+ )

* reset
vr_in R gnd! pwl(
+ 0ns 1.2v
+ 2ns 1.2v
+ 2.05ns 0v
+ 71ns 0v
+ 71.05ns 1.2v
+ 100ns 1.2v
+ )

* clock
vc_in clk gnd! pulse(0v 1.2v 4.9ns 50ps 50ps 4.9ns 10ns)

* load capacitance
cout Q gnd! 80f

* analysis
.tran 10ps 100ns

* ******************************** MEASUREMENTS ********************************

* t_su latching in 1
.measure tran t_su_1 trig v(D) val=0.6 cross=1 targ v(clk) val=0.6 cross=1

* t_su latching in 0
.measure tran t_su_0 trig v(D) val=0.6 cross=1 targ v(clk) val=0.6 cross=1

* t_hold latching in 1
.measure tran t_hld_1 trig v(D) val=0.6 cross=1 targ v(clk) val=0.6 cross=1

* t_hold latching in 0
.measure tran t_hld_0 trig v(D) val=0.6 cross=1 targ v(clk) val=0.6 cross=1

* t_clk->Q
.measure tran t_clk_Q trig v(clk) val=0.6 cross=1 targ v(Q) val=0.6 cross=1

* t_D
.measure t_d_0 param='t_su_0+t_clk_Q'
.measure t_d_1 param='t_su_1+t_clk_Q'

.end