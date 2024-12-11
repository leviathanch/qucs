<Qucs Schematic 0.0.20>
<Properties>
  <DataDisplay=Spiral_BPF.dpl>
  <DataSet=Spiral_BPF.dat>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
  <OpenDisplay=1>
  <PosX=0>
  <PosY=60>
  <RunScript=0>
  <Script=Spiral_BPF.m>
  <ViewScale=1.00128>
  <ViewX1=-24>
  <ViewX2=864>
  <ViewY1=-54>
  <ViewY2=790>
  <showFrame=0>
</Properties>
<Symbol>
</Symbol>
<Components>
    <C C1 1 180 340 17 -26 0 1 "195 fF" 1 "" 0 "neutral" 0>
    <C C2 1 290 260 -43 14 0 0 "155 fF" 1 "" 0 "neutral" 0>
    <SUBST Subst1 1 60 30 -30 24 0 0 "4.5" 1 "0.8 mm" 1 "35 um" 1 "2e-4" 1 "0.022e-6" 1 "0.15e-6" 1>
    <GND * 5 180 410 0 0 0 0>
    <GND * 5 400 410 0 0 0 0>
    <GND * 5 620 410 0 0 0 0>
    <GND * 5 730 410 0 0 0 0>
    <C C3 1 400 340 17 -26 0 1 "320 fF" 1 "" 0 "neutral" 0>
    <C C5 1 620 340 17 -26 0 1 "82 fF" 1 "" 0 "neutral" 0>
    <C C4 1 510 260 -26 10 0 0 "600 fF" 1 "" 0 "neutral" 0>
    <.AC AC1 1 220 500 0 43  0 0 "log" 1 "1 GHz" 1 "100 GHz" 1 "403" 1 "yes" 1 "" 1>
    <.DC DC1 1 410 500 0 42  0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0 "" 1>
    <Eqn Eqn1 1 440 590 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
    <Pac P2 1 730 340 18 -26 0 1 "2" 1 "50 Ohm" 1 "0 W" 1 "1 GHz" 0 "-273.15" 1>
    <Pac P1 1 30 300 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "-273.15" 1>
    <Vdc V1 1 30 380 18 -26 0 1 "1.1 V" 1>
    <GND * 5 30 410 0 0 0 0>
</Components>
<Wires>
<180 260 180 310 "" 0 0 0 "">
<180 260 260 260 "" 0 0 0 "">
<180 200 180 260 "" 0 0 0 "">
<180 200 260 200 "" 0 0 0 "">
<320 200 400 200 "" 0 0 0 "">
<320 260 400 260 "" 0 0 0 "">
<400 260 400 310 "" 0 0 0 "">
<400 200 400 260 "" 0 0 0 "">
<400 260 480 260 "" 0 0 0 "">
<540 260 620 260 "" 0 0 0 "">
<620 260 620 310 "" 0 0 0 "">
<620 370 620 410 "" 0 0 0 "">
<400 370 400 410 "" 0 0 0 "">
<180 370 180 410 "" 0 0 0 "">
<400 200 480 200 "" 0 0 0 "">
<540 200 620 200 "" 0 0 0 "">
<620 200 620 260 "" 0 0 0 "">
<730 370 730 410 "" 0 0 0 "">
<620 260 730 260 "" 0 0 0 "">
<730 260 730 310 "" 0 0 0 "">
<30 260 180 260 "" 0 0 0 "">
<30 260 30 270 "" 0 0 0 "">
<30 330 30 350 "" 0 0 0 "">
<730 260 730 260 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 610 500 12 #000000 0 "Cauer low-pass filter\n10GHz cutoff, PI-type,\nimpedance matching 50 Ohm">
</Paintings>
