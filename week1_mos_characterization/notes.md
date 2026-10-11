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

!\[NMOS Id vs Vds, L=0.15]<img width="887" height="682" alt="nmos_id_vs_vds_L015" src="https://github.com/user-attachments/assets/1bfccd71-770d-4fcc-a227-0ea56c9d705d" />

!\[NMOS Id vs Vds, L=1]<img width="892" height="682" alt="nmos_id_vs_vds_L1" src="https://github.com/user-attachments/assets/801f5f84-aa8a-4d50-a8f7-9b2b874ab382" />


!\[NMOS Id vs Vgs]<img width="885" height="677" alt="nmos_id_vs_vgs" src="https://github.com/user-attachments/assets/2f47f487-a4cb-4828-8277-464ddfcb12fe" />

!\[NMOS sqrt(Id) vs Vgs]<img width="890" height="686" alt="nmos_sqrt_id_vs_vgs" src="https://github.com/user-attachments/assets/2dc2be5a-9bb9-452b-b1d7-a53120231b34" />

!\[NMOS gm vs Vgs]<img width="890" height="682" alt="nmos_gm_vs_vgs" src="https://github.com/user-attachments/assets/3306b9a2-a768-45cb-95a1-81b7471d6b74" />

!\[PMOS Id vs Vsd]<img width="892" height="677" alt="pmos_id_vs_vsd" src="https://github.com/user-attachments/assets/426bc297-60e9-4afd-8a12-3a002e2b8e7c" />

## What I learned

* Short-channel transistors give more current but worse output resistance. This means longer channels will be used where flat saturation curves would matter
* Vth and gm extracted from simulation are estimates, and the Vth value depends on the extraction method used
* The PMOS delivers less current than the NMOS at the same size, so PMOS devices usually need a larger W to match.



