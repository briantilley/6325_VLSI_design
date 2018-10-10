$example HSPICE setup file

$transistor model
.include "~/cad/spice/model013.lib"
.include invlvs.sp

.global vdd! gnd!
.option post runlvl=5

xi in out inv

vdd vdd! gnd! 1.2v
vin in gnd! pwl(0ns 1.2v 1ns 1.2v 1.05ns 0v 6ns 0v 6.05ns 1.2v 12ns 1.2v)
cout out gnd! 100f

$transient analysis
.tr 100ps 12ns

.measure tran trise trig v(in) val=0.6v fall=1 targ v(out) val=0.6v rise=1 $measure tlh at 0.6v
.measure tran tfall trig v(in) val=0.6v rise=1 targ v(out) val=0.6v fall=1 $measure tpl at 0.6v
.measure tavg param = '(trise+tfall)/2' $calculate average delay
.measure tdiff param='abs(trise-tfall)' $calculate delay difference
.measure delay param='max(trise,tfall)' $calculate worst case delay

$ method 1
.measure tran iavg avg i(vdd) from=0 to=10n $average current in one clock cycle
.measure energy param='1.2*iavg*10n' $calculate energy in one clock cycle
.measure edp1 param='abs(delay*energy)'

.end
