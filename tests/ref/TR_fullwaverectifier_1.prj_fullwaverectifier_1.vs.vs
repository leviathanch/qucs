(* qucs_ViewX1=0, qucs_ViewY1=0, qucs_ViewX2=800, qucs_ViewY2=800, qucs_Scale=1, qucs_tmpViewX1=-200, qucs_tmpViewY1=-200, qucs_GridX=10, qucs_GridY=10, qucs_GridOn=1, qucs_DataSet="fullwaverectifier_1.dat", qucs_DataDisplay="fullwaverectifier_1.dpl", qucs_SimOpenDpl=1, qucs_Script="fullwaverectifier_1.m", qucs_SimRunScript=0, qucs_showFrame=0, qucs_FrameText0="Title", qucs_FrameText1="Drawn By:", qucs_FrameText2="Date:", qucs_FrameText3="Revision:" *) module fullwaverectifier_1();
    wire n_50_210;
    wire n_50_250;
    wire n_170_110;
    wire n_170_250;
    wire n_290_110;
    wire n_430_150;
    wire n_430_250;
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=260, S0_y1=40, S0_x2=320, S0_y2=80, S0_x3=320, S0_y3=140, S0_x4=260, S0_y4=180, S0_x5=260, S0_y5=120, S0_x6=260, S0_y6=100 *) sTr #(.T1(1),.T2(1)) Tr1 ( n_260_40, n_320_80, n_320_140, n_260_180, n_260_120, n_260_100 );
    (* qucs_mirrored=0, qucs_rotated=1, S0_x1=50, S0_y1=240, S0_x2=50, S0_y2=180 *) R #(.R(1k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85)) R1 ( n_50_240, n_50_180 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=50, S0_y1=250 *) GND #() \\*  ( n_50_250 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=430, S0_y1=250 *) GND #() \\*  ( n_430_250 );
    (* qucs_mirrored=0, qucs_rotated=2, S0_x1=400, S0_y1=150, S0_x2=460, S0_y2=150 *) Vac #(.U(Vamp),.f(Vfreq),.Phase(0),.Theta(0)) V1 ( n_400_150, n_460_150 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=140, S0_y1=110, S0_x2=200, S0_y2=110 *) Diode #(.Is(1e-15 A),.N(1),.Cj0(10 fF),.M(0.5),.Vj(0.7 V),.Fc(0.5),.Cp(0.0 fF),.Isr(0.0),.Nr(2.0),.Rs(0.0 Ohm),.Tt(0.0 ps),.Ikf(0),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Bv(0),.Ibv(1 mA),.Temp(26.85),.Xti(3.0),.Eg(1.11),.Tbv(0.0),.Trs(0.0),.Ttt1(0.0),.Ttt2(0.0),.Tm1(0.0),.Tm2(0.0),.Tnom(26.85),.Area(1.0),.Symbol(normal)) D1 ( n_140_110, n_200_110 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=140, S0_y1=250, S0_x2=200, S0_y2=250 *) Diode #(.Is(1e-15 A),.N(1),.Cj0(10 fF),.M(0.5),.Vj(0.7 V),.Fc(0.5),.Cp(0.0 fF),.Isr(0.0),.Nr(2.0),.Rs(0.0 Ohm),.Tt(0.0 ps),.Ikf(0),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Bv(0),.Ibv(1 mA),.Temp(26.85),.Xti(3.0),.Eg(1.11),.Tbv(0.0),.Trs(0.0),.Ttt1(0.0),.Ttt2(0.0),.Tm1(0.0),.Tm2(0.0),.Tnom(26.85),.Area(1.0),.Symbol(normal)) D2 ( n_140_250, n_200_250 );
endmodule
