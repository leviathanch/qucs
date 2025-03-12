(* qucs_ViewX1=0, qucs_ViewY1=0, qucs_ViewX2=800, qucs_ViewY2=800, qucs_Scale=1, qucs_tmpViewX1=-200, qucs_tmpViewY1=-200, qucs_GridX=10, qucs_GridY=10, qucs_GridOn=1, qucs_DataSet="gyrator.dat", qucs_DataDisplay="gyrator.dpl", qucs_SimOpenDpl=1, qucs_Script="gyrator.m", qucs_SimRunScript=0, qucs_showFrame=0, qucs_FrameText0="Title", qucs_FrameText1="Drawn By:", qucs_FrameText2="Date:", qucs_FrameText3="Revision:" *) module gyrator();
    wire n_120_200;
    wire n_120_260;
    wire n_120_320;
    wire n_280_160;
    wire n_360_160;
    wire n_380_160;
    wire n_570_320;
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=120, S0_y1=320 *) GND #() \\*  ( n_120_320 );
    (* qucs_mirrored=0, qucs_rotated=2, S0_x1=90, S0_y1=260, S0_x2=150, S0_y2=260 *) Vdc #(.U(10 V)) V1 ( n_90_260, n_150_260 );
    (* qucs_mirrored=0, qucs_rotated=2, S0_x1=90, S0_y1=200, S0_x2=150, S0_y2=200 *) Vac #(.U(1 V),.f(1 GHz),.Phase(0),.Theta(0)) V2 ( n_90_200, n_150_200 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=570, S0_y1=320 *) GND #() \\*  ( n_570_320 );
    (* qucs_mirrored=0, qucs_rotated=1, S0_x1=570, S0_y1=350, S0_x2=570, S0_y2=290 *) R #(.R(1000 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85)) Load ( n_570_350, n_570_290 );
    (* qucs_mirrored=0, qucs_rotated=1, S0_x1=360, S0_y1=190, S0_x2=330, S0_y2=160, S0_x3=390, S0_y3=160 *) _BJT #(.Type(npn),.Is(1e-16),.Nf(1),.Nr(1),.Ikf(0),.Ikr(0),.Vaf(0),.Var(0),.Ise(0),.Ne(1.5),.Isc(0),.Nc(2),.Bf(250),.Br(1),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) T1 ( n_360_190, n_330_160, n_390_160 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=250, S0_y1=160, S0_x2=310, S0_y2=160 *) R #(.R(20 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85)) R1 ( n_250_160, n_310_160 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=350, S0_y1=160, S0_x2=410, S0_y2=160 *) C #(.C(200 uF),.V(),.Symbol(neutral)) C1 ( n_350_160, n_410_160 );
endmodule
