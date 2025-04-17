<Qucs Schematic 0.0.21-dev>
<Properties>
  <View=53,-37,964,547,1.19539,0,0>
  <Grid=5,5,0>
  <DataSet=timmer_555.dat>
  <DataDisplay=timmer_555.dpl>
  <OpenDisplay=1>
  <Script=timer_555.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.PortSym 40 20 1 0>
  <.PortSym 40 60 3 0>
  <.PortSym 40 100 4 0>
  <.PortSym 40 140 5 0>
  <.PortSym 40 180 7 0>
  <.PortSym 40 220 8 0>
  <.PortSym 40 260 2 0>
  <.PortSym 40 300 6 0>
</Symbol>
<Components>
  <Port P_GND 1 820 300 0 0 1 2 "1" 1 "analog" 0>
  <Port P_OUTPUT 1 820 230 0 0 0 2 "3" 1 "analog" 0>
  <R R1 1 220 100 0 0 0 1 "5k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Port P_RESET 1 150 40 0 0 0 0 "4" 1 "analog" 0>
  <R R2 1 220 250 0 0 0 1 "5k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <R R3 1 220 400 0 0 0 1 "5k" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <Port P_CONTROL 1 150 200 0 0 0 0 "5" 1 "analog" 0>
  <Port P_DISCHARGE 1 820 360 0 0 1 2 "7" 1 "analog" 0>
  <Port P_VCC 1 220 30 0 0 0 3 "8" 1 "analog" 0>
  <Port P_TRIGGER 1 140 355 0 0 0 0 "2" 1 "analog" 0>
  <Port P_THRESH 1 120 140 0 0 0 0 "6" 1 "analog" 0>
  <Sub SUB 1 660 390 0 0 0 0 "timer_Discharge.sch" 0>
  <Sub SUB 1 535 200 0 0 0 0 "timer_digital_comb.sch" 0>
  <Sub SUB 1 730 230 0 0 0 0 "timer_amp.sch" 0>
  <Sub SUB 1 305 320 0 0 0 0 "timer_trig.sch" 0>
  <Sub SUB 1 285 170 0 0 0 0 "timer_thresh.sch" 0>
</Components>
<Wires>
  <690 260 690 300 "net1" 690 260 0 "">
  <690 300 760 300 "net2" 690 300 0 "">
  <760 300 820 300 "net3" 760 300 0 "">
  <760 300 760 480 "net4" 760 300 0 "">
  <220 280 220 300 "net5" 220 280 0 "">
  <220 130 220 200 "net6" 220 130 0 "">
  <220 200 220 220 "net7" 220 200 0 "">
  <150 200 220 200 "net8" 150 200 0 "">
  <220 30 220 70 "net9" 220 30 0 "">
  <220 430 560 430 "net10" 220 430 0 "">
  <560 300 560 430 "net11" 560 300 0 "">
  <560 300 690 300 "net12" 560 300 0 "">
  <505 40 505 200 "net13" 505 40 0 "">
  <150 40 505 40 "net14" 150 40 0 "">
  <585 200 690 200 "net15" 585 200 0 "">
  <585 410 610 410 "net16" 585 410 0 "">
  <585 240 585 410 "net17" 585 240 0 "">
  <710 360 820 360 "net18" 710 360 0 "">
  <670 470 670 480 "net19" 670 470 0 "">
  <670 480 760 480 "net20" 670 480 0 "">
  <275 280 275 300 "net21" 275 280 0 "">
  <220 300 220 370 "net22" 220 300 0 "">
  <220 300 275 300 "net23" 220 300 0 "">
  <140 350 275 350 "net24" 140 350 0 "">
  <140 350 140 355 "net25" 140 350 0 "">
  <385 315 505 315 "net26" 385 315 0 "">
  <505 240 505 315 "net27" 505 240 0 "">
  <120 140 255 140 "net28" 120 140 0 "">
  <220 200 255 200 "net29" 220 200 0 "">
  <375 170 375 220 "net30" 375 170 0 "">
  <375 220 505 220 "net31" 375 220 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
