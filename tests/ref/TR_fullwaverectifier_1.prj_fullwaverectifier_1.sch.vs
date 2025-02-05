module fullwaverectifier_1();
    wire n_50_110;
    wire n_50_150;
    wire n_50_180;
    wire n_50_210;
    wire n_50_250;
    wire n_80_350;
    wire n_110_180;
    wire n_110_250;
    wire n_130_110;
    wire n_130_250;
    wire n_170_110;
    wire n_170_250;
    wire n_200_110;
    wire n_200_250;
    wire n_200_340;
    wire n_230_110;
    wire n_230_250;
    wire n_290_110;
    wire n_290_170;
    wire n_290_180;
    wire n_290_190;
    wire n_290_250;
    wire n_320_180;
    wire n_350_110;
    wire n_350_150;
    wire n_350_210;
    wire n_350_250;
    wire n_430_110;
    wire n_430_150;
    wire n_430_180;
    wire n_430_210;
    wire n_430_250;
    (* S0_x1=290, S0_y1=110S0_x2=350, S0_y2=150S0_x3=350, S0_y3=210S0_x4=290, S0_y4=250S0_x5=290, S0_y5=190S0_x6=290, S0_y6=170 *) sTr #(.T1(1),.T2(1)) Tr1 ( n_290_110, n_350_150, n_350_210, n_290_250, n_290_190, n_290_170 );
    (* S0_x1=50, S0_y1=210S0_x2=50, S0_y2=150 *) R #(.R(1k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_50_210, n_50_150 );
    (* S0_x1=50, S0_y1=250 *) GND #() \*  ( n_50_250 );
    (* S0_x1=430, S0_y1=250 *) GND #() \*  ( n_430_250 );
    (* S0_x1=430, S0_y1=150S0_x2=430, S0_y2=210 *) Vac #(.U(Vamp),.f(Vfreq),.Phase(0),.Theta(0)) V1 ( n_430_150, n_430_210 );
    (* S0_x1=170, S0_y1=110S0_x2=230, S0_y2=110 *) Diode #(.Is(1e-15 A),.N(1),.Cj0(10 fF),.M(0.5),.Vj(0.7 V),.Fc(0.5),.Cp(0.0 fF),.Isr(0.0),.Nr(2.0),.Rs(0.0 Ohm),.Tt(0.0 ps),.Ikf(0),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Bv(0),.Ibv(1 mA),.Temp(26.85),.Xti(3.0),.Eg(1.11),.Tbv(0.0),.Trs(0.0),.Ttt1(0.0),.Ttt2(0.0),.Tm1(0.0),.Tm2(0.0),.Tnom(26.85),.Area(1.0),.Symbol(normal)) D1 ( n_170_110, n_230_110 );
    (* S0_x1=170, S0_y1=250S0_x2=230, S0_y2=250 *) Diode #(.Is(1e-15 A),.N(1),.Cj0(10 fF),.M(0.5),.Vj(0.7 V),.Fc(0.5),.Cp(0.0 fF),.Isr(0.0),.Nr(2.0),.Rs(0.0 Ohm),.Tt(0.0 ps),.Ikf(0),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Bv(0),.Ibv(1 mA),.Temp(26.85),.Xti(3.0),.Eg(1.11),.Tbv(0.0),.Trs(0.0),.Ttt1(0.0),.Ttt2(0.0),.Tm1(0.0),.Tm2(0.0),.Tnom(26.85),.Area(1.0),.Symbol(normal)) D2 ( n_170_250, n_230_250 );
    (*  *) Eqn #(.Veff(220),.Vamp(Veff*sqrt(2)),.Vfreq(50),.Tperiod(1/Vfreq),.Tmax(2*Tperiod),.Export(yes)) Eqn1 (  );
    (*  *) \.TR  #(.Type(lin),.Start(0),.Stop(Tmax),.Points(201),.IntegrationMethod(Trapezoidal),.Order(2),.InitialStep(1 ns),.MinStep(1e-16),.MaxIter(150),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.Temp(26.85),.LTEreltol(1e-3),.LTEabstol(1e-6),.LTEfactor(1),.Solver(CroutLU),.relaxTSR(no),.initialDC(yes),.MaxStep(0)) TR1 (  );
    (* S0_x1=230, S0_y1=110S0_x2=290, S0_y2=110 *) net #() net1 ( n_230_110, n_290_110 );
    (* S0_x1=230, S0_y1=250S0_x2=290, S0_y2=250 *) net #() net2 ( n_230_250, n_290_250 );
    (* S0_x1=130, S0_y1=250S0_x2=170, S0_y2=250 *) net #() net3 ( n_130_250, n_170_250 );
    (* S0_x1=130, S0_y1=110S0_x2=130, S0_y2=250 *) net #() net4 ( n_130_110, n_130_250 );
    (* S0_x1=130, S0_y1=110S0_x2=170, S0_y2=110 *) net #() net5 ( n_130_110, n_170_110 );
    (* S0_x1=50, S0_y1=110S0_x2=130, S0_y2=110 *) net #() out ( n_50_110, n_130_110 );
    (* S0_x1=50, S0_y1=110S0_x2=50, S0_y2=150 *) net #() net6 ( n_50_110, n_50_150 );
    (* S0_x1=290, S0_y1=170S0_x2=290, S0_y2=180 *) net #() net7 ( n_290_170, n_290_180 );
    (* S0_x1=290, S0_y1=180S0_x2=290, S0_y2=190 *) net #() net8 ( n_290_180, n_290_190 );
    (* S0_x1=110, S0_y1=180S0_x2=290, S0_y2=180 *) net #() net9 ( n_110_180, n_290_180 );
    (* S0_x1=110, S0_y1=180S0_x2=110, S0_y2=250 *) net #() net10 ( n_110_180, n_110_250 );
    (* S0_x1=50, S0_y1=250S0_x2=110, S0_y2=250 *) net #() net11 ( n_50_250, n_110_250 );
    (* S0_x1=50, S0_y1=210S0_x2=50, S0_y2=250 *) net #() net12 ( n_50_210, n_50_250 );
    (* S0_x1=430, S0_y1=110S0_x2=430, S0_y2=150 *) net #() net13 ( n_430_110, n_430_150 );
    (* S0_x1=350, S0_y1=110S0_x2=430, S0_y2=110 *) net #() in ( n_350_110, n_430_110 );
    (* S0_x1=350, S0_y1=110S0_x2=350, S0_y2=150 *) net #() net14 ( n_350_110, n_350_150 );
    (* S0_x1=350, S0_y1=210S0_x2=350, S0_y2=250 *) net #() net15 ( n_350_210, n_350_250 );
    (* S0_x1=350, S0_y1=250S0_x2=430, S0_y2=250 *) net #() net16 ( n_350_250, n_430_250 );
    (* S0_x1=430, S0_y1=210S0_x2=430, S0_y2=250 *) net #() net17 ( n_430_210, n_430_250 );
endmodule
