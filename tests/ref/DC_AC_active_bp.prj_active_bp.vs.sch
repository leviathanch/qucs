<Qucs Schematic 0.0.21-dev>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=active_bp.dat>
  <DataDisplay=active_bp.dpl>
  <OpenDisplay=1>
  <Script=active_bp.m>
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
  <OpAmp OP1 1 370 160 0 0 0 0 "1e6" 1 "15 V" 0>
  <GND * 5 300 180 0 0 0 0>
  <GND * 5 180 260 0 0 0 0>
  <GND * 5 60 260 0 0 0 0>
  <Vac V1 1 60 230 0 0 0 1 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0>
  <R R3 1 130 140 0 0 0 0 "390" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 180 230 0 0 0 1 "5.6k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <C C1 1 230 140 0 0 0 0 "47n" 1 "" 0 "neutral" 0>
  <C C2 1 180 90 0 0 0 1 "47n" 1 "" 0 "neutral" 0>
  <R R1 1 300 90 0 0 0 1 "3.9k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.AC AC1 1 460 110 0 0 0 0 "log" 1 "0.1 kHz" 1 "100 kHz" 1 "200" 1 "no" 0>
  <.DC DC1 1 460 250 0 0 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <160 140 180 140 "net1" 160 140 0 "">
  <180 140 200 140 "net2" 180 140 0 "">
  <180 120 180 140 "net3" 180 120 0 "">
  <180 140 180 200 "net4" 180 140 0 "">
  <260 140 300 140 "net5" 260 140 0 "">
  <300 140 340 140 "net6" 300 140 0 "">
  <300 120 300 140 "net7" 300 120 0 "">
  <300 180 340 180 "net8" 300 180 0 "">
  <60 140 100 140 "net9" 60 140 0 "">
  <60 140 60 200 "net10" 60 140 0 "">
  <300 50 410 50 "net11" 300 50 0 "">
  <300 50 300 60 "net12" 300 50 0 "">
  <410 50 410 160 "Output" 410 50 0 "">
  <180 50 300 50 "net13" 180 50 0 "">
  <180 50 180 60 "net14" 180 50 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
