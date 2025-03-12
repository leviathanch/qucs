(* qucs_ViewX1=0, qucs_ViewY1=0, qucs_ViewX2=800, qucs_ViewY2=800, qucs_Scale=1, qucs_tmpViewX1=-200, qucs_tmpViewY1=-200, qucs_GridX=10, qucs_GridY=10, qucs_GridOn=1, qucs_DataSet="groupdelay_sp.dat", qucs_DataDisplay="groupdelay_sp.dpl", qucs_SimOpenDpl=1, qucs_Script="groupdelay_sp.m", qucs_SimRunScript=0, qucs_showFrame=0, qucs_FrameText0="Title", qucs_FrameText1="Drawn By:", qucs_FrameText2="Date:", qucs_FrameText3="Revision:" *) module groupdelay_sp();
    wire n_110_150;
    wire n_110_210;
    wire n_220_210;
    wire n_260_100;
    wire n_360_210;
    wire n_500_160;
    wire n_500_220;
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=110, S0_y1=210 *) GND #() \\*  ( n_110_210 );
    (* qucs_mirrored=0, qucs_rotated=1, S0_x1=220, S0_y1=240, S0_x2=220, S0_y2=180 *) C #(.C(39.01pF),.V(),.Symbol(neutral)) C1 ( n_220_240, n_220_180 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=220, S0_y1=210 *) GND #() \\*  ( n_220_210 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=230, S0_y1=100, S0_x2=290, S0_y2=100 *) L #(.L(280.9nH),.I()) L1 ( n_230_100, n_290_100 );
    (* qucs_mirrored=0, qucs_rotated=1, S0_x1=360, S0_y1=240, S0_x2=360, S0_y2=180 *) C #(.C(39.01pF),.V(),.Symbol(neutral)) C2 ( n_360_240, n_360_180 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=360, S0_y1=210 *) GND #() \\*  ( n_360_210 );
    (* qucs_mirrored=0, qucs_rotated=2, S0_x1=80, S0_y1=150, S0_x2=140, S0_y2=150 *) Pac #(.Num(1),.Z(60 Ohm),.P(0 dBm),.f(1 GHz),.Temp(26.85)) P1 ( n_80_150, n_140_150 );
    (* qucs_mirrored=0, qucs_rotated=2, S0_x1=470, S0_y1=160, S0_x2=530, S0_y2=160 *) Pac #(.Num(2),.Z(60 Ohm),.P(0 dBm),.f(1 GHz),.Temp(26.85)) P2 ( n_470_160, n_530_160 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=500, S0_y1=220 *) GND #() \\*  ( n_500_220 );
endmodule
