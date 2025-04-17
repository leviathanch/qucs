<Qucs Schematic 0.0.21-dev>
<Properties>
  <View=0,0,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=short_circuit.dat>
  <DataDisplay=short_circuit.dpl>
  <OpenDisplay=1>
  <Script=short_circuit.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym 40 20 2 0>
  <.PortSym 40 60 1 0>
</Symbol>
<Components>
  <Port P2 1 400 180 0 0 0 2 "2" 1 "analog" 0>
  <Port P1 1 180 180 0 0 1 0 "1" 1 "analog" 0>
  <GND * 5 380 360 0 0 0 0>
  <C C1 1 380 280 0 0 0 1 "1 pF" 1 "" 0 "neutral" 0>
  <Sub SC 1 310 180 0 0 0 0 "nest2.sch" 0>
  <R R1 1 230 180 0 0 0 0 "0 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
</Components>
<Wires>
  <380 180 400 180 "net1" 380 180 0 "">
  <380 180 380 250 "net2" 380 180 0 "">
  <380 310 380 360 "net3" 380 310 0 "">
  <340 180 380 180 "net4" 340 180 0 "">
  <180 180 200 180 "net5" 180 180 0 "">
  <260 180 280 180 "net6" 260 180 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
