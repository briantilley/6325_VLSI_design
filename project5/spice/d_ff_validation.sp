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
+	0ns 1.2v
+	19.8754ns 1.2v
+	19.9254ns 0v
+	40ns 0v
+ )

* reset
vr_in R gnd! pwl(
+	0ns 1.2v
+	2ns 1.2v
+	2.05ns 0v
+	40ns 0v
+ )

* clock (transition ends at multiples of 5ns)
vc_in clk gnd! pulse(0v 1.2v 4.95ns 50ps 50ps 4.9ns 10ns)

* load capacitance
cout Q gnd! 80f

* analysis
.tran 1ps 40ns

******************************** MEASUREMENTS ********************************

* t_su latching in 0
.measure tran t_su_0 trig v(D) val=0.6v td=16ns fall=1
+	targ v(clk) val=0.6v td=16ns fall=1

* t_clk_Q to verify successful latch
.measure tran t_clk_Q trig v(clk) val=0.6v td=16ns fall=1
+	targ v(Q) val=0.6v td=16ns fall=1

* t_delay to find optimal delay time
.measure t_delay param='t_su_0+t_clk_Q'

.end
