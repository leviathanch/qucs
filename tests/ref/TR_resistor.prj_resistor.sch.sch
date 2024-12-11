<Qucs Schematic 0.0.20>
<Properties>
  <DataDisplay=resistor.dpl>
  <DataSet=resistor.dat>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
  <OpenDisplay=0>
  <PosX=0>
  <PosY=0>
  <RunScript=0>
  <Script=TR_resistor.m>
  <ViewScale=1>
  <ViewX1=0>
  <ViewX2=800>
  <ViewY1=0>
  <ViewY2=800>
  <showFrame=0>
</Properties>
<Symbol>
</Symbol>
<Components>
    <GND * 5 660 370 0 0 0 0>
    <.TR TR1 1 260 300 0 51  0 0 "lin" 1 "0" 1 "1 ms" 1 "101" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0 "" 1>
    <R R2 1 610 270 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
    <R R1 1 530 270 -26 15 0 0 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
    <Vac V1 1 450 320 18 -26 0 1 "10 V" 1 "1kHz" 0 "0" 0 "0" 0>
</Components>
<Wires>
<450 350 450 360 "" 0 0 0 "">
<450 360 660 360 "" 0 0 0 "">
<660 360 660 370 "" 0 0 0 "">
<660 270 660 360 "" 0 0 0 "">
<450 270 450 290 "" 0 0 0 "">
<450 270 500 270 "" 0 0 0 "">
<560 270 580 270 "" 0 0 0 "">
<640 270 660 270 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 430 590 240 160 1 #c0c0c0 1 00 1 0 0.0002 0.001 1 -0.12 0.1 0.12 1 -6 5 6 0 0 0 "" "" "" "0">
	<"Vin.Vt" #0000ff 0 3 0 0 0>
	<"Vout.Vt" #ff0000 0 3 0 0 1>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>
