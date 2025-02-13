module lf_osci();
    wire n_70_50;
    wire n_70_70;
    wire n_70_100;
    wire n_70_130;
    wire n_70_180;
    wire n_70_210;
    wire n_100_210;
    wire n_130_210;
    wire n_160_210;
    wire n_160_260;
    wire n_160_290;
    wire n_160_320;
    wire n_190_210;
    wire n_220_210;
    wire n_250_210;
    wire n_280_210;
    wire n_280_260;
    wire n_280_290;
    wire n_280_320;
    wire n_310_210;
    wire n_340_210;
    wire n_370_210;
    wire n_400_210;
    wire n_400_260;
    wire n_400_290;
    wire n_400_320;
    wire n_460_400;
    wire n_470_210;
    wire n_500_50;
    wire n_500_70;
    wire n_500_100;
    wire n_500_130;
    wire n_500_180;
    wire n_500_210;
    wire n_500_240;
    wire n_500_320;
    (* S0_x1=160, S0_y1=320 *) GND #() \*  ( n_160_320 );
    (* S0_x1=280, S0_y1=320 *) GND #() \*  ( n_280_320 );
    (* S0_x1=400, S0_y1=320 *) GND #() \*  ( n_400_320 );
    (* S0_x1=500, S0_y1=320 *) GND #() \*  ( n_500_320 );
    (* S0_x1=70, S0_y1=130 *) GND #() \*  ( n_70_130 );
    (* S0_x1=70, S0_y1=70, S0_x2=70, S0_y2=130 *) Vdc #(.U(12 V)) V1 ( n_70_70, n_70_130 );
    (* S0_x1=310, S0_y1=210, S0_x2=370, S0_y2=210 *) R #(.R(30 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R3 ( n_310_210, n_370_210 );
    (* S0_x1=190, S0_y1=210, S0_x2=250, S0_y2=210 *) R #(.R(30 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_190_210, n_250_210 );
    (* S0_x1=70, S0_y1=210, S0_x2=130, S0_y2=210 *) R #(.R(30 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_70_210, n_130_210 );
    (* S0_x1=160, S0_y1=320, S0_x2=160, S0_y2=260 *) C #(.C(30 nF),.V(),.Symbol(neutral)) C1 ( n_160_320, n_160_260 );
    (* S0_x1=280, S0_y1=320, S0_x2=280, S0_y2=260 *) C #(.C(30 nF),.V(),.Symbol(neutral)) C2 ( n_280_320, n_280_260 );
    (* S0_x1=400, S0_y1=320, S0_x2=400, S0_y2=260 *) C #(.C(30 nF),.V(),.Symbol(neutral)) C3 ( n_400_320, n_400_260 );
    (*  *) \.TR  #(.Type(lin),.Start(0),.Stop(20 ms),.Points(500),.IntegrationMethod(Trapezoidal),.Order(2),.InitialStep(1 ns),.MinStep(1e-16),.MaxIter(150),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.Temp(26.85),.LTEreltol(1e-3),.LTEabstol(1e-6),.LTEfactor(1),.Solver(CroutLU),.relaxTSR(no),.initialDC(yes),.MaxStep(0)) TR1 (  );
    (* S0_x1=500, S0_y1=130, S0_x2=500, S0_y2=70 *) R #(.R(10 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R4 ( n_500_130, n_500_70 );
    (* S0_x1=470, S0_y1=210, S0_x2=500, S0_y2=180, S0_x3=500, S0_y3=240 *) _BJT #(.Type(npn),.Is(1e-16),.Nf(1),.Nr(1),.Ikf(0),.Ikr(0),.Vaf(0),.Var(0),.Ise(0),.Ne(1.5),.Isc(0),.Nc(2),.Bf(200),.Br(1),.Rbm(0),.Irb(0),.Rc(0),.Re(0),.Rb(1),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(0.0),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(0.0),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) T1 ( n_470_210, n_500_180, n_500_240 );
    (* S0_x1=370, S0_y1=210, S0_x2=400, S0_y2=210 *) net #() net1 ( n_370_210, n_400_210 );
    (* S0_x1=400, S0_y1=210, S0_x2=400, S0_y2=260 *) net #() net2 ( n_400_210, n_400_260 );
    (* S0_x1=250, S0_y1=210, S0_x2=280, S0_y2=210 *) net #() net3 ( n_250_210, n_280_210 );
    (* S0_x1=280, S0_y1=210, S0_x2=310, S0_y2=210 *) net #() net4 ( n_280_210, n_310_210 );
    (* S0_x1=280, S0_y1=210, S0_x2=280, S0_y2=260 *) net #() net5 ( n_280_210, n_280_260 );
    (* S0_x1=160, S0_y1=210, S0_x2=190, S0_y2=210 *) net #() net6 ( n_160_210, n_190_210 );
    (* S0_x1=160, S0_y1=210, S0_x2=160, S0_y2=260 *) net #() net7 ( n_160_210, n_160_260 );
    (* S0_x1=70, S0_y1=50, S0_x2=70, S0_y2=70 *) net #() net8 ( n_70_50, n_70_70 );
    (* S0_x1=500, S0_y1=240, S0_x2=500, S0_y2=320 *) net #() net9 ( n_500_240, n_500_320 );
    (* S0_x1=130, S0_y1=210, S0_x2=160, S0_y2=210 *) net #() net10 ( n_130_210, n_160_210 );
    (* S0_x1=70, S0_y1=180, S0_x2=500, S0_y2=180 *) net #() net11 ( n_70_180, n_500_180 );
    (* S0_x1=70, S0_y1=180, S0_x2=70, S0_y2=210 *) net #() net12 ( n_70_180, n_70_210 );
    (* S0_x1=400, S0_y1=210, S0_x2=470, S0_y2=210 *) net #() net13 ( n_400_210, n_470_210 );
    (* S0_x1=500, S0_y1=130, S0_x2=500, S0_y2=180 *) net #() net14 ( n_500_130, n_500_180 );
    (* S0_x1=500, S0_y1=50, S0_x2=500, S0_y2=70 *) net #() net15 ( n_500_50, n_500_70 );
    (* S0_x1=70, S0_y1=50, S0_x2=500, S0_y2=50 *) net #() net16 ( n_70_50, n_500_50 );
endmodule
