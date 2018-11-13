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
+ 10ns 0v
+ 10.05ns 1.2v
+ 30ns 1.2v
+ 30.05ns 0v
+ 46ns 0v
+ 46.05ns 1.2v
+ 52ns 1.2v
+ 52.05ns 0v
+ 56ns 0v
+ 56.05ns 1.2v
+ 66ns 1.2v
+ 66.05ns 0v
+ 72ns 0v
+ 72.05ns 1.2v
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
.measure tran t_su_1 trig v(D) val=0.6v rise=1 targ v(clk) val=0.6v rise=1

* t_su latching in 0
.measure tran t_su_0 trig v(D) val=0.6v fall=1 targ v(clk) val=0.6v rise=1

* t_hold latching in 1
.measure tran t_hld_1 trig v(D) val=0.6v rise=1 targ v(clk) val=0.6v rise=1

* t_hold latching in 0
.measure tran t_hld_0 trig v(D) val=0.6v fall=1 targ v(clk) val=0.6v rise=1

* t_clk->Q
.measure tran t_clk_Q trig v(clk) val=0.6v rise=1 targ v(Q) val=0.6v cross=1

* t_D
.measure t_d_0 param='t_su_0+t_clk_Q'
.measure t_d_1 param='t_su_1+t_clk_Q'

.end