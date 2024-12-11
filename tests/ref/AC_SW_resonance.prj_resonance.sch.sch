<Qucs Schematic 0.0.20>
<Properties>
  <DataDisplay=resonance.dpl>
  <DataSet=resonance.dat>
  <OpenDisplay=1>
  <PosX=0>
  <PosY=0>
  <ViewScale=1>
  <ViewX1=0>
  <ViewX2=800>
  <ViewY1=0>
  <ViewY2=800>
</Properties>
<Symbol>
</Symbol>
<Components>
    <Vac V1 1 120 150 18 -26 0 1 "1 V" 1 "1 GHz" 0 "0" 0 "0" 0>
    <GND * 5 320 240 0 0 0 0>
    <GND * 5 120 240 0 0 0 0>
    <R R1 1 320 90 15 -26 0 1 "R_par" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
    <C C1 1 320 210 17 -26 0 1 "2 pF" 1 "" 0 "neutral" 0>
    <L L1 1 320 150 10 -26 0 1 "13 nH" 1 "" 0>
    <.AC AC1 1 440 70 0 33  0 0 "lin" 1 "0.9 GHz" 1 "1.1 GHz" 1 "150" 1 "no" 0>
</Components>
<Wires>
<120 180 120 240 "" 0 0 0 "">
<120 60 320 60 "" 0 0 0 "">
<120 60 120 120 "" 0 0 0 "">
<320 180 320 180 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 100 290 12 #000000 0 "The voltage overshot strongly depends on the quality\nof the resonance circuit.">
</Paintings>
