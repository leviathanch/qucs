<Qucs Schematic 0.0.21-dev>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=chargepump.dat>
  <DataDisplay=chargepump.dpl>
  <OpenDisplay=1>
  <Script=chargepump.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 5 110 260 0 0 0 0>
  <GND * 5 330 300 0 0 0 0>
  <GND * 5 220 280 0 0 0 0>
  <C C1 1 220 250 17 -26 0 1 "10 pF" 1 "" 0 "neutral" 0>
  <R R1 1 350 160 15 -26 0 1 "10k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <MOSFET T1 1 220 190 15 -88 0 0 "nfet" 0 "0.7 V" 1 "50e-6" 1 "0.96" 0 "0.5763 V" 0 "0.0" 1 "0.0 Ohm" 0 "0.0 Ohm" 0 "0.0 Ohm" 0 "0 A" 0 "1.0" 0 "3.5 um" 0 "5.5 um" 0 "0.5e-6" 0 "50e-9" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0 F" 0 "0.0 F" 0 "0.7 V" 0 "0.5" 0 "0.5" 0 "0.05e-9" 0 "0.33" 0 "0.0 ps" 0 "1e16" 0 "0.0" 0 "1" 0 "600.0" 0 "20" 0 "1" 0 "1" 0 "1e-4" 0 "1e-8" 0 "100p" 0 "100p" 0 "50u" 0 "50u" 0 "0.0" 0 "1.0" 0 "1.0" 0 "26.85" 0 "26.85" 0>
  <Vac V1 1 110 230 -72 -26 1 1 "5 V" 1 "10 MHz" 1 "0" 0 "0" 0>
  <Vac V3 1 330 270 18 -26 0 1 "-5 V" 1 "10 MHz" 1 "0" 0 "0" 0>
  <Vac V2 1 350 80 18 -26 0 1 "5 V" 1 "10 MHz" 1 "0" 0 "0" 0>
  <.TR TR1 1 60 30 0 51 0 0 "lin" 1 "0 ns" 1 "2 us" 1 "200" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <350 190 350 220 "" 0 0 0 "">
  <220 220 350 220 "" 0 0 0 "">
  <350 110 350 130 "" 0 0 0 "">
  <110 190 110 200 "" 0 0 0 "">
  <110 190 190 190 "Gate" 110 160 46 "">
  <330 190 330 240 "" 0 0 0 "">
  <240 190 330 190 "" 0 0 0 "">
  <220 40 350 40 "" 0 0 0 "">
  <350 40 350 50 "" 0 0 0 "">
  <220 40 220 160 "Drain" 250 70 50 "">
  <220 220 220 220 "Source" 140 240 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
