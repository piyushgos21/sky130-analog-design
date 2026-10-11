# sky130-analog-design
Analog IC design in the open-source SkyWater 130nm flow: MOSFET characterization, current mirror, op-amp, PVT/Monte Carlo analysis, and layout with DRC/LVS using Xschem, ngspice, Magic, and Netgen.

## Progress
- **Week 1: MOS Characterization ** ([notes]
  (week1_mos_characterization/notes.md)): Simulated NMOS and PMOS I-V curves. NMOS
  Vth ≈ 0.33 V, gm ≈ 441 µS at Vgs = 1.o V (W/L = 1/0.15). This showed how a longer
  channel (L=1) gives flatter saturation curves (about 5% vs. 10% current rise across Vds).

  ![NMOS Id vs Vds, L=0.15]
  <img width="887" height="682" alt="nmos_id_vs_vds_L015" src="https://github.com/user-attachments/assets/b146526e-7ccd-40d6-a3b0-3afd49837444" />
