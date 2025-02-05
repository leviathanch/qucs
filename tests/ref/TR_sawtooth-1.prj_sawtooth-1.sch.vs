module sawtooth-1();
    wire n_80_80;
    wire n_80_100;
    wire n_80_130;
    wire n_80_160;
    wire n_80_230;
    wire n_80_260;
    wire n_80_290;
    wire n_80_320;
    wire n_200_230;
    wire n_200_260;
    wire n_200_290;
    wire n_200_320;
    wire n_230_230;
    wire n_230_290;
    wire n_260_180;
    wire n_260_200;
    wire n_260_230;
    wire n_260_260;
    wire n_260_290;
    wire n_320_80;
    wire n_320_100;
    wire n_320_130;
    wire n_320_160;
    wire n_320_180;
    wire n_320_240;
    wire n_320_270;
    wire n_320_300;
    wire n_320_320;
    wire n_420_80;
    wire n_420_100;
    wire n_420_130;
    wire n_420_160;
    wire n_500_80;
    (*  *) Lib #(.Lib(Z-Diodes),.Comp(1N4732A)) D1 (  );
    (* S0_x1=230, S0_y1=290S0_x2=200, S0_y2=260S0_x3=200, S0_y3=320 *) _BJT #(.Type(npn),.Is(15.5f),.Nf(1),.Nr(1),.Ikf(54.7m),.Ikr(0.135),.Vaf(127),.Var(28),.Ise(3.9p),.Ne(2),.Isc(0),.Nc(2),.Bf(524),.Br(4),.Rbm(0),.Irb(0),.Rc(0.116),.Re(0.29),.Rb(1.16),.Cje(22.7p),.Vje(1.1),.Mje(0.5),.Cjc(7.34p),.Vjc(0.3),.Mjc(0.3),.Xcjc(1),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(698p),.Xtf(0),.Vtf(0),.Itf(0),.Tr(121n),.Temp(26.85),.Kf(0),.Af(1),.Ffe(1),.Kb(0),.Ab(1),.Fb(1),.Ptf(0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) T_2DC4617R1 ( n_230_290, n_200_260, n_200_320 );
    (* S0_x1=230, S0_y1=230S0_x2=260, S0_y2=260S0_x3=260, S0_y3=200 *) _BJT #(.Type(pnp),.Is(15.2f),.Nf(1),.Nr(1),.Ikf(54.7m),.Ikr(0.135),.Vaf(127),.Var(24),.Ise(3.88p),.Ne(2),.Isc(0),.Nc(2),.Bf(523),.Br(4),.Rbm(0),.Irb(0),.Rc(0.284),.Re(0.710),.Rb(2.84),.Cje(42.6p),.Vje(1.1),.Mje(0.5),.Cjc(13.7p),.Vjc(0.3),.Mjc(0.3),.Xcjc(1),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(453p),.Xtf(0),.Vtf(0),.Itf(0),.Tr(96.4n),.Temp(26.85),.Kf(0),.Af(1),.Ffe(1),.Kb(0),.Ab(1),.Fb(1),.Ptf(0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) T_2DA1774R1 ( n_230_230, n_260_260, n_260_200 );
    (* S0_x1=200, S0_y1=320 *) GND #() \*  ( n_200_320 );
    (* S0_x1=80, S0_y1=320 *) GND #() \*  ( n_80_320 );
    (* S0_x1=320, S0_y1=300S0_x2=320, S0_y2=240 *) C #(.C(1n),.V(),.Symbol(neutral)) C1 ( n_320_300, n_320_240 );
    (* S0_x1=320, S0_y1=320 *) GND #() \*  ( n_320_320 );
    (* S0_x1=420, S0_y1=100S0_x2=420, S0_y2=160 *) Vdc #(.U(10)) V1 ( n_420_100, n_420_160 );
    (* S0_x1=420, S0_y1=160 *) GND #() \*  ( n_420_160 );
    (* S0_x1=320, S0_y1=160S0_x2=320, S0_y2=100 *) R #(.R(400),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_320_160, n_320_100 );
    (* S0_x1=80, S0_y1=160S0_x2=80, S0_y2=100 *) R #(.R(12),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_80_160, n_80_100 );
    (*  *) \.TR  #(.Type(lin),.Start(0),.Stop(2u),.Points(501),.IntegrationMethod(Trapezoidal),.Order(2),.InitialStep(1 ns),.MinStep(1e-16),.MaxIter(150),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.Temp(26.85),.LTEreltol(1e-3),.LTEabstol(1e-6),.LTEfactor(1),.Solver(CroutLU),.relaxTSR(no),.initialDC(yes),.MaxStep(0)) TR1 (  );
    (* S0_x1=80, S0_y1=230S0_x2=80, S0_y2=260 *) net #() net1 ( n_80_230, n_80_260 );
    (* S0_x1=80, S0_y1=230S0_x2=200, S0_y2=230 *) net #() net2 ( n_80_230, n_200_230 );
    (* S0_x1=200, S0_y1=230S0_x2=230, S0_y2=230 *) net #() net3 ( n_200_230, n_230_230 );
    (* S0_x1=200, S0_y1=230S0_x2=200, S0_y2=260 *) net #() net4 ( n_200_230, n_200_260 );
    (* S0_x1=260, S0_y1=260S0_x2=260, S0_y2=290 *) net #() net5 ( n_260_260, n_260_290 );
    (* S0_x1=230, S0_y1=290S0_x2=260, S0_y2=290 *) net #() net6 ( n_230_290, n_260_290 );
    (* S0_x1=320, S0_y1=300S0_x2=320, S0_y2=320 *) net #() net7 ( n_320_300, n_320_320 );
    (* S0_x1=80, S0_y1=80S0_x2=80, S0_y2=100 *) net #() net8 ( n_80_80, n_80_100 );
    (* S0_x1=420, S0_y1=80S0_x2=420, S0_y2=100 *) net #() net9 ( n_420_80, n_420_100 );
    (* S0_x1=320, S0_y1=160S0_x2=320, S0_y2=180 *) net #() net10 ( n_320_160, n_320_180 );
    (* S0_x1=260, S0_y1=180S0_x2=320, S0_y2=180 *) net #() net11 ( n_260_180, n_320_180 );
    (* S0_x1=80, S0_y1=80S0_x2=320, S0_y2=80 *) net #() net12 ( n_80_80, n_320_80 );
    (* S0_x1=320, S0_y1=80S0_x2=420, S0_y2=80 *) net #() net13 ( n_320_80, n_420_80 );
    (* S0_x1=320, S0_y1=80S0_x2=320, S0_y2=100 *) net #() net14 ( n_320_80, n_320_100 );
    (* S0_x1=260, S0_y1=180S0_x2=260, S0_y2=200 *) net #() net15 ( n_260_180, n_260_200 );
    (* S0_x1=320, S0_y1=180S0_x2=320, S0_y2=240 *) net #() net16 ( n_320_180, n_320_240 );
    (* S0_x1=80, S0_y1=160S0_x2=80, S0_y2=230 *) net #() net17 ( n_80_160, n_80_230 );
endmodule
