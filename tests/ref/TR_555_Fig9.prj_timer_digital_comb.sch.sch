<Qucs Schematic 0.0.21-dev>
<Properties>
  <View=-2,52,929,455,1.16971,0,0>
  <Grid=5,5,0>
  <DataSet=timer_digital_comb.dat>
  <DataDisplay=timer_digital_comb.dpl>
  <OpenDisplay=1>
  <Script=timer_digital_comb.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <Line -20 -70 60 0 #000080 2 1>
  <Line -20 70 60 0 #000080 2 1>
  <Line -20 -70 0 140 #000080 2 1>
  <Text -10 -60 12 #000000 0 "DIGITAL\nCOMB\nLOGIC">
  <Line -30 20 10 0 #000080 2 1>
  <.PortSym -30 20 2 0>
  <Line 40 40 10 0 #000080 2 1>
  <.PortSym 50 40 5 180>
  <Line -30 40 10 0 #000080 2 1>
  <.PortSym -30 40 3 0>
  <.PortSym -30 0 1 0>
  <Line -30 0 10 0 #000080 2 1>
  <.PortSym 50 0 4 180>
  <Line 40 -70 0 140 #000080 2 1>
  <Line 40 0 10 0 #000080 2 1>
  <Text -15 -5 12 #000000 0 "Reset">
  <Text -15 15 12 #000000 0 "Thresh">
  <Text -15 35 12 #000000 0 "Trig">
  <Text 30 -5 12 #000000 0 "Q">
  <Text 20 35 12 #000000 0 "QB">
  <.ID -15 74 SUB>
</Symbol>
<Components>
  <Port P_trig 1 280 340 -23 12 0 0 "3" 0 "analog" 0>
  <Port P_tresh 1 115 270 -23 12 0 0 "2" 0 "analog" 0>
  <GND * 5 610 250 0 0 0 0>
  <Port P_Q 1 630 120 4 -28 0 2 "4" 0 "analog" 0>
  <GND * 5 580 390 0 0 0 0>
  <Inv Y5 1 715 190 -26 27 0 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <Port P_QB 1 835 190 4 -28 0 2 "5" 0 "analog" 0>
  <GND * 5 830 270 0 0 0 0>
  <Port P_reset 1 65 170 -23 12 0 0 "1" 0 "analog" 0>
  <GND * 5 410 260 0 0 0 0>
  <GND * 5 190 240 0 0 0 0>
  <R R1 1 160 170 -26 15 0 0 "1k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R5 1 380 180 -26 15 0 0 "1k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 550 330 -26 15 0 0 "1k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R2 1 580 190 -26 15 0 0 "1k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R4 1 775 190 -26 15 0 0 "1k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Inv Y4 1 100 170 -26 27 0 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <OR Y1 1 320 180 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <NOR Y3 1 510 190 -26 27 0 0 "2" 0 "1 V" 0 "0" 0 "10" 0 "DIN40900" 0>
  <NOR Y2 1 490 330 -26 27 0 0 "2" 0 "1 V" 0 "5 ns" 0 "10" 0 "DIN40900" 0>
  <C C1 1 190 210 17 -26 0 1 "0.5nF" 1 "" 0 "neutral" 0>
  <C C5 1 410 225 17 -26 0 1 "0.5nF" 1 "" 0 "neutral" 0>
  <C C4 1 830 230 17 -26 0 1 "5nF" 1 "" 0 "neutral" 0>
  <C C3 1 580 360 17 -26 0 1 "0.09nF" 1 "" 0 "neutral" 0>
  <C C2 1 610 220 17 -26 0 1 "0.5nF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <280 340 460 340 "" 0 0 0 "">
  <610 190 630 190 "" 0 0 0 "">
  <685 190 685 285 "" 0 0 0 "">
  <460 285 685 285 "" 0 0 0 "">
  <460 285 460 320 "" 0 0 0 "">
  <630 190 685 190 "" 0 0 0 "">
  <630 120 630 190 "" 0 0 0 "">
  <580 255 580 330 "" 0 0 0 "">
  <805 190 830 190 "" 0 0 0 "">
  <830 190 835 190 "" 0 0 0 "">
  <830 190 830 200 "" 0 0 0 "">
  <830 260 830 270 "" 0 0 0 "">
  <190 170 290 170 "" 0 0 0 "">
  <290 190 290 270 "" 0 0 0 "">
  <115 270 290 270 "" 0 0 0 "">
  <65 170 70 170 "" 0 0 0 "">
  <540 190 550 190 "" 0 0 0 "">
  <480 200 480 255 "" 0 0 0 "">
  <480 255 580 255 "" 0 0 0 "">
  <410 180 480 180 "" 0 0 0 "">
  <190 170 190 180 "" 0 0 0 "">
  <410 255 410 260 "" 0 0 0 "">
  <410 180 410 195 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
