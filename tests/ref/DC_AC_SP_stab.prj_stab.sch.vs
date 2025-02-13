module stab();
    wire n_50_400;
    wire n_50_430;
    wire n_50_460;
    wire n_150_470;
    wire n_160_400;
    wire n_170_30;
    wire n_170_60;
    wire n_170_120;
    wire n_170_150;
    wire n_170_180;
    wire n_170_210;
    wire n_190_150;
    wire n_190_400;
    wire n_220_120;
    wire n_220_150;
    wire n_220_180;
    wire n_220_270;
    wire n_220_280;
    wire n_220_310;
    wire n_220_370;
    wire n_220_400;
    wire n_300_270;
    wire n_310_450;
    wire n_330_270;
    wire n_340_120;
    wire n_360_270;
    wire n_370_120;
    wire n_380_400;
    wire n_400_120;
    wire n_410_400;
    wire n_470_30;
    wire n_470_60;
    wire n_470_90;
    wire n_470_120;
    wire n_470_140;
    wire n_470_170;
    wire n_470_200;
    wire n_470_270;
    wire n_470_290;
    wire n_470_320;
    wire n_470_350;
    wire n_470_360;
    wire n_470_370;
    wire n_470_400;
    wire n_470_430;
    wire n_470_460;
    wire n_510_440;
    wire n_550_140;
    wire n_550_270;
    wire n_550_360;
    wire n_580_270;
    wire n_580_360;
    wire n_610_270;
    wire n_610_360;
    wire n_650_30;
    wire n_650_60;
    wire n_650_90;
    wire n_650_120;
    wire n_650_360;
    wire n_650_400;
    wire n_650_430;
    wire n_650_460;
    (* S0_x1=650, S0_y1=120 *) GND #() \*  ( n_650_120 );
    (* S0_x1=650, S0_y1=60, S0_x2=650, S0_y2=120 *) Vdc #(.U(15 V)) V1 ( n_650_60, n_650_120 );
    (* S0_x1=470, S0_y1=140, S0_x2=470, S0_y2=200 *) IProbe #() Collector ( n_470_140, n_470_200 );
    (* S0_x1=470, S0_y1=120, S0_x2=470, S0_y2=60 *) R #(.R(20 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_470_120, n_470_60 );
    (* S0_x1=340, S0_y1=120, S0_x2=400, S0_y2=120 *) Vac #(.U(1 V),.f(1 GHz),.Phase(0),.Theta(0)) V2 ( n_340_120, n_400_120 );
    (* S0_x1=170, S0_y1=90, S0_x2=170, S0_y2=30 *) Diode #(.Is(1e-15 A),.N(1),.Cj0(10 pF),.M(0.5),.Vj(0.7 V),.Fc(0.5),.Cp(0.0 fF),.Isr(0.0),.Nr(2.0),.Rs(0.0 Ohm),.Tt(0.0 ps),.Ikf(26.85),.Kf(0.0),.Af(1.0),.Ffe(0),.Bv(0),.Ibv(1 mA),.Temp(26.85),.Xti(3.0),.Eg(1.11),.Tbv(0.0),.Trs(0.0),.Ttt1(0.0),.Ttt2(0.0),.Tm1(0.0),.Tm2(0.0),.Tnom(26.85),.Area(1.0),.Symbol(normal)) D2 ( n_170_90, n_170_30 );
    (* S0_x1=170, S0_y1=150, S0_x2=170, S0_y2=90 *) Diode #(.Is(1e-15 A),.N(1),.Cj0(10 pF),.M(0.5),.Vj(0.7 V),.Fc(0.5),.Cp(0.0 fF),.Isr(0.0),.Nr(2.0),.Rs(0.0 Ohm),.Tt(0.0 ps),.Ikf(26.85),.Kf(0.0),.Af(1.0),.Ffe(0),.Bv(0),.Ibv(1 mA),.Temp(26.85),.Xti(3.0),.Eg(1.11),.Tbv(0.0),.Trs(0.0),.Ttt1(0.0),.Ttt2(0.0),.Tm1(0.0),.Tm2(0.0),.Tnom(26.85),.Area(1.0),.Symbol(normal)) D1 ( n_170_150, n_170_90 );
    (* S0_x1=190, S0_y1=150, S0_x2=220, S0_y2=180, S0_x3=220, S0_y3=120 *) _BJT #(.Type(pnp),.Is(1e-16),.Nf(1),.Nr(1),.Ikf(0),.Ikr(0),.Vaf(0),.Var(0),.Ise(0),.Ne(1.5),.Isc(0),.Nc(2),.Bf(300),.Br(1),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(30 pF),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) T2 ( n_190_150, n_220_180, n_220_120 );
    (* S0_x1=50, S0_y1=460 *) GND #() \*  ( n_50_460 );
    (* S0_x1=160, S0_y1=400, S0_x2=220, S0_y2=400 *) C #(.C(1 nF),.V(),.Symbol(neutral)) C4 ( n_160_400, n_220_400 );
    (* S0_x1=470, S0_y1=460 *) GND #() \*  ( n_470_460 );
    (* S0_x1=650, S0_y1=460 *) GND #() \*  ( n_650_460 );
    (* S0_x1=610, S0_y1=270 *) GND #() \*  ( n_610_270 );
    (* S0_x1=550, S0_y1=360, S0_x2=610, S0_y2=360 *) C #(.C(1 nF),.V(),.Symbol(neutral)) C3 ( n_550_360, n_610_360 );
    (* S0_x1=470, S0_y1=350, S0_x2=470, S0_y2=290 *) L #(.L(100 nH),.I()) L1 ( n_470_350, n_470_290 );
    (* S0_x1=50, S0_y1=400, S0_x2=50, S0_y2=460 *) Pac #(.Num(1),.Z(50 Ohm),.P(0),.f(1 GHz),.Temp(26.85)) P1 ( n_50_400, n_50_460 );
    (* S0_x1=650, S0_y1=400, S0_x2=650, S0_y2=460 *) Pac #(.Num(2),.Z(50 Ohm),.P(0),.f(1 GHz),.Temp(26.85)) P2 ( n_650_400, n_650_460 );
    (* S0_x1=440, S0_y1=400, S0_x2=470, S0_y2=370, S0_x3=470, S0_y3=430 *) _BJT #(.Type(npn),.Is(1e-16),.Nf(1),.Nr(1),.Ikf(0),.Ikr(0),.Vaf(0),.Var(0),.Ise(0),.Ne(1.5),.Isc(0),.Nc(2),.Bf(150),.Br(1),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(0),.Cje(10 pF),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) T1 ( n_440_400, n_470_370, n_470_430 );
    (* S0_x1=380, S0_y1=400, S0_x2=440, S0_y2=400 *) IProbe #() Basis ( n_380_400, n_440_400 );
    (* S0_x1=220, S0_y1=400, S0_x2=220, S0_y2=340 *) L #(.L(100 nH),.I()) L2 ( n_220_400, n_220_340 );
    (* S0_x1=360, S0_y1=270 *) GND #() \*  ( n_360_270 );
    (* S0_x1=220, S0_y1=340, S0_x2=220, S0_y2=280 *) R #(.R(10 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R3 ( n_220_340, n_220_280 );
    (* S0_x1=170, S0_y1=210 *) GND #() \*  ( n_170_210 );
    (* S0_x1=170, S0_y1=210, S0_x2=170, S0_y2=150 *) R #(.R(20 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_170_210, n_170_150 );
    (*  *) Eqn #(.LoopGain(output.v / input.v),.LoopPhase(phase(output.v / input.v)),.Export(yes)) Eqn1 (  );
    (*  *) \.SP  #(.Type(lin),.Start(180 MHz),.Stop(220 MHz),.Points(200),.Noise(no),.NoiseIP(1),.NoiseOP(2),.saveCVs(no),.saveAll(no)) SP1 (  );
    (*  *) \.DC  #(.Temp(26.85),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.saveOPs(no),.MaxIter(150),.saveAll(no),.convHelper(none),.Solver(CroutLU)) DC1 (  );
    (*  *) \.AC  #(.Type(log),.Start(1 Hz),.Stop(100 kHz),.Points(100),.Noise(no)) AC1 (  );
    (* S0_x1=550, S0_y1=270, S0_x2=610, S0_y2=270 *) C #(.C(0.1 uF),.V(),.Symbol(neutral)) C1 ( n_550_270, n_610_270 );
    (* S0_x1=300, S0_y1=270, S0_x2=360, S0_y2=270 *) C #(.C(5 uF),.V(),.Symbol(neutral)) C2 ( n_300_270, n_360_270 );
    (* S0_x1=170, S0_y1=150, S0_x2=190, S0_y2=150 *) net #() net1 ( n_170_150, n_190_150 );
    (* S0_x1=470, S0_y1=120, S0_x2=470, S0_y2=140 *) net #() net2 ( n_470_120, n_470_140 );
    (* S0_x1=470, S0_y1=30, S0_x2=470, S0_y2=60 *) net #() net3 ( n_470_30, n_470_60 );
    (* S0_x1=470, S0_y1=30, S0_x2=650, S0_y2=30 *) net #() net4 ( n_470_30, n_650_30 );
    (* S0_x1=650, S0_y1=30, S0_x2=650, S0_y2=60 *) net #() net5 ( n_650_30, n_650_60 );
    (* S0_x1=170, S0_y1=30, S0_x2=470, S0_y2=30 *) net #() net6 ( n_170_30, n_470_30 );
    (* S0_x1=220, S0_y1=120, S0_x2=340, S0_y2=120 *) net #() net7 ( n_220_120, n_340_120 );
    (* S0_x1=400, S0_y1=120, S0_x2=470, S0_y2=120 *) net #() net8 ( n_400_120, n_470_120 );
    (* S0_x1=50, S0_y1=400, S0_x2=160, S0_y2=400 *) net #() net9 ( n_50_400, n_160_400 );
    (* S0_x1=470, S0_y1=430, S0_x2=470, S0_y2=460 *) net #() net10 ( n_470_430, n_470_460 );
    (* S0_x1=470, S0_y1=350, S0_x2=470, S0_y2=360 *) net #() net11 ( n_470_350, n_470_360 );
    (* S0_x1=470, S0_y1=360, S0_x2=470, S0_y2=370 *) net #() net12 ( n_470_360, n_470_370 );
    (* S0_x1=470, S0_y1=360, S0_x2=550, S0_y2=360 *) net #() net13 ( n_470_360, n_550_360 );
    (* S0_x1=650, S0_y1=360, S0_x2=650, S0_y2=400 *) net #() net14 ( n_650_360, n_650_400 );
    (* S0_x1=610, S0_y1=360, S0_x2=650, S0_y2=360 *) net #() net15 ( n_610_360, n_650_360 );
    (* S0_x1=470, S0_y1=270, S0_x2=470, S0_y2=290 *) net #() net16 ( n_470_270, n_470_290 );
    (* S0_x1=470, S0_y1=270, S0_x2=550, S0_y2=270 *) net #() net17 ( n_470_270, n_550_270 );
    (* S0_x1=220, S0_y1=400, S0_x2=380, S0_y2=400 *) net #() net18 ( n_220_400, n_380_400 );
    (* S0_x1=220, S0_y1=180, S0_x2=220, S0_y2=270 *) net #() net19 ( n_220_180, n_220_270 );
    (* S0_x1=470, S0_y1=200, S0_x2=470, S0_y2=270 *) net #() net20 ( n_470_200, n_470_270 );
    (* S0_x1=220, S0_y1=270, S0_x2=220, S0_y2=280 *) net #() net21 ( n_220_270, n_220_280 );
    (* S0_x1=220, S0_y1=270, S0_x2=300, S0_y2=270 *) net #() net22 ( n_220_270, n_300_270 );
endmodule
