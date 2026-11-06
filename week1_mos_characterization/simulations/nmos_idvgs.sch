v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 240 -250 240 -160 {lab=#net1}
N 240 -250 320 -250 {lab=#net1}
N 240 -100 240 -40 {lab=0}
N 240 -40 380 -40 {lab=0}
N 470 -300 470 -170 {lab=#net2}
N 360 -300 470 -300 {lab=#net2}
N 360 -300 360 -280 {lab=#net2}
N 470 -110 470 -40 {lab=0}
N 380 -40 470 -40 {lab=0}
N 360 -220 360 -140 {lab=0}
N 360 -140 380 -140 {lab=0}
N 380 -140 380 -40 {lab=0}
N 360 -250 420 -250 {lab=0}
N 420 -250 420 -190 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 340 -250 0 0 {name=M2
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {vsource.sym} 240 -130 0 0 {name=Vgs value=0.9 savecurrent=false}
C {vsource.sym} 470 -140 0 0 {name=Vds value=1.8 savecurrent=false}
C {gnd.sym} 380 -40 0 0 {name=l5 lab=0}
C {code_shown.sym} 570 -190 0 0 {name=s3 only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.dc Vgs 0 1.8 0.01
.control 
run 
plot -i(Vds) 
plot sqrt(-i(Vds))
plot deriv(-i(Vds))
.endc
"}
C {gnd.sym} 420 -190 0 0 {name=l6 lab=0}
