<Qucs Schematic 0.0.20>
<Properties>
  <DataDisplay=stab.dpl>
  <DataSet=stab.dat>
  <OpenDisplay=1>
  <PosX=20>
  <PosY=19>
  <ViewScale=1>
  <ViewX1=-20>
  <ViewX2=776>
  <ViewY1=-20>
  <ViewY2=596>
</Properties>
<Symbol>
</Symbol>
<Components>
    <GND * 5 650 120 0 0 0 0>
    <Vdc V1 1 650 90 18 -26 0 1 "15 V" 1>
    <IProbe Collector 1 470 170 -66 -26 0 3>
    <R R2 1 470 90 15 -26 0 1 "20 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
    <Vac V2 1 370 120 -26 -46 0 2 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0>
    <Diode D2 1 170 60 -72 -26 1 1 "1e-15 A" 0 "1" 0 "10 pF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
    <Diode D1 1 170 120 -72 -26 1 1 "1e-15 A" 0 "1" 0 "10 pF" 1 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
    <_BJT T2 1 220 150 8 -26 1 0 "pnp" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "300" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "30 pF" 1 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
    <GND * 5 50 460 0 0 0 0>
    <C C4 1 190 400 -26 17 0 0 "1 nF" 1 "" 0 "neutral" 0>
    <GND * 5 470 460 0 0 0 0>
    <GND * 5 650 460 0 0 0 0>
    <GND * 5 610 270 0 0 0 0>
    <C C3 1 580 360 -26 17 0 0 "1 nF" 1 "" 0 "neutral" 0>
    <L L1 1 470 320 10 -26 0 1 "100 nH" 1 "" 0>
    <Pac P1 1 50 430 18 -26 0 1 "1" 1 "50 Ohm" 1 "0" 1 "1 GHz" 0 "26.85" 0>
    <Pac P2 1 650 430 18 -26 0 1 "2" 1 "50 Ohm" 1 "0" 1 "1 GHz" 0 "26.85" 0>
    <_BJT T1 1 470 400 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "150" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "10 pF" 1 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
    <IProbe Basis 1 410 400 -26 16 0 0>
    <L L2 1 220 370 10 -26 0 1 "100 nH" 1 "" 0>
    <GND * 5 360 270 0 0 0 0>
    <R R3 1 220 310 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
    <GND * 5 170 210 0 0 0 0>
    <R R1 1 170 180 -80 -26 1 1 "20 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
    <Eqn Eqn1 1 550 140 -19 13 0 0 "LoopGain=output.v / input.v" 1 "LoopPhase=phase(output.v / input.v)" 1 "yes" 0>
    <.DC DC1 1 150 470 0 33  0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "" 1>
    <.AC AC1 1 310 450 0 33  0 0 "log" 1 "1 Hz" 1 "100 kHz" 1 "100" 1 "no" 0>
    <C C1 1 580 270 -26 -45 1 0 "0.1 uF" 1 "" 0 "neutral" 0>
    <C C2 1 330 270 -26 -45 1 0 "5 uF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
<170 150 190 150 "" 0 0 0 "">
<470 120 470 140 "" 0 0 0 "">
<470 30 470 60 "" 0 0 0 "">
<470 30 650 30 "" 0 0 0 "">
<650 30 650 60 "" 0 0 0 "">
<170 30 470 30 "" 0 0 0 "">
<220 120 340 120 "" 0 0 0 "">
<400 120 470 120 "" 0 0 0 "">
<50 400 160 400 "" 0 0 0 "">
<470 430 470 460 "" 0 0 0 "">
<470 350 470 360 "" 0 0 0 "">
<470 360 470 370 "" 0 0 0 "">
<470 360 550 360 "" 0 0 0 "">
<650 360 650 400 "" 0 0 0 "">
<610 360 650 360 "" 0 0 0 "">
<470 270 470 290 "" 0 0 0 "">
<470 270 550 270 "" 0 0 0 "">
<220 400 380 400 "" 0 0 0 "">
<220 180 220 270 "" 0 0 0 "">
<470 200 470 270 "" 0 0 0 "">
<220 270 220 280 "" 0 0 0 "">
<220 270 300 270 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 60 20 230 190 #000000 0 1 #c0c0c0 1 0>
  <Text 70 140 14 #00007f 90 "bias stabilisation">
  <Arrow 390 200 -20 -60 20 8 #ff0000 3 1 0>
  <Text 20 240 12 #000000 0 "Circuits of this kind are used to\nstabilize the bias of RF\ntransistors. But sometimes they\ntend to LF oscillations. This\nschematic shows how to\ndetermine the degree of stability\nby simulating magnitude and\nphase margin of the loop gain.\nResult: As a rule of thumb,\nit should be  C2 >> C1">
  <Text 360 200 12 #ff0000 0 "for measuring\nthe loop stability">
</Paintings>
