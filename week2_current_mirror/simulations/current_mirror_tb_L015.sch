v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 100 -160 100 -100 {lab=0}
N 100 -280 100 -220 {lab=#net1}
N 100 -340 190 -340 {lab=#net2}
N 190 -370 190 -340 {lab=#net2}
N 190 -370 230 -370 {lab=#net2}
N 190 -340 190 -280 {lab=#net2}
N 190 -280 230 -280 {lab=#net2}
N 190 -340 220 -340 {lab=#net2}
N 220 -340 220 -320 {lab=#net2}
N 220 -320 270 -320 {lab=#net2}
N 270 -320 270 -310 {lab=#net2}
N 400 -400 400 -250 {lab=#net3}
N 270 -400 400 -400 {lab=#net3}
N 100 -100 400 -100 {lab=0}
N 400 -190 400 -100 {lab=0}
N 270 -250 290 -250 {lab=0}
N 290 -280 290 -250 {lab=0}
N 270 -280 290 -280 {lab=0}
N 270 -370 270 -340 {lab=0}
N 290 -280 350 -280 {lab=0}
N 350 -310 350 -280 {lab=0}
N 350 -310 360 -310 {lab=0}
N 360 -340 360 -310 {lab=0}
N 270 -340 360 -340 {lab=0}
C {sky130_fd_pr/nfet_01v8.sym} 250 -370 0 0 {name=M2
W=2
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
C {vsource.sym} 400 -220 0 0 {name=Vout value=0 savecurrent=false}
C {gnd.sym} 100 -100 0 0 {name=l5 lab=0}
C {code_shown.sym} 570 -190 0 0 {name=s3 only_toplevel=false 
value="
.lib /foss/pdks/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.dc Vout 0 1.8 0.01
.control 
run 
plot -i(Vout) 
.endc
"}
C {sky130_fd_pr/nfet_01v8.sym} 250 -280 0 0 {name=M1
W=2
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
C {isource.sym} 100 -310 2 0 {name=Iref value=10u}
C {vsource.sym} 100 -190 0 0 {name=VDD value=1.8 savecurrent=false}
C {gnd.sym} 360 -310 0 0 {name=l1 lab=0}
