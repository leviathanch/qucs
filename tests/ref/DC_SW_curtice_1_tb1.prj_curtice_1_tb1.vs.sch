<Qucs Schematic 0.0.21-dev>
<Properties>
  <View=-10,-14,1075,849,0.9631,0,0>
  <Grid=10,10,1>
  <DataSet=curtice_1_tb1.dat>
  <DataDisplay=curtice_1_tb1.dpl>
  <OpenDisplay=0>
  <Script=curtice_1_tb1.m>
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
  <Vdc V2 1 80 160 0 0 0 1 "Vgs" 1>
  <GND * 5 80 190 0 0 0 0>
  <.DC DC1 1 40 250 0 0 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Eqn1 1 70 390 0 0 0 0 "y=1" 1 "yes" 0>
  <.SW SW1 1 380 220 0 0 0 0 "DC1" 1 "lin" 1 "R1" 1 "Vds" 1 "-10" 1 "41" 1>
  <.SW SW2 1 540 220 0 0 0 0 "SW1" 1 "lin" 1 "R1" 1 "Vgs" 1 "-5" 1 "6" 1>
  <GND * 5 380 160 0 0 0 0>
  <Vdc V1 1 380 120 0 0 0 1 "Vds" 1>
  <GND * 5 210 160 0 0 0 0>
  <IProbe Pr1 1 320 60 0 0 1 2>
  <Sub Curtice 1 210 120 0 0 0 0 "curtice_1.sch" 0 "0" 1 "0" 1 "0" 1 "10e10" 1 "1e-15" 1 "1e-15" 1 "1e-15" 1 "10f" 1 "1" 1 "0" 1 "1.11" 1 "3m" 1 "40m" 1 "-6" 1 "27" 1 "0.8" 1 "300f" 1 "10p" 1 "1m" 1 "300f" 1 "300f" 1 "27" 1>
</Components>
<Wires>
  <380 150 380 160 "net1" 380 150 0 "">
  <380 60 380 90 "net2" 380 60 0 "">
  <210 60 290 60 "net3" 210 60 0 "">
  <80 120 80 130 "net4" 80 120 0 "">
  <80 120 180 120 "net5" 80 120 0 "">
  <210 60 210 80 "net6" 210 60 0 "">
  <350 60 380 60 "net7" 350 60 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
