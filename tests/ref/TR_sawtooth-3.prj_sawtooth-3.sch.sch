<Qucs Schematic 0.0.21-dev>
<Properties>
  <View=0,0,1170,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=sawtooth-3.dat>
  <DataDisplay=sawtooth-3.dpl>
  <OpenDisplay=0>
  <Script=sawtooth-3.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Titel>
  <FrameText1=Gezeichnet von:>
  <FrameText2=Datum:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <R RfT1 1 360 140 -61 -25 1 1 "1000" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R RfL2 1 130 140 -54 -23 1 1 "20" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <_BJT T_BC817_16_2 1 130 330 -108 -26 1 2 "npn" 0 "4.04n" 0 "1" 0 "1" 0 "0.273" 0 "0.675" 0 "121" 0 "20" 0 "6.86n" 0 "2" 0 "0" 0 "2" 0 "342" 0 "4" 0 "0" 0 "0" 0 "90.7m" 0 "0.227" 0 "0.907" 0 "107p" 0 "1.1" 0 "0.5" 0 "34.7p" 0 "0.3" 0 "0.3" 0 "1" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "651p" 0 "0" 0 "0" 0 "0" 0 "111n" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <R RfL1 1 440 140 15 -26 0 1 "20" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 440 360 0 0 0 0>
  <_BJT T_BC817_16_1 1 440 330 8 -26 0 0 "npn" 0 "4.04n" 0 "1" 0 "1" 0 "0.273" 0 "0.675" 0 "121" 0 "20" 0 "6.86n" 0 "2" 0 "0" 0 "2" 0 "342" 0 "4" 0 "0" 0 "0" 0 "90.7m" 0 "0.227" 0 "0.907" 0 "107p" 0 "1.1" 0 "0.5" 0 "34.7p" 0 "0.3" 0 "0.3" 0 "1" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "651p" 0 "0" 0 "0" 0 "0" 0 "111n" 0 "26.85" 0 "0" 0 "1" 0 "1" 0 "0" 0 "1" 0 "1" 0 "0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <R RfT2 1 210 140 15 -26 0 1 "1000" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C Cp2 1 170 230 -24 17 0 0 "100nF" 1 "" 0 "neutral" 0>
  <C Cp1 1 400 230 -23 17 0 0 "100nF" 1 "" 0 "neutral" 0>
  <Vdc V1 1 560 140 18 -26 0 1 "4 V" 1>
  <.TR Transient 1 650 120 0 73 0 0 "lin" 0 "0" 1 "500 us" 1 "501" 1 "Trapezoidal" 1 "2" 0 "1 ns" 0 "1e-10" 1 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <130 110 210 110 "" 0 0 0 "">
  <160 300 360 300 "" 0 0 0 "">
  <160 300 160 330 "" 0 0 0 "">
  <130 360 440 360 "" 0 0 0 "">
  <130 170 130 230 "" 0 0 0 "">
  <360 170 360 230 "" 0 0 0 "">
  <360 110 440 110 "" 0 0 0 "">
  <440 170 440 230 "" 0 0 0 "">
  <210 110 360 110 "" 0 0 0 "">
  <210 170 210 230 "" 0 0 0 "">
  <210 330 410 330 "" 0 0 0 "">
  <130 230 130 300 "" 0 0 0 "">
  <130 230 140 230 "" 0 0 0 "">
  <210 230 210 330 "" 0 0 0 "">
  <200 230 210 230 "" 0 0 0 "">
  <360 230 360 300 "" 0 0 0 "">
  <360 230 370 230 "" 0 0 0 "">
  <440 230 440 300 "" 0 0 0 "">
  <430 230 440 230 "" 0 0 0 "">
  <560 170 560 360 "" 0 0 0 "">
  <440 360 560 360 "" 0 0 0 "">
  <440 110 560 110 "" 0 0 0 "">
  <360 170 360 170 "VfT2" 310 180 0 "">
  <130 110 130 110 "Vf" 90 70 0 "">
  <210 170 210 170 "VfT1" 230 180 0 "">
</Wires>
<Diagrams>
  <Rect 120 565 327 155 3 #c0c0c0 1 00 1 0 0.0001 0.0005 1 -5 5 5 1 -1 1 1 315 0 225 "" "" "" "">
	<"VfT1.Vt" #ff0000 0 3 0 0 0>
	<"VfT2.Vt" #ff00ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 190 40 14 #000000 0 "Saw-Tooth Generator">
</Paintings>
