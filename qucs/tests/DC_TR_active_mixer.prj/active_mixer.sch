<Qucs Schematic 0.0.4>
<Properties>
  <View=-17,0,817,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=active_mixer.dat>
  <DataDisplay=active_mixer.dpl>
  <OpenDisplay=1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <_BJT T1 1 410 350 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "200" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0>
  <_BJT T3 1 470 270 -47 -26 1 2 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "200" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0>
  <_BJT T2 1 350 270 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "200" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0>
  <R R3 1 470 70 15 -26 0 1 "1.5k" 1 "26.85" 0 "european" 0>
  <R R4 1 570 70 15 -26 0 1 "100k" 1 "26.85" 0 "european" 0>
  <R R5 1 250 70 15 -26 0 1 "100k" 1 "26.85" 0 "european" 0>
  <R R2 1 350 70 15 -26 0 1 "1.5k" 1 "26.85" 0 "european" 0>
  <GND * 1 320 410 0 0 0 0>
  <GND * 1 410 410 0 0 0 0>
  <Tr Tr1 1 180 240 -29 37 0 0 "1" 1>
  <GND * 1 90 100 0 0 0 0>
  <R R8 1 120 210 -26 -43 1 0 "50 Ohm" 1 "26.85" 0 "european" 0>
  <GND * 1 90 270 0 0 0 0>
  <GND * 1 90 410 0 0 0 0>
  <Vdc V2 1 90 70 18 -26 0 1 "10 V" 1>
  <.DC DC1 1 530 300 0 33 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0>
  <.TR TR1 1 530 360 0 51 0 0 "lin" 1 "0" 1 "1 ms" 1 "300" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0>
  <Eqn Eqn1 1 610 180 -19 13 0 0 "Output=pos.Vt-neg.Vt" 1 "yes" 0>
  <Vac LO 1 90 240 -67 -26 1 1 "0.5 V" 1 "10 kHz" 1 "0" 0>
  <Idc I2 1 320 380 18 -26 0 1 "2 uA" 1>
  <Iac RF 1 90 380 -60 -26 1 1 "1 uA" 1 "1 kHz" 1 "0" 0>
</Components>
<Wires>
  <350 300 410 300 "" 0 0 0>
  <410 300 470 300 "" 0 0 0>
  <410 300 410 320 "" 0 0 0>
  <570 20 570 40 "" 0 0 0>
  <470 20 570 20 "" 0 0 0>
  <470 20 470 40 "" 0 0 0>
  <350 20 470 20 "" 0 0 0>
  <350 20 350 40 "" 0 0 0>
  <250 20 350 20 "" 0 0 0>
  <250 20 250 40 "" 0 0 0>
  <350 100 350 240 "pos" 380 150 79>
  <250 100 250 270 "" 0 0 0>
  <250 270 320 270 "" 0 0 0>
  <570 100 570 210 "" 0 0 0>
  <500 270 570 270 "" 0 0 0>
  <470 100 470 240 "neg" 500 150 80>
  <410 380 410 410 "" 0 0 0>
  <90 20 90 40 "" 0 0 0>
  <90 270 150 270 "" 0 0 0>
  <90 20 250 20 "" 0 0 0>
  <90 350 320 350 "" 0 0 0>
  <570 210 570 270 "" 0 0 0>
  <210 210 570 210 "" 0 0 0>
  <210 270 250 270 "" 0 0 0>
  <320 350 380 350 "" 0 0 0>
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 100 460 12 #000000 0 "Active, single-balanced mixer: In the output signal, one\ncan see a strong carrier (LO signal).">
</Paintings>
