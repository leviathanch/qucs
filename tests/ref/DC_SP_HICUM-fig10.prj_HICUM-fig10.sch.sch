<Qucs Schematic 0.0.20>
<Properties>
  <DataDisplay=HICUM-fig10.dpl>
  <DataSet=HICUM-fig10.dat>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
  <OpenDisplay=0>
  <PosX=0>
  <PosY=15>
  <RunScript=0>
  <Script=HICUM-fig10.m>
  <ViewScale=1>
  <ViewX1=-54>
  <ViewX2=800>
  <ViewY1=-19>
  <ViewY2=800>
  <showFrame=0>
</Properties>
<Symbol>
</Symbol>
<Components>
    <Vdc V1 1 70 230 18 -26 0 1 "0.9 V" 1>
    <GND * 5 400 270 0 0 0 0>
    <IProbe Ib 1 300 170 -26 16 0 0>
    <IProbe Ic 1 450 110 -26 16 1 2>
    <.DC DC1 1 80 10 0 33  0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0 "" 1>
    <Pac P1 1 150 230 18 -26 0 1 "1" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
    <Pac P2 1 550 210 -84 -26 1 1 "2" 1 "50 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
    <Vdc V2 1 630 220 18 -26 0 1 "2 V" 1>
    <Eqn Eqn1 1 100 300 -25 13 0 0 "NFmin=10*log10(Fmin)" 1 "NF=10*log10(F)" 1 "yes" 0>
</Components>
<Wires>
<70 110 70 200 "" 0 0 0 "">
<520 60 520 80 "" 0 0 0 "">
<70 260 70 270 "" 0 0 0 "">
<70 270 150 270 "" 0 0 0 "">
<150 270 400 270 "" 0 0 0 "">
<150 260 150 270 "" 0 0 0 "">
<70 110 210 110 "" 0 0 0 "">
<210 110 210 140 "" 0 0 0 "">
<150 170 150 200 "" 0 0 0 "">
<150 170 180 170 "" 0 0 0 "">
<400 270 460 270 "" 0 0 0 "">
<460 270 550 270 "" 0 0 0 "">
<460 170 460 270 "" 0 0 0 "">
<430 170 460 170 "" 0 0 0 "">
<400 200 400 270 "" 0 0 0 "">
<400 110 400 140 "" 0 0 0 "">
<400 110 420 110 "" 0 0 0 "">
<480 110 490 110 "" 0 0 0 "">
<330 170 370 170 "" 0 0 0 "">
<240 170 270 170 "" 0 0 0 "">
<550 240 550 270 "" 0 0 0 "">
<550 110 550 180 "" 0 0 0 "">
<550 270 630 270 "" 0 0 0 "">
<630 250 630 270 "" 0 0 0 "">
<520 60 630 60 "" 0 0 0 "">
<630 60 630 190 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 260 682 361 162 1 #c0c0c0 1 10 1 1 1 1e+11 1 -2.40234 20 40 1 -1 1 1 0 0 0 "" "" "" "0">
	<"NFmin" #0000ff 0 3 0 5 0>
	<"NF" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 360 10 13 #000000 0 "Verilog Report, Figure 10 - AC simulation HICUM/L2 v2.1">
</Paintings>
