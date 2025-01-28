module active_lp();
    wire n_40_210;
    wire n_40_280;
    wire n_40_310;
    wire n_40_340;
    wire n_60_210;
    wire n_90_210;
    wire n_100_360;
    wire n_120_100;
    wire n_120_210;
    wire n_130_100;
    wire n_150_210;
    wire n_160_100;
    wire n_180_210;
    wire n_190_100;
    wire n_190_170;
    wire n_190_210;
    wire n_190_250;
    wire n_190_280;
    wire n_190_310;
    wire n_200_170;
    wire n_200_210;
    wire n_230_190;
    wire n_270_100;
    wire n_270_190;
    wire n_300_190;
    wire n_300_330;
    wire n_330_80;
    wire n_330_190;
    wire n_340_80;
    wire n_360_190;
    wire n_370_80;
    wire n_390_190;
    wire n_400_80;
    wire n_400_150;
    wire n_400_190;
    wire n_400_230;
    wire n_400_260;
    wire n_400_290;
    wire n_410_150;
    wire n_410_190;
    wire n_440_170;
    wire n_460_290;
    wire n_480_80;
    wire n_480_170;
    wire n_510_170;
    wire n_540_60;
    wire n_540_170;
    wire n_550_60;
    wire n_570_170;
    wire n_580_60;
    wire n_600_170;
    wire n_610_60;
    wire n_610_130;
    wire n_610_170;
    wire n_610_210;
    wire n_610_240;
    wire n_610_270;
    wire n_620_130;
    wire n_620_170;
    wire n_650_150;
    wire n_690_60;
    wire n_690_150;
    (* S0_x1=60, S0_y1=210S0_x2=120, S0_y2=210 *) R #(.R(10k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_60_210, n_120_210 );
    (* S0_x1=120, S0_y1=210S0_x2=180, S0_y2=210 *) R #(.R(10k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_120_210, n_180_210 );
    (* S0_x1=200, S0_y1=170S0_x2=200, S0_y2=210S0_x3=270, S0_y3=190 *) OpAmp #(.G(1e6),.Umax(15 V)) OP1 ( n_200_170, n_200_210, n_270_190 );
    (* S0_x1=190, S0_y1=310S0_x2=190, S0_y2=250 *) C #(.C(29.62n),.V(),.Symbol(neutral)) C4 ( n_190_310, n_190_250 );
    (* S0_x1=190, S0_y1=310 *) GND #() \*  ( n_190_310 );
    (* S0_x1=130, S0_y1=100S0_x2=190, S0_y2=100 *) C #(.C(68.6n),.V(),.Symbol(neutral)) C1 ( n_130_100, n_190_100 );
    (* S0_x1=40, S0_y1=280S0_x2=40, S0_y2=340 *) Vac #(.U(1 V),.f(1 GHz),.Phase(0),.Theta(0)) V1 ( n_40_280, n_40_340 );
    (* S0_x1=40, S0_y1=340 *) GND #() \*  ( n_40_340 );
    (* S0_x1=270, S0_y1=190S0_x2=330, S0_y2=190 *) R #(.R(10k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R3 ( n_270_190, n_330_190 );
    (* S0_x1=330, S0_y1=190S0_x2=390, S0_y2=190 *) R #(.R(10k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R4 ( n_330_190, n_390_190 );
    (* S0_x1=410, S0_y1=150S0_x2=410, S0_y2=190S0_x3=480, S0_y3=170 *) OpAmp #(.G(1e6),.Umax(15 V)) OP2 ( n_410_150, n_410_190, n_480_170 );
    (* S0_x1=400, S0_y1=290S0_x2=400, S0_y2=230 *) C #(.C(4.85n),.V(),.Symbol(neutral)) C5 ( n_400_290, n_400_230 );
    (* S0_x1=400, S0_y1=290 *) GND #() \*  ( n_400_290 );
    (* S0_x1=340, S0_y1=80S0_x2=400, S0_y2=80 *) C #(.C(93.7n),.V(),.Symbol(neutral)) C2 ( n_340_80, n_400_80 );
    (* S0_x1=480, S0_y1=170S0_x2=540, S0_y2=170 *) R #(.R(10k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R5 ( n_480_170, n_540_170 );
    (* S0_x1=540, S0_y1=170S0_x2=600, S0_y2=170 *) R #(.R(10k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R6 ( n_540_170, n_600_170 );
    (* S0_x1=620, S0_y1=130S0_x2=620, S0_y2=170S0_x3=690, S0_y3=150 *) OpAmp #(.G(1e6),.Umax(15 V)) OP3 ( n_620_130, n_620_170, n_690_150 );
    (* S0_x1=610, S0_y1=270S0_x2=610, S0_y2=210 *) C #(.C(1n),.V(),.Symbol(neutral)) C6 ( n_610_270, n_610_210 );
    (* S0_x1=610, S0_y1=270 *) GND #() \*  ( n_610_270 );
    (* S0_x1=550, S0_y1=60S0_x2=610, S0_y2=60 *) C #(.C(256n),.V(),.Symbol(neutral)) C3 ( n_550_60, n_610_60 );
    (*  *) \.AC  #(.Type(log),.Start(1 Hz),.Stop(10 kHz),.Points(201),.Noise(no)) AC1 (  );
    (*  *) Eqn #(.Ampl(dB(Output.v)),.Phase(phase(Output.v)),.Export(yes)) Eqn1 (  );
    (*  *) \.DC  #(.Temp(26.85),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.saveOPs(no),.MaxIter(150),.saveAll(no),.convHelper(none),.Solver(CroutLU)) DC1 (  );
    (* S0_x1=180, S0_y1=210S0_x2=190, S0_y2=210 *) netnet1 ( n_180_210, n_190_210 );
    (* S0_x1=190, S0_y1=210S0_x2=200, S0_y2=210 *) netnet2 ( n_190_210, n_200_210 );
    (* S0_x1=190, S0_y1=210S0_x2=190, S0_y2=250 *) netnet3 ( n_190_210, n_190_250 );
    (* S0_x1=190, S0_y1=100S0_x2=270, S0_y2=100 *) netnet4 ( n_190_100, n_270_100 );
    (* S0_x1=270, S0_y1=100S0_x2=270, S0_y2=190 *) netnet5 ( n_270_100, n_270_190 );
    (* S0_x1=120, S0_y1=100S0_x2=120, S0_y2=210 *) netnet6 ( n_120_100, n_120_210 );
    (* S0_x1=120, S0_y1=100S0_x2=130, S0_y2=100 *) netnet7 ( n_120_100, n_130_100 );
    (* S0_x1=190, S0_y1=100S0_x2=190, S0_y2=170 *) netnet8 ( n_190_100, n_190_170 );
    (* S0_x1=190, S0_y1=170S0_x2=200, S0_y2=170 *) netnet9 ( n_190_170, n_200_170 );
    (* S0_x1=40, S0_y1=210S0_x2=60, S0_y2=210 *) netnet10 ( n_40_210, n_60_210 );
    (* S0_x1=40, S0_y1=210S0_x2=40, S0_y2=280 *) netnet11 ( n_40_210, n_40_280 );
    (* S0_x1=390, S0_y1=190S0_x2=400, S0_y2=190 *) netnet12 ( n_390_190, n_400_190 );
    (* S0_x1=400, S0_y1=190S0_x2=410, S0_y2=190 *) netnet13 ( n_400_190, n_410_190 );
    (* S0_x1=400, S0_y1=190S0_x2=400, S0_y2=230 *) netnet14 ( n_400_190, n_400_230 );
    (* S0_x1=400, S0_y1=80S0_x2=480, S0_y2=80 *) netnet15 ( n_400_80, n_480_80 );
    (* S0_x1=480, S0_y1=80S0_x2=480, S0_y2=170 *) netnet16 ( n_480_80, n_480_170 );
    (* S0_x1=330, S0_y1=80S0_x2=340, S0_y2=80 *) netnet17 ( n_330_80, n_340_80 );
    (* S0_x1=330, S0_y1=80S0_x2=330, S0_y2=190 *) netnet18 ( n_330_80, n_330_190 );
    (* S0_x1=400, S0_y1=80S0_x2=400, S0_y2=150 *) netnet19 ( n_400_80, n_400_150 );
    (* S0_x1=400, S0_y1=150S0_x2=410, S0_y2=150 *) netnet20 ( n_400_150, n_410_150 );
    (* S0_x1=600, S0_y1=170S0_x2=610, S0_y2=170 *) netnet21 ( n_600_170, n_610_170 );
    (* S0_x1=610, S0_y1=170S0_x2=620, S0_y2=170 *) netnet22 ( n_610_170, n_620_170 );
    (* S0_x1=610, S0_y1=170S0_x2=610, S0_y2=210 *) netnet23 ( n_610_170, n_610_210 );
    (* S0_x1=610, S0_y1=60S0_x2=690, S0_y2=60 *) netOutput ( n_610_60, n_690_60 );
    (* S0_x1=690, S0_y1=60S0_x2=690, S0_y2=150 *) netnet24 ( n_690_60, n_690_150 );
    (* S0_x1=540, S0_y1=60S0_x2=540, S0_y2=170 *) netnet25 ( n_540_60, n_540_170 );
    (* S0_x1=540, S0_y1=60S0_x2=550, S0_y2=60 *) netnet26 ( n_540_60, n_550_60 );
    (* S0_x1=610, S0_y1=60S0_x2=610, S0_y2=130 *) netnet27 ( n_610_60, n_610_130 );
    (* S0_x1=610, S0_y1=130S0_x2=620, S0_y2=130 *) netnet28 ( n_610_130, n_620_130 );
endmodule
