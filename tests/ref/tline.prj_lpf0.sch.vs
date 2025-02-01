module lpf0();
    wire n_40_90;
    wire n_40_120;
    wire n_40_150;
    wire n_40_320;
    wire n_70_190;
    wire n_100_190;
    wire n_130_190;
    wire n_170_90;
    wire n_170_130;
    wire n_170_160;
    wire n_170_190;
    wire n_170_240;
    wire n_170_270;
    wire n_170_300;
    wire n_200_90;
    wire n_230_90;
    wire n_230_300;
    wire n_230_330;
    wire n_230_360;
    wire n_260_90;
    wire n_290_90;
    wire n_290_130;
    wire n_290_160;
    wire n_290_190;
    wire n_290_240;
    wire n_290_270;
    wire n_290_300;
    wire n_300_380;
    wire n_330_190;
    wire n_360_190;
    wire n_390_190;
    wire n_420_90;
    wire n_420_120;
    wire n_420_150;
    wire n_550_90;
    wire n_550_120;
    wire n_550_150;
    wire n_550_240;
    wire n_570_240;
    wire n_600_240;
    wire n_630_240;
    wire n_650_160;
    wire n_680_150;
    wire n_680_170;
    wire n_680_240;
    wire n_680_270;
    wire n_680_300;
    wire n_690_90;
    wire n_690_150;
    wire n_730_30;
    wire n_730_90;
    wire n_740_60;
    wire n_740_300;
    wire n_740_320;
    wire n_740_350;
    wire n_750_30;
    wire n_750_90;
    wire n_800_90;
    wire n_800_150;
    wire n_800_170;
    wire n_800_240;
    wire n_800_270;
    wire n_800_300;
    wire n_820_90;
    wire n_820_130;
    wire n_830_160;
    wire n_850_240;
    wire n_880_240;
    wire n_910_240;
    wire n_930_90;
    wire n_930_120;
    wire n_930_150;
    wire n_930_240;
    (* S0_x1=70, S0_y1=190S0_x2=130, S0_y2=190 *) L #(.L(5.228 nH),.I()) L2 ( n_70_190, n_130_190 );
    (* S0_x1=170, S0_y1=300S0_x2=170, S0_y2=240 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_170_300, n_170_240 );
    (* S0_x1=230, S0_y1=360S0_x2=230, S0_y2=300 *) C #(.C(4.182 pF),.V(),.Symbol(neutral)) C3 ( n_230_360, n_230_300 );
    (* S0_x1=170, S0_y1=190S0_x2=170, S0_y2=130 *) C #(.C(2.091 pF),.V(),.Symbol(neutral)) C1 ( n_170_190, n_170_130 );
    (* S0_x1=290, S0_y1=190S0_x2=290, S0_y2=130 *) C #(.C(2.091 pF),.V(),.Symbol(neutral)) C2 ( n_290_190, n_290_130 );
    (* S0_x1=330, S0_y1=190S0_x2=390, S0_y2=190 *) L #(.L(5.228 nH),.I()) L3 ( n_330_190, n_390_190 );
    (* S0_x1=290, S0_y1=300S0_x2=290, S0_y2=240 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_290_300, n_290_240 );
    (* S0_x1=230, S0_y1=360 *) GND #() \*  ( n_230_360 );
    (* S0_x1=420, S0_y1=90S0_x2=420, S0_y2=150 *) Pac #(.Num(2),.Z(50 Ohm),.P(0 dBm),.f(1 MHz),.Temp(26.85)) P2 ( n_420_90, n_420_150 );
    (* S0_x1=420, S0_y1=150 *) GND #() \*  ( n_420_150 );
    (* S0_x1=40, S0_y1=90S0_x2=40, S0_y2=150 *) Pac #(.Num(1),.Z(50 Ohm),.P(0 dBm),.f(1 MHz),.Temp(26.85)) P1 ( n_40_90, n_40_150 );
    (* S0_x1=40, S0_y1=150 *) GND #() \*  ( n_40_150 );
    (* S0_x1=70, S0_y1=190 *) GND #() \*  ( n_70_190 );
    (* S0_x1=390, S0_y1=190 *) GND #() \*  ( n_390_190 );
    (*  *) \.SP  #(.Type(log),.Start(10 MHz),.Stop(10000 MHz),.Points(200),.Noise(no),.NoiseIP(1),.NoiseOP(2),.saveCVs(no),.saveAll(no)) SP1 (  );
    (* S0_x1=200, S0_y1=90S0_x2=260, S0_y2=90 *) L #(.L(10.46 nH),.I()) L1 ( n_200_90, n_260_90 );
    (* S0_x1=680, S0_y1=300S0_x2=680, S0_y2=240 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R3 ( n_680_300, n_680_240 );
    (* S0_x1=800, S0_y1=300S0_x2=800, S0_y2=240 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R4 ( n_800_300, n_800_240 );
    (* S0_x1=930, S0_y1=150 *) GND #() \*  ( n_930_150 );
    (* S0_x1=550, S0_y1=150 *) GND #() \*  ( n_550_150 );
    (* S0_x1=550, S0_y1=240 *) GND #() \*  ( n_550_240 );
    (* S0_x1=570, S0_y1=240S0_x2=630, S0_y2=240 *) TLIN #(.Z(32.85 Ohm),.L(74.95 mm),.Alpha(0 dB),.Temp(26.85)) Line4 ( n_570_240, n_630_240 );
    (* S0_x1=930, S0_y1=240 *) GND #() \*  ( n_930_240 );
    (* S0_x1=850, S0_y1=240S0_x2=910, S0_y2=240 *) TLIN #(.Z(32.85 Ohm),.L(74.95 mm),.Alpha(0 dB),.Temp(26.85)) Line5 ( n_850_240, n_910_240 );
    (* S0_x1=740, S0_y1=320S0_x2=740, S0_y2=380 *) TLIN #(.Z(38.05 Ohm),.L(74.95 mm),.Alpha(0 dB),.Temp(26.85)) Line6 ( n_740_320, n_740_380 );
    (* S0_x1=550, S0_y1=90S0_x2=550, S0_y2=150 *) Pac #(.Num(3),.Z(50 Ohm),.P(0 dBm),.f(1 MHz),.Temp(26.85)) P3 ( n_550_90, n_550_150 );
    (* S0_x1=930, S0_y1=90S0_x2=930, S0_y2=150 *) Pac #(.Num(4),.Z(50 Ohm),.P(0 dBm),.f(1 MHz),.Temp(26.85)) P4 ( n_930_90, n_930_150 );
    (*  *) Eqn #(.dBS21(dB(S[2,1])),.dBS11(dB(S[1,1])),.dBS33(dB(S[3,3])),.dBS43(dB(S[4,3])),.Export(yes)) Eqn1 (  );
    (* S0_x1=750, S0_y1=30S0_x2=750, S0_y2=90S0_x3=730, S0_y3=90S0_x4=730, S0_y4=30 *) TLIN4P #(.Z(65.7 Ohm),.L(74.95 mm),.Alpha(0 dB),.Temp(26.85)) Line1 ( n_750_30, n_750_90, n_730_90, n_730_30 );
    (* S0_x1=860, S0_y1=170S0_x2=800, S0_y2=170S0_x3=800, S0_y3=150S0_x4=860, S0_y4=150 *) TLIN4P #(.Z(76.1 Ohm),.L(74.95 mm),.Alpha(0 dB),.Temp(26.85)) Line3 ( n_860_170, n_800_170, n_800_150, n_860_150 );
    (* S0_x1=680, S0_y1=170S0_x2=620, S0_y2=170S0_x3=620, S0_y3=150S0_x4=680, S0_y4=150 *) TLIN4P #(.Z(76.1 Ohm),.L(74.95 mm),.Alpha(0 dB),.Temp(26.85)) Line2 ( n_680_170, n_620_170, n_620_150, n_680_150 );
    (* S0_x1=130, S0_y1=190S0_x2=170, S0_y2=190 *) net #() net1 ( n_130_190, n_170_190 );
    (* S0_x1=170, S0_y1=90S0_x2=170, S0_y2=130 *) net #() net2 ( n_170_90, n_170_130 );
    (* S0_x1=170, S0_y1=90S0_x2=200, S0_y2=90 *) net #() net3 ( n_170_90, n_200_90 );
    (* S0_x1=260, S0_y1=90S0_x2=290, S0_y2=90 *) net #() net4 ( n_260_90, n_290_90 );
    (* S0_x1=290, S0_y1=90S0_x2=290, S0_y2=130 *) net #() net5 ( n_290_90, n_290_130 );
    (* S0_x1=290, S0_y1=190S0_x2=330, S0_y2=190 *) net #() net6 ( n_290_190, n_330_190 );
    (* S0_x1=170, S0_y1=190S0_x2=170, S0_y2=240 *) net #() net7 ( n_170_190, n_170_240 );
    (* S0_x1=290, S0_y1=190S0_x2=290, S0_y2=240 *) net #() net8 ( n_290_190, n_290_240 );
    (* S0_x1=230, S0_y1=300S0_x2=290, S0_y2=300 *) net #() net9 ( n_230_300, n_290_300 );
    (* S0_x1=170, S0_y1=300S0_x2=230, S0_y2=300 *) net #() net10 ( n_170_300, n_230_300 );
    (* S0_x1=290, S0_y1=90S0_x2=420, S0_y2=90 *) net #() net11 ( n_290_90, n_420_90 );
    (* S0_x1=40, S0_y1=90S0_x2=170, S0_y2=90 *) net #() net12 ( n_40_90, n_170_90 );
    (* S0_x1=680, S0_y1=300S0_x2=740, S0_y2=300 *) net #() net13 ( n_680_300, n_740_300 );
    (* S0_x1=550, S0_y1=90S0_x2=690, S0_y2=90 *) net #() net14 ( n_550_90, n_690_90 );
    (* S0_x1=730, S0_y1=30S0_x2=750, S0_y2=30 *) net #() net15 ( n_730_30, n_750_30 );
    (* S0_x1=750, S0_y1=90S0_x2=800, S0_y2=90 *) net #() net16 ( n_750_90, n_800_90 );
    (* S0_x1=680, S0_y1=170S0_x2=680, S0_y2=240 *) net #() net17 ( n_680_170, n_680_240 );
    (* S0_x1=630, S0_y1=240S0_x2=680, S0_y2=240 *) net #() net18 ( n_630_240, n_680_240 );
    (* S0_x1=550, S0_y1=240S0_x2=570, S0_y2=240 *) net #() net19 ( n_550_240, n_570_240 );
    (* S0_x1=800, S0_y1=240S0_x2=850, S0_y2=240 *) net #() net20 ( n_800_240, n_850_240 );
    (* S0_x1=800, S0_y1=170S0_x2=800, S0_y2=240 *) net #() net21 ( n_800_170, n_800_240 );
    (* S0_x1=910, S0_y1=240S0_x2=930, S0_y2=240 *) net #() net22 ( n_910_240, n_930_240 );
    (* S0_x1=740, S0_y1=300S0_x2=800, S0_y2=300 *) net #() net23 ( n_740_300, n_800_300 );
    (* S0_x1=740, S0_y1=300S0_x2=740, S0_y2=320 *) net #() net24 ( n_740_300, n_740_320 );
    (* S0_x1=820, S0_y1=90S0_x2=930, S0_y2=90 *) net #() net25 ( n_820_90, n_930_90 );
    (* S0_x1=820, S0_y1=90S0_x2=820, S0_y2=130 *) net #() net26 ( n_820_90, n_820_130 );
    (* S0_x1=800, S0_y1=90S0_x2=820, S0_y2=90 *) net #() net27 ( n_800_90, n_820_90 );
    (* S0_x1=800, S0_y1=90S0_x2=800, S0_y2=150 *) net #() net28 ( n_800_90, n_800_150 );
    (* S0_x1=690, S0_y1=90S0_x2=730, S0_y2=90 *) net #() net29 ( n_690_90, n_730_90 );
    (* S0_x1=690, S0_y1=90S0_x2=690, S0_y2=150 *) net #() net30 ( n_690_90, n_690_150 );
    (* S0_x1=680, S0_y1=150S0_x2=690, S0_y2=150 *) net #() net31 ( n_680_150, n_690_150 );
endmodule
