module sawtooth-2();
    wire n_30_110;
    wire n_30_140;
    wire n_80_150;
    wire n_80_230;
    wire n_80_320;
    wire n_110_110;
    wire n_110_150;
    wire n_120_230;
    wire n_120_320;
    wire n_140_130;
    wire n_150_230;
    wire n_150_320;
    wire n_180_130;
    wire n_180_230;
    wire n_180_320;
    wire n_210_130;
    wire n_210_230;
    wire n_260_130;
    wire n_290_130;
    wire n_300_350;
    wire n_320_130;
    wire n_380_170;
    wire n_380_190;
    wire n_380_220;
    wire n_380_250;
    wire n_390_60;
    wire n_390_130;
    wire n_440_60;
    wire n_440_130;
    wire n_440_170;
    wire n_470_60;
    wire n_470_150;
    wire n_500_60;
    wire n_510_150;
    wire n_550_60;
    wire n_550_150;
    wire n_550_320;
    wire n_640_220;
    wire n_640_250;
    wire n_640_280;
    wire n_640_310;
    wire n_640_340;
    wire n_660_150;
    wire n_660_220;
    wire n_690_150;
    wire n_690_220;
    wire n_720_150;
    wire n_720_220;
    wire n_750_150;
    wire n_750_220;
    wire n_820_150;
    wire n_820_200;
    wire n_820_230;
    wire n_820_260;
    wire n_820_340;
    wire n_870_190;
    wire n_870_270;
    wire n_880_150;
    wire n_880_190;
    wire n_890_270;
    wire n_910_170;
    wire n_920_270;
    wire n_950_170;
    wire n_950_270;
    wire n_970_170;
    wire n_970_270;
    (* S0_x1=110, S0_y1=110, S0_x2=110, S0_y2=150, S0_x3=180, S0_y3=130 *) OpAmp #(.G(1e4),.Umax(15 V)) OP1 ( n_110_110, n_110_150, n_180_130 );
    (* S0_x1=440, S0_y1=130, S0_x2=440, S0_y2=170, S0_x3=510, S0_y3=150 *) OpAmp #(.G(1e4),.Umax(15 V)) OP2 ( n_440_130, n_440_170, n_510_150 );
    (* S0_x1=30, S0_y1=140 *) GND #() \*  ( n_30_140 );
    (* S0_x1=380, S0_y1=190, S0_x2=380, S0_y2=250 *) Vdc #(.U(-14.5 V)) V1 ( n_380_190, n_380_250 );
    (* S0_x1=380, S0_y1=250 *) GND #() \*  ( n_380_250 );
    (* S0_x1=120, S0_y1=320, S0_x2=180, S0_y2=320 *) R #(.R(100 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_120_320, n_180_320 );
    (* S0_x1=120, S0_y1=230, S0_x2=180, S0_y2=230 *) R #(.R(120 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_120_230, n_180_230 );
    (* S0_x1=440, S0_y1=60, S0_x2=500, S0_y2=60 *) C #(.C(1 pF),.V(),.Symbol(neutral)) C1 ( n_440_60, n_500_60 );
    (* S0_x1=260, S0_y1=130, S0_x2=320, S0_y2=130 *) R #(.R(43 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R3 ( n_260_130, n_320_130 );
    (* S0_x1=880, S0_y1=190, S0_x2=880, S0_y2=150, S0_x3=950, S0_y3=170 *) OpAmp #(.G(1e6),.Umax(15 V)) OP3 ( n_880_190, n_880_150, n_950_170 );
    (* S0_x1=890, S0_y1=270, S0_x2=950, S0_y2=270 *) R #(.R(100 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R4 ( n_890_270, n_950_270 );
    (* S0_x1=640, S0_y1=250, S0_x2=640, S0_y2=310 *) Vdc #(.U(0.6 V)) V2 ( n_640_250, n_640_310 );
    (* S0_x1=640, S0_y1=340 *) GND #() \*  ( n_640_340 );
    (* S0_x1=660, S0_y1=220, S0_x2=720, S0_y2=220 *) R #(.R(100 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R5 ( n_660_220, n_720_220 );
    (* S0_x1=820, S0_y1=340 *) GND #() \*  ( n_820_340 );
    (* S0_x1=820, S0_y1=260, S0_x2=820, S0_y2=200 *) R #(.R(47.4 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R6 ( n_820_260, n_820_200 );
    (* S0_x1=660, S0_y1=150, S0_x2=720, S0_y2=150 *) R #(.R(924 kOhm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R7 ( n_660_150, n_720_150 );
    (*  *) \.TR  #(.Type(lin),.Start(0),.Stop(10u),.Points(1001),.IntegrationMethod(Gear),.Order(1),.InitialStep(1 ns),.MinStep(1e-16),.MaxIter(150),.reltol(0.01),.abstol(100 pA),.vntol(100 uV),.Temp(26.85),.LTEreltol(1e-2),.LTEabstol(1e-5),.LTEfactor(1),.Solver(CroutLU),.relaxTSR(yes),.initialDC(no),.MaxStep(0)) TR1 (  );
    (* S0_x1=180, S0_y1=130, S0_x2=210, S0_y2=130 *) net #() net1 ( n_180_130, n_210_130 );
    (* S0_x1=80, S0_y1=150, S0_x2=80, S0_y2=230 *) net #() net2 ( n_80_150, n_80_230 );
    (* S0_x1=80, S0_y1=150, S0_x2=110, S0_y2=150 *) net #() net3 ( n_80_150, n_110_150 );
    (* S0_x1=80, S0_y1=230, S0_x2=120, S0_y2=230 *) net #() net4 ( n_80_230, n_120_230 );
    (* S0_x1=80, S0_y1=320, S0_x2=120, S0_y2=320 *) net #() net5 ( n_80_320, n_120_320 );
    (* S0_x1=80, S0_y1=230, S0_x2=80, S0_y2=320 *) net #() net6 ( n_80_230, n_80_320 );
    (* S0_x1=180, S0_y1=320, S0_x2=550, S0_y2=320 *) net #() net7 ( n_180_320, n_550_320 );
    (* S0_x1=550, S0_y1=150, S0_x2=550, S0_y2=320 *) net #() net8 ( n_550_150, n_550_320 );
    (* S0_x1=210, S0_y1=130, S0_x2=210, S0_y2=230 *) net #() net9 ( n_210_130, n_210_230 );
    (* S0_x1=180, S0_y1=230, S0_x2=210, S0_y2=230 *) net #() net10 ( n_180_230, n_210_230 );
    (* S0_x1=390, S0_y1=60, S0_x2=390, S0_y2=130 *) net #() net11 ( n_390_60, n_390_130 );
    (* S0_x1=390, S0_y1=130, S0_x2=440, S0_y2=130 *) net #() net12 ( n_390_130, n_440_130 );
    (* S0_x1=510, S0_y1=150, S0_x2=550, S0_y2=150 *) net #() net13 ( n_510_150, n_550_150 );
    (* S0_x1=390, S0_y1=60, S0_x2=440, S0_y2=60 *) net #() net14 ( n_390_60, n_440_60 );
    (* S0_x1=500, S0_y1=60, S0_x2=550, S0_y2=60 *) net #() net15 ( n_500_60, n_550_60 );
    (* S0_x1=550, S0_y1=60, S0_x2=550, S0_y2=150 *) net #() net16 ( n_550_60, n_550_150 );
    (* S0_x1=30, S0_y1=110, S0_x2=30, S0_y2=140 *) net #() net17 ( n_30_110, n_30_140 );
    (* S0_x1=30, S0_y1=110, S0_x2=110, S0_y2=110 *) net #() net18 ( n_30_110, n_110_110 );
    (* S0_x1=380, S0_y1=170, S0_x2=440, S0_y2=170 *) net #() net19 ( n_380_170, n_440_170 );
    (* S0_x1=380, S0_y1=170, S0_x2=380, S0_y2=190 *) net #() net20 ( n_380_170, n_380_190 );
    (* S0_x1=320, S0_y1=130, S0_x2=390, S0_y2=130 *) net #() net21 ( n_320_130, n_390_130 );
    (* S0_x1=210, S0_y1=130, S0_x2=260, S0_y2=130 *) net #() net22 ( n_210_130, n_260_130 );
    (* S0_x1=870, S0_y1=190, S0_x2=870, S0_y2=270 *) net #() net23 ( n_870_190, n_870_270 );
    (* S0_x1=870, S0_y1=190, S0_x2=880, S0_y2=190 *) net #() net24 ( n_870_190, n_880_190 );
    (* S0_x1=870, S0_y1=270, S0_x2=890, S0_y2=270 *) net #() net25 ( n_870_270, n_890_270 );
    (* S0_x1=950, S0_y1=170, S0_x2=970, S0_y2=170 *) net #() net26 ( n_950_170, n_970_170 );
    (* S0_x1=970, S0_y1=170, S0_x2=970, S0_y2=270 *) net #() net27 ( n_970_170, n_970_270 );
    (* S0_x1=950, S0_y1=270, S0_x2=970, S0_y2=270 *) net #() net28 ( n_950_270, n_970_270 );
    (* S0_x1=550, S0_y1=150, S0_x2=660, S0_y2=150 *) net #() net29 ( n_550_150, n_660_150 );
    (* S0_x1=750, S0_y1=150, S0_x2=750, S0_y2=220 *) net #() net30 ( n_750_150, n_750_220 );
    (* S0_x1=720, S0_y1=220, S0_x2=750, S0_y2=220 *) net #() net31 ( n_720_220, n_750_220 );
    (* S0_x1=720, S0_y1=150, S0_x2=750, S0_y2=150 *) net #() net32 ( n_720_150, n_750_150 );
    (* S0_x1=640, S0_y1=310, S0_x2=640, S0_y2=340 *) net #() net33 ( n_640_310, n_640_340 );
    (* S0_x1=640, S0_y1=220, S0_x2=640, S0_y2=250 *) net #() net34 ( n_640_220, n_640_250 );
    (* S0_x1=640, S0_y1=220, S0_x2=660, S0_y2=220 *) net #() net35 ( n_640_220, n_660_220 );
    (* S0_x1=750, S0_y1=150, S0_x2=820, S0_y2=150 *) net #() net36 ( n_750_150, n_820_150 );
    (* S0_x1=820, S0_y1=150, S0_x2=880, S0_y2=150 *) net #() net37 ( n_820_150, n_880_150 );
    (* S0_x1=820, S0_y1=150, S0_x2=820, S0_y2=200 *) net #() net38 ( n_820_150, n_820_200 );
    (* S0_x1=820, S0_y1=260, S0_x2=820, S0_y2=340 *) net #() net39 ( n_820_260, n_820_340 );
endmodule
