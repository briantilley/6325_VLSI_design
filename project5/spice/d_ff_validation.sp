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
+	13.95ns 1.2v
+	14ns 0v
+	22ns 0v
+	22.05ns 1.2v
+	47ns 1.2v
+	47.05ns 0v
+	50ns 0v
+ )

* reset
vr_in R gnd! pwl(
+	0ns 1.2v
+	2.45ns 1.2v
+	2.5ns 0v
+	36ns 0v
+	36.05ns 1.2v
+	37.5ns 1.2v
+	37.55ns 0v
+	41ns 0v
+	41.05ns 1.2v
+	42.5ns 1.2v
+	42.55ns 0v
+	50ns 0v
+ )

* clock (transitions end at multiples of 5ns)
vc_in clk gnd! pulse(0v 1.2v 4.95ns 50ps 50ps 4.9ns 10ns)

* load capacitance
cout Q gnd! 80f

* analysis
.tran 1ps 50ns

.end
