module bbv();
    wire n_m50_220;
    wire n_m50_260;
    wire n_m50_290;
    wire n_m50_320;
    wire n_m50_380;
    wire n_m50_450;
    wire n_m40_220;
    wire n_m10_220;
    wire n_40_40;
    wire n_40_60;
    wire n_40_90;
    wire n_40_120;
    wire n_50_220;
    wire n_80_220;
    wire n_80_410;
    wire n_100_220;
    wire n_120_460;
    wire n_130_40;
    wire n_130_90;
    wire n_130_120;
    wire n_130_150;
    wire n_130_170;
    wire n_130_190;
    wire n_130_220;
    wire n_130_250;
    wire n_130_280;
    wire n_130_310;
    wire n_130_340;
    wire n_130_370;
    wire n_160_280;
    wire n_190_280;
    wire n_200_190;
    wire n_200_230;
    wire n_220_230;
    wire n_220_280;
    wire n_240_410;
    wire n_250_40;
    wire n_250_100;
    wire n_250_130;
    wire n_250_160;
    wire n_250_190;
    wire n_250_200;
    wire n_250_230;
    wire n_250_260;
    wire n_250_280;
    wire n_270_410;
    wire n_280_130;
    wire n_300_410;
    wire n_320_170;
    wire n_350_130;
    wire n_350_140;
    wire n_350_170;
    wire n_350_200;
    wire n_350_210;
    wire n_350_240;
    wire n_350_270;
    wire n_350_410;
    wire n_390_350;
    wire n_390_390;
    wire n_410_200;
    wire n_410_390;
    wire n_440_40;
    wire n_440_50;
    wire n_440_80;
    wire n_440_110;
    wire n_440_130;
    wire n_440_170;
    wire n_440_200;
    wire n_440_230;
    wire n_440_270;
    wire n_440_280;
    wire n_440_310;
    wire n_440_340;
    wire n_440_350;
    wire n_440_360;
    wire n_440_390;
    wire n_440_420;
    wire n_470_130;
    wire n_500_130;
    wire n_560_130;
    wire n_620_130;
    wire n_650_130;
    wire n_650_190;
    wire n_650_220;
    wire n_650_250;
    (* S0_x1=130, S0_y1=370, S0_x2=130, S0_y2=310 *) R #(.R(12),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) RE1 ( n_130_370, n_130_310 );
    (* S0_x1=130, S0_y1=150, S0_x2=130, S0_y2=90 *) R #(.R(650),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_130_150, n_130_90 );
    (* S0_x1=100, S0_y1=220, S0_x2=130, S0_y2=190, S0_x3=130, S0_y3=250 *) _BJT #(.Type(npn),.Is(2e-15),.Nf(1),.Nr(1),.Ikf(0.01),.Ikr(0.10),.Vaf(100),.Var(10),.Ise(0),.Ne(2.0),.Isc(0),.Nc(2.0),.Bf(300),.Br(5.67),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) btgn1 ( n_100_220, n_130_190, n_130_250 );
    (* S0_x1=20, S0_y1=220, S0_x2=80, S0_y2=220 *) L #(.L(3 nH),.I()) L1 ( n_20_220, n_80_220 );
    (* S0_x1=220, S0_y1=280, S0_x2=160, S0_y2=280 *) R #(.R(140),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) RF1 ( n_220_280, n_160_280 );
    (* S0_x1=220, S0_y1=230, S0_x2=250, S0_y2=200, S0_x3=250, S0_y3=260 *) _BJT #(.Type(npn),.Is(1e-15),.Nf(1),.Nr(1),.Ikf(0.01),.Ikr(0.10),.Vaf(100),.Var(10),.Ise(0),.Ne(2.0),.Isc(0),.Nc(2.0),.Bf(300),.Br(5.67),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) btgn4 ( n_220_230, n_250_200, n_250_260 );
    (* S0_x1=280, S0_y1=130, S0_x2=250, S0_y2=100, S0_x3=250, S0_y3=160 *) _BJT #(.Type(npn),.Is(1e-15),.Nf(1),.Nr(1),.Ikf(0.01),.Ikr(0.10),.Vaf(100),.Var(10),.Ise(0),.Ne(2.0),.Isc(0),.Nc(2.0),.Bf(300),.Br(5.67),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) btgn3 ( n_280_130, n_250_100, n_250_160 );
    (* S0_x1=130, S0_y1=370 *) GND #() \*  ( n_130_370 );
    (* S0_x1=300, S0_y1=410, S0_x2=240, S0_y2=410 *) R #(.R(200),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) RF2 ( n_300_410, n_240_410 );
    (*  *) Eqn #(.Gain(abs(Out.v/In.v)),.Export(yes)) Eqn1 (  );
    (* S0_x1=40, S0_y1=120 *) GND #() \*  ( n_40_120 );
    (* S0_x1=40, S0_y1=60, S0_x2=40, S0_y2=120 *) Vdc #(.U(6 V)) VCC ( n_40_60, n_40_120 );
    (* S0_x1=-50, S0_y1=320 *) GND #() \*  ( n_m50_320 );
    (* S0_x1=-50, S0_y1=260, S0_x2=-50, S0_y2=320 *) Vac #(.U(50u),.f(1 GHz),.Phase(0),.Theta(0)) V1 ( n_m50_260, n_m50_320 );
    (* S0_x1=-40, S0_y1=220, S0_x2=20, S0_y2=220 *) DCBlock #(.C(1 uF)) C1 ( n_m40_220, n_20_220 );
    (*  *) \.DC  #(.Temp(26.85),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.saveOPs(no),.MaxIter(150),.saveAll(no),.convHelper(none),.Solver(CroutLU)) DC1 (  );
    (*  *) \.AC  #(.Type(log),.Start(10k),.Stop(100G),.Points(100),.Noise(no)) AC1 (  );
    (* S0_x1=350, S0_y1=270, S0_x2=350, S0_y2=210 *) R #(.R(140),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R3 ( n_350_270, n_350_210 );
    (* S0_x1=320, S0_y1=170, S0_x2=350, S0_y2=140, S0_x3=350, S0_y3=200 *) _BJT #(.Type(npn),.Is(1e-15),.Nf(1),.Nr(1),.Ikf(0.01),.Ikr(0.10),.Vaf(100),.Var(10),.Ise(0),.Ne(2.0),.Isc(0),.Nc(2.0),.Bf(300),.Br(5.67),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) btgn6 ( n_320_170, n_350_140, n_350_200 );
    (* S0_x1=440, S0_y1=340, S0_x2=440, S0_y2=280 *) R #(.R(12),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) RE2 ( n_440_340, n_440_280 );
    (* S0_x1=410, S0_y1=390, S0_x2=440, S0_y2=360, S0_x3=440, S0_y3=420 *) _BJT #(.Type(npn),.Is(1e-15),.Nf(1),.Nr(1),.Ikf(0.01),.Ikr(0.10),.Vaf(100),.Var(10),.Ise(0),.Ne(2.0),.Isc(0),.Nc(2.0),.Bf(300),.Br(5.67),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) btgn5 ( n_410_390, n_440_360, n_440_420 );
    (* S0_x1=410, S0_y1=200, S0_x2=440, S0_y2=170, S0_x3=440, S0_y3=230 *) _BJT #(.Type(npn),.Is(1e-15),.Nf(1),.Nr(1),.Ikf(0.01),.Ikr(0.10),.Vaf(100),.Var(10),.Ise(0),.Ne(2.0),.Isc(0),.Nc(2.0),.Bf(300),.Br(5.67),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) btgn2 ( n_410_200, n_440_170, n_440_230 );
    (* S0_x1=440, S0_y1=110, S0_x2=440, S0_y2=50 *) R #(.R(225),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_440_110, n_440_50 );
    (* S0_x1=440, S0_y1=420 *) GND #() \*  ( n_440_420 );
    (* S0_x1=530, S0_y1=130, S0_x2=470, S0_y2=130 *) R #(.R(10),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R0 ( n_530_130, n_470_130 );
    (* S0_x1=590, S0_y1=130, S0_x2=650, S0_y2=130 *) DCBlock #(.C(1 uF)) C2 ( n_590_130, n_650_130 );
    (* S0_x1=530, S0_y1=130, S0_x2=590, S0_y2=130 *) L #(.L(3 nH),.I()) L2 ( n_530_130, n_590_130 );
    (* S0_x1=650, S0_y1=250 *) GND #() \*  ( n_650_250 );
    (* S0_x1=650, S0_y1=250, S0_x2=650, S0_y2=190 *) R #(.R(1k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) RL ( n_650_250, n_650_190 );
    (* S0_x1=130, S0_y1=250, S0_x2=130, S0_y2=280 *) net #() net1 ( n_130_250, n_130_280 );
    (* S0_x1=200, S0_y1=190, S0_x2=250, S0_y2=190 *) net #() net2 ( n_200_190, n_250_190 );
    (* S0_x1=80, S0_y1=220, S0_x2=100, S0_y2=220 *) net #() net3 ( n_80_220, n_100_220 );
    (* S0_x1=130, S0_y1=150, S0_x2=130, S0_y2=170 *) net #() net4 ( n_130_150, n_130_170 );
    (* S0_x1=130, S0_y1=280, S0_x2=130, S0_y2=310 *) net #() net5 ( n_130_280, n_130_310 );
    (* S0_x1=130, S0_y1=280, S0_x2=160, S0_y2=280 *) net #() net6 ( n_130_280, n_160_280 );
    (* S0_x1=200, S0_y1=230, S0_x2=220, S0_y2=230 *) net #() net7 ( n_200_230, n_220_230 );
    (* S0_x1=200, S0_y1=190, S0_x2=200, S0_y2=230 *) net #() net8 ( n_200_190, n_200_230 );
    (* S0_x1=250, S0_y1=190, S0_x2=250, S0_y2=200 *) net #() net9 ( n_250_190, n_250_200 );
    (* S0_x1=250, S0_y1=260, S0_x2=250, S0_y2=280 *) net #() net10 ( n_250_260, n_250_280 );
    (* S0_x1=220, S0_y1=280, S0_x2=250, S0_y2=280 *) net #() net11 ( n_220_280, n_250_280 );
    (* S0_x1=250, S0_y1=160, S0_x2=250, S0_y2=190 *) net #() net12 ( n_250_160, n_250_190 );
    (* S0_x1=80, S0_y1=410, S0_x2=240, S0_y2=410 *) net #() net13 ( n_80_410, n_240_410 );
    (* S0_x1=80, S0_y1=220, S0_x2=80, S0_y2=410 *) net #() net14 ( n_80_220, n_80_410 );
    (* S0_x1=250, S0_y1=40, S0_x2=250, S0_y2=100 *) net #() net15 ( n_250_40, n_250_100 );
    (* S0_x1=130, S0_y1=40, S0_x2=130, S0_y2=90 *) net #() net16 ( n_130_40, n_130_90 );
    (* S0_x1=130, S0_y1=40, S0_x2=250, S0_y2=40 *) net #() net17 ( n_130_40, n_250_40 );
    (* S0_x1=40, S0_y1=40, S0_x2=130, S0_y2=40 *) net #() net18 ( n_40_40, n_130_40 );
    (* S0_x1=40, S0_y1=40, S0_x2=40, S0_y2=60 *) net #() net19 ( n_40_40, n_40_60 );
    (* S0_x1=-50, S0_y1=220, S0_x2=-40, S0_y2=220 *) net #() net20 ( n_m50_220, n_m40_220 );
    (* S0_x1=-50, S0_y1=220, S0_x2=-50, S0_y2=260 *) net #() net21 ( n_m50_220, n_m50_260 );
    (* S0_x1=350, S0_y1=130, S0_x2=350, S0_y2=140 *) net #() net22 ( n_350_130, n_350_140 );
    (* S0_x1=350, S0_y1=130, S0_x2=440, S0_y2=130 *) net #() net23 ( n_350_130, n_440_130 );
    (* S0_x1=350, S0_y1=200, S0_x2=350, S0_y2=210 *) net #() net24 ( n_350_200, n_350_210 );
    (* S0_x1=390, S0_y1=390, S0_x2=410, S0_y2=390 *) net #() net25 ( n_390_390, n_410_390 );
    (* S0_x1=440, S0_y1=340, S0_x2=440, S0_y2=350 *) net #() net26 ( n_440_340, n_440_350 );
    (* S0_x1=390, S0_y1=350, S0_x2=440, S0_y2=350 *) net #() net27 ( n_390_350, n_440_350 );
    (* S0_x1=390, S0_y1=350, S0_x2=390, S0_y2=390 *) net #() net28 ( n_390_350, n_390_390 );
    (* S0_x1=440, S0_y1=270, S0_x2=440, S0_y2=280 *) net #() net29 ( n_440_270, n_440_280 );
    (* S0_x1=350, S0_y1=270, S0_x2=440, S0_y2=270 *) net #() net30 ( n_350_270, n_440_270 );
    (* S0_x1=440, S0_y1=130, S0_x2=440, S0_y2=170 *) net #() net31 ( n_440_130, n_440_170 );
    (* S0_x1=440, S0_y1=230, S0_x2=440, S0_y2=270 *) net #() net32 ( n_440_230, n_440_270 );
    (* S0_x1=350, S0_y1=200, S0_x2=410, S0_y2=200 *) net #() net33 ( n_350_200, n_410_200 );
    (* S0_x1=440, S0_y1=350, S0_x2=440, S0_y2=360 *) net #() net34 ( n_440_350, n_440_360 );
    (* S0_x1=440, S0_y1=110, S0_x2=440, S0_y2=130 *) net #() net35 ( n_440_110, n_440_130 );
    (* S0_x1=350, S0_y1=270, S0_x2=350, S0_y2=410 *) net #() net36 ( n_350_270, n_350_410 );
    (* S0_x1=440, S0_y1=40, S0_x2=440, S0_y2=50 *) net #() net37 ( n_440_40, n_440_50 );
    (* S0_x1=250, S0_y1=40, S0_x2=440, S0_y2=40 *) net #() net38 ( n_250_40, n_440_40 );
    (* S0_x1=300, S0_y1=410, S0_x2=350, S0_y2=410 *) net #() net39 ( n_300_410, n_350_410 );
    (* S0_x1=280, S0_y1=130, S0_x2=350, S0_y2=130 *) net #() net40 ( n_280_130, n_350_130 );
    (* S0_x1=130, S0_y1=170, S0_x2=130, S0_y2=190 *) net #() net41 ( n_130_170, n_130_190 );
    (* S0_x1=130, S0_y1=170, S0_x2=320, S0_y2=170 *) net #() net42 ( n_130_170, n_320_170 );
    (* S0_x1=440, S0_y1=130, S0_x2=470, S0_y2=130 *) net #() net43 ( n_440_130, n_470_130 );
    (* S0_x1=650, S0_y1=130, S0_x2=650, S0_y2=190 *) net #() net44 ( n_650_130, n_650_190 );
endmodule
