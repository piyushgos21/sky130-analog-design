# \# Week 1: MOS Characterization

Devices: SkyWater 130 nm `nfet\_01v8` and `pfet\_01v8`, W = 1 µm, typical (tt) corner.

Tools: Xschem, ngspice (open-source flow in IIC-OSIC-TOOLS).



\## NMOS (nfet\_01v8), W=1, L=0.15, Vds = 1.8V

* Vth (extrapolated from sqrt(Id)) - Using points 1.2V and 1.6V : 0.333316V estimate
* gm at Vgs = 1.0V: 440.7326 µS
* Peak ID at Vgs = 1.8 V, Vds = 1.8V : 500.9 µA
* In saturation (Vgs = 1.8 V), ID rises about 10% between Vds = 1.0V - 1.8V
* gm rises with Vgs and starts to level off at a higher Vgs (Refer to Gm vs Vgs plot)



\## Effect of changing channel length (Now L = 1 vs L = 0.15)

* Peak Id dropped from 500.9 µA to 127.1 µA (about 3.9X). Ideal W/L scaling predicts about 6.7x, so the short device would carry less current than the simple model suggests here

  * &#x20;Due to the short-channel effects
* Visibility: Saturation curves look flatter when L = 1: As Id rises about 5% between Vds = 1.0V - 1.8V , compared to about 10% when L = 0.15

  * In a short channel the drain voltage still changes the current, a longer channel just reduces that effect, giving higher output resistance



\##PMOS (W=1, L=0.15)

* Peak Id at Vsg = 1.8 V, Vsd = 1.8 V: 200.7 µA

  * About 40% of the NMOS peak, consistent with lower hole mobility
* Same curve shape as the NMOS , with a steeper saturation slope:

  * ID rises about 24% between Vsd = 1.0 V - 1.8V



\## Plots

!\[NMOS Id vs Vds, L=0.15](plots/nmos_id_vs_vds_L015.png)

!\[NMOS Id vs Vds, L=1](plots/nmos_id_vs_vds_L1.png)

!\[NMOS Id vs Vgs](plots/nmos_id_vs_vgs.png)

!\[NMOS sqrt(Id) vs Vgs](plots/nmos_sqrt_id_vs_vgs.png)

!\[NMOS gm vs Vgs](plots/nmos_gm_vs_vgs.png)

!\[PMOS Id vs Vsd](plots/pmos_id_vs_vsd.png)

## What I learned

* Short-channel transistors give more current but worse output resistance. This means longer channels will be used where flat saturation curves would matter
* Vth and gm extracted from simulation are estimates, and the Vth value depends on the extraction method used
* The PMOS delivers less current than the NMOS at the same size, so PMOS devices usually need a larger W to match.



