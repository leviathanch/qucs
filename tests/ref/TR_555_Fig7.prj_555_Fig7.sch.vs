module 555_Fig7();
    wire n_160_160;
    wire n_160_200;
    wire n_160_230;
    wire n_160_260;
    wire n_160_290;
    wire n_160_300;
    wire n_160_330;
    wire n_160_360;
    wire n_260_290;
    wire n_260_590;
    wire n_290_290;
    wire n_290_320;
    wire n_290_350;
    wire n_300_160;
    wire n_300_190;
    wire n_300_220;
    wire n_390_250;
    wire n_410_370;
    wire n_410_470;
    wire n_410_500;
    wire n_410_530;
    wire n_410_540;
    wire n_420_250;
    wire n_420_290;
    wire n_420_370;
    wire n_470_310;
    wire n_550_250;
    wire n_550_290;
    wire n_550_330;
    wire n_550_370;
    wire n_580_160;
    wire n_580_250;
    wire n_580_290;
    wire n_580_310;
    wire n_580_330;
    wire n_590_370;
    wire n_590_400;
    wire n_590_430;
    wire n_670_310;
    wire n_670_590;
    wire n_790_150;
    (* S0_x1=420, S0_y1=250S0_x2=420, S0_y2=290S0_x3=420, S0_y3=330S0_x4=420, S0_y4=370S0_x5=550, S0_y5=370S0_x6=550, S0_y6=330S0_x7=550, S0_y7=290S0_x8=550, S0_y8=250 *) Sub #(.File(timer_555.sch)) SUB1 ( n_420_250, n_420_290, n_420_330, n_420_370, n_550_370, n_550_330, n_550_290, n_550_250 );
    (* S0_x1=590, S0_y1=430 *) GND #() \*  ( n_590_430 );
    (* S0_x1=160, S0_y1=360 *) GND #() \*  ( n_160_360 );
    (* S0_x1=300, S0_y1=220 *) GND #() \*  ( n_300_220 );
    (* S0_x1=290, S0_y1=350 *) GND #() \*  ( n_290_350 );
    (* S0_x1=390, S0_y1=250 *) GND #() \*  ( n_390_250 );
    (* S0_x1=160, S0_y1=260S0_x2=160, S0_y2=200 *) R #(.R(9.1k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_160_260, n_160_200 );
    (* S0_x1=290, S0_y1=290S0_x2=290, S0_y2=350 *) Vpulse #(.U1(5 V),.U2(0 V),.T1(0.3ms),.T2(0.35 ms),.Tr(5 ns),.Tf(5 ns)) V2 ( n_290_290, n_290_350 );
    (* S0_x1=410, S0_y1=470S0_x2=410, S0_y2=530 *) Vpulse #(.U1(5 V),.U2(0 V),.T1(0.1ms),.T2(0.15 ms),.Tr(1 ns),.Tf(5 ns)) V3 ( n_410_470, n_410_530 );
    (* S0_x1=410, S0_y1=540 *) GND #() \*  ( n_410_540 );
    (* S0_x1=300, S0_y1=160S0_x2=300, S0_y2=220 *) Vdc #(.U(5 V)) V1 ( n_300_160, n_300_220 );
    (* S0_x1=590, S0_y1=430S0_x2=590, S0_y2=370 *) C #(.C(0.01uF),.V(0V),.Symbol(neutral)) C2 ( n_590_430, n_590_370 );
    (* S0_x1=160, S0_y1=360S0_x2=160, S0_y2=300 *) C #(.C(0.01u),.V(0V),.Symbol(neutral)) C1 ( n_160_360, n_160_300 );
    (*  *) \.TR  #(.Type(lin),.Start(0),.Stop(0.6 ms),.Points(201),.IntegrationMethod(Gear),.Order(6),.InitialStep(1 ns),.MinStep(1e-16),.MaxIter(150),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.Temp(26.85),.LTEreltol(1e-3),.LTEabstol(1e-6),.LTEfactor(1),.Solver(CroutLU),.relaxTSR(no),.initialDC(yes),.MaxStep(0)) TR1 (  );
    (* S0_x1=550, S0_y1=370S0_x2=590, S0_y2=370 *) net #() net1 ( n_550_370, n_590_370 );
    (* S0_x1=160, S0_y1=160S0_x2=160, S0_y2=200 *) net #() net2 ( n_160_160, n_160_200 );
    (* S0_x1=160, S0_y1=160S0_x2=300, S0_y2=160 *) net #() net3 ( n_160_160, n_300_160 );
    (* S0_x1=580, S0_y1=160S0_x2=580, S0_y2=250 *) net #() net4 ( n_580_160, n_580_250 );
    (* S0_x1=550, S0_y1=250S0_x2=580, S0_y2=250 *) net #() net5 ( n_550_250, n_580_250 );
    (* S0_x1=160, S0_y1=260S0_x2=160, S0_y2=290 *) net #() net6 ( n_160_260, n_160_290 );
    (* S0_x1=300, S0_y1=160S0_x2=580, S0_y2=160 *) net #() net7 ( n_300_160, n_580_160 );
    (* S0_x1=550, S0_y1=290S0_x2=580, S0_y2=290 *) net #() net8 ( n_550_290, n_580_290 );
    (* S0_x1=580, S0_y1=290S0_x2=580, S0_y2=310 *) net #() net9 ( n_580_290, n_580_310 );
    (* S0_x1=550, S0_y1=330S0_x2=580, S0_y2=330 *) net #() net10 ( n_550_330, n_580_330 );
    (* S0_x1=160, S0_y1=290S0_x2=160, S0_y2=300 *) net #() net11 ( n_160_290, n_160_300 );
    (* S0_x1=580, S0_y1=310S0_x2=580, S0_y2=330 *) net #() net12 ( n_580_310, n_580_330 );
    (* S0_x1=390, S0_y1=250S0_x2=420, S0_y2=250 *) net #() net13 ( n_390_250, n_420_250 );
    (* S0_x1=290, S0_y1=290S0_x2=420, S0_y2=290 *) net #() net14 ( n_290_290, n_420_290 );
    (* S0_x1=410, S0_y1=370S0_x2=420, S0_y2=370 *) net #() net15 ( n_410_370, n_420_370 );
    (* S0_x1=410, S0_y1=370S0_x2=410, S0_y2=470 *) net #() net16 ( n_410_370, n_410_470 );
    (* S0_x1=410, S0_y1=530S0_x2=410, S0_y2=540 *) net #() net17 ( n_410_530, n_410_540 );
    (* S0_x1=580, S0_y1=310S0_x2=670, S0_y2=310 *) net #() net18 ( n_580_310, n_670_310 );
    (* S0_x1=670, S0_y1=310S0_x2=670, S0_y2=590 *) net #() vdis ( n_670_310, n_670_590 );
    (* S0_x1=160, S0_y1=290S0_x2=260, S0_y2=290 *) net #() net19 ( n_160_290, n_260_290 );
    (* S0_x1=260, S0_y1=290S0_x2=260, S0_y2=590 *) net #() net20 ( n_260_290, n_260_590 );
    (* S0_x1=260, S0_y1=590S0_x2=670, S0_y2=590 *) net #() net21 ( n_260_590, n_670_590 );
endmodule
