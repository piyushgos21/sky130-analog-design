# Week 2: NMOS Current Mirror

## Circuit

- M1, M2: sky130\_fd\_pr\_\_nfet\_01v8, W = 2, L = 1

- Iref = 10 µA, VDD = 1.8 V

- Sweep: Vout 0 to 1.8 V, 10 mV step

## Results (L = 1)

- Iout at Vout = 0.5 V: -9.70626 \* 10^-6 A

- Iout at Vout = 1.0 V: -1.01668 \* 10^-5 A

- Iout at Vout = 1.8 V: -1.06368 \* 10^-5 A

- Iout/Iref at 1.0 V: 1.016675

- Compliance voltage (Iout = 9 µA): 0.225692 V

- Vout where Iout = Iref (v\_match): 0.782976 V

- Output resistance ro: 1.702091 \* 10^6 Ohms

## Results (L = 0.15)

- Iout at Vout = 0.5 V: -8.06833 \* 10^-6 A

- Iout at Vout = 1.0 V: -1.23693 \* 10^-5 A

- Iout at Vout = 1.8 V: -1.93160 \* 10^-5 A

- Iout/Iref at 1.0 V: 1.236926

- Compliance voltage: N/A (no clear knee)

- Vout where Iout = Iref (v\_match): 0.724716 V

- Output resistance ro: 1.151621 \* 10^5 Ohms

## Plots

- plots/mirror\_L1\_iout\_vs\_vout.svg

- plots/mirror\_L015\_iout\_vs\_vout.svg

## Observations

- Iout is negative because of the direction ngspice measures current through the Vout source, but only the magnitude matters.

- Longer L gives a much more accurate mirror. At L = 1, |Iout| stays between 9.71 and 10.64 µA (-3% to +6% of Iref) across Vout = 0.5 to 1.8 V. At L = 0.15 it swings from 8.07 to 19.32 µA (-19% to +93%).

- Output resistance (1.0 to 1.8 V slope) is 1.70 MOhm at L = 1 vs 115 kOhm at L = 0.15, about 15x higher. Channel-length modulation alone predicts about 6.7x (the L ratio), so the extra is likely short-channel effects such as DIBL at L = 0.15.

- Iout = Iref at Vout = 0.783 V (L = 1) and 0.725 V (L = 0.15). This should be where M2's Vds equals M1's Vds (M1 is diode-connected, so Vds = Vgs). Below that voltage Iout < Iref, above it Iout > Iref.

- L = 1 compliance voltage is 0.226 V (Iout reaches 90% of Iref), so M2 needs about 0.23 V of headroom to act as a current source. At L = 0.15 there is no clear knee because Iout keeps rising, so no compliance voltage could be extracted.

- Trade-off: L = 1 gives accuracy and high ro but costs area. L = 0.15 is compact but has poor accuracy over this Vout range.
EOF
