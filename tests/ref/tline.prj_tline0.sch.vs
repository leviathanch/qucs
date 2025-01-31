module tline0();
    wire n_290_300;
    wire n_290_350;
    wire n_290_430;
    wire n_290_460;
    wire n_290_490;
    wire n_290_550;
    wire n_300_280;
    wire n_310_300;
    wire n_310_760;
    wire n_390_350;
    wire n_420_350;
    wire n_450_350;
    wire n_480_300;
    wire n_480_350;
    wire n_490_280;
    wire n_500_300;
    wire n_660_350;
    wire n_690_350;
    wire n_720_350;
    wire n_910_300;
    wire n_910_350;
    wire n_920_280;
    wire n_930_300;
    wire n_980_350;
    wire n_1010_350;
    wire n_1040_350;
    wire n_1230_350;
    wire n_1230_680;
    (* S0_x1=290, S0_y1=550 *) GND #() \*  ( n_290_550 );
    (* S0_x1=500, S0_y1=300 *) GND #() \*3  ( n_500_300 );
    (* S0_x1=930, S0_y1=300 *) GND #() \*2  ( n_930_300 );
    (* S0_x1=310, S0_y1=300 *) GND #() \*4  ( n_310_300 );
    (*  *) \.TR  #(.Type(lin),.Start(0),.Stop(5 ns),.Points(1000),.IntegrationMethod(Trapezoidal),.Order(2),.InitialStep(1 ns),.MinStep(1e-16),.MaxIter(150),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.Temp(26.85),.LTEreltol(1e-3),.LTEabstol(1e-6),.LTEfactor(1),.Solver(CroutLU),.relaxTSR(no),.initialDC(yes),.MaxStep(0)) TR1 (  );
    (* S0_x1=660, S0_y1=350S0_x2=720, S0_y2=350 *) TLIN #(.Z(50 Ohm),.L(.1),.Alpha(0 dB),.Temp(26.85)) Line1 ( n_660_350, n_720_350 );
    (* S0_x1=390, S0_y1=350S0_x2=450, S0_y2=350 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_390_350, n_450_350 );
    (* S0_x1=480, S0_y1=300S0_x2=500, S0_y2=300 *) VProbe #() Pr2 ( n_480_300, n_500_300 );
    (* S0_x1=290, S0_y1=300S0_x2=310, S0_y2=300 *) VProbe #() Pr1 ( n_290_300, n_310_300 );
    (* S0_x1=910, S0_y1=300S0_x2=930, S0_y2=300 *) VProbe #() Pr3 ( n_910_300, n_930_300 );
    (* S0_x1=980, S0_y1=350S0_x2=1040, S0_y2=350 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_980_350, n_1040_350 );
    (* S0_x1=1230, S0_y1=680 *) GND #() \*1  ( n_1230_680 );
    (* S0_x1=290, S0_y1=430S0_x2=290, S0_y2=490 *) Vpulse #(.U1(0 V),.U2(1 V),.T1(1 ns),.T2(2 ns),.Tr(.1 ns),.Tf(.1 ns)) V1 ( n_290_430, n_290_490 );
    (* S0_x1=980, S0_y1=350S0_x2=1040, S0_y2=350 *) R #(.R(50),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_980_350, n_1040_350 );
    (* S0_x1=290, S0_y1=490S0_x2=290, S0_y2=550 *) netnet1 ( n_290_490, n_290_550 );
    (* S0_x1=450, S0_y1=350S0_x2=480, S0_y2=350 *) netnet2 ( n_450_350, n_480_350 );
    (* S0_x1=910, S0_y1=350S0_x2=980, S0_y2=350 *) netnet3 ( n_910_350, n_980_350 );
    (* S0_x1=720, S0_y1=350S0_x2=910, S0_y2=350 *) netnet4 ( n_720_350, n_910_350 );
    (* S0_x1=480, S0_y1=350S0_x2=660, S0_y2=350 *) netnet5 ( n_480_350, n_660_350 );
    (* S0_x1=290, S0_y1=350S0_x2=390, S0_y2=350 *) netnet6 ( n_290_350, n_390_350 );
    (* S0_x1=480, S0_y1=300S0_x2=480, S0_y2=350 *) netnet7 ( n_480_300, n_480_350 );
    (* S0_x1=290, S0_y1=300S0_x2=290, S0_y2=350 *) netnet8 ( n_290_300, n_290_350 );
    (* S0_x1=910, S0_y1=300S0_x2=910, S0_y2=350 *) netnet9 ( n_910_300, n_910_350 );
    (* S0_x1=290, S0_y1=350S0_x2=290, S0_y2=430 *) netnet10 ( n_290_350, n_290_430 );
    (* S0_x1=1040, S0_y1=350S0_x2=1230, S0_y2=350 *) netnet11 ( n_1040_350, n_1230_350 );
    (* S0_x1=1230, S0_y1=350S0_x2=1230, S0_y2=680 *) netnet12 ( n_1230_350, n_1230_680 );
endmodule
