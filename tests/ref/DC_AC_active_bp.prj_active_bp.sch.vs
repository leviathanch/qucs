module active_bp();
    wire n_60_140;
    wire n_60_200;
    wire n_60_230;
    wire n_60_260;
    wire n_100_140;
    wire n_130_140;
    wire n_160_140;
    wire n_180_50;
    wire n_180_60;
    wire n_180_90;
    wire n_180_120;
    wire n_180_140;
    wire n_180_200;
    wire n_180_230;
    wire n_180_260;
    wire n_200_140;
    wire n_230_140;
    wire n_260_140;
    wire n_300_50;
    wire n_300_60;
    wire n_300_90;
    wire n_300_120;
    wire n_300_140;
    wire n_300_180;
    wire n_340_140;
    wire n_340_180;
    wire n_370_160;
    wire n_410_50;
    wire n_410_160;
    wire n_460_110;
    wire n_460_250;
    (* S0_x1=340, S0_y1=180S0_x2=340, S0_y2=140S0_x3=410, S0_y3=160 *) OpAmp #(.G(1e6),.Umax(15 V)) OP1 ( n_340_180, n_340_140, n_410_160 );
    (* S0_x1=300, S0_y1=180 *) GND #() \*  ( n_300_180 );
    (* S0_x1=180, S0_y1=260 *) GND #() \*  ( n_180_260 );
    (* S0_x1=60, S0_y1=260 *) GND #() \*  ( n_60_260 );
    (* S0_x1=60, S0_y1=200S0_x2=60, S0_y2=260 *) Vac #(.U(1 V),.f(1 GHz),.Phase(0),.Theta(0)) V1 ( n_60_200, n_60_260 );
    (* S0_x1=100, S0_y1=140S0_x2=160, S0_y2=140 *) R #(.R(390),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R3 ( n_100_140, n_160_140 );
    (* S0_x1=180, S0_y1=260S0_x2=180, S0_y2=200 *) R #(.R(5.6k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R2 ( n_180_260, n_180_200 );
    (* S0_x1=200, S0_y1=140S0_x2=260, S0_y2=140 *) C #(.C(47n),.V(),.Symbol(neutral)) C1 ( n_200_140, n_260_140 );
    (* S0_x1=180, S0_y1=120S0_x2=180, S0_y2=60 *) C #(.C(47n),.V(),.Symbol(neutral)) C2 ( n_180_120, n_180_60 );
    (* S0_x1=300, S0_y1=120S0_x2=300, S0_y2=60 *) R #(.R(3.9k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_300_120, n_300_60 );
    (*  *) \.AC  #(.Type(log),.Start(0.1 kHz),.Stop(100 kHz),.Points(200),.Noise(no)) AC1 (  );
    (*  *) \.DC  #(.Temp(26.85),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.saveOPs(no),.MaxIter(150),.saveAll(no),.convHelper(none),.Solver(CroutLU)) DC1 (  );
    (* S0_x1=160, S0_y1=140S0_x2=180, S0_y2=140 *) net #() net1 ( n_160_140, n_180_140 );
    (* S0_x1=180, S0_y1=140S0_x2=200, S0_y2=140 *) net #() net2 ( n_180_140, n_200_140 );
    (* S0_x1=180, S0_y1=120S0_x2=180, S0_y2=140 *) net #() net3 ( n_180_120, n_180_140 );
    (* S0_x1=180, S0_y1=140S0_x2=180, S0_y2=200 *) net #() net4 ( n_180_140, n_180_200 );
    (* S0_x1=260, S0_y1=140S0_x2=300, S0_y2=140 *) net #() net5 ( n_260_140, n_300_140 );
    (* S0_x1=300, S0_y1=140S0_x2=340, S0_y2=140 *) net #() net6 ( n_300_140, n_340_140 );
    (* S0_x1=300, S0_y1=120S0_x2=300, S0_y2=140 *) net #() net7 ( n_300_120, n_300_140 );
    (* S0_x1=300, S0_y1=180S0_x2=340, S0_y2=180 *) net #() net8 ( n_300_180, n_340_180 );
    (* S0_x1=60, S0_y1=140S0_x2=100, S0_y2=140 *) net #() net9 ( n_60_140, n_100_140 );
    (* S0_x1=60, S0_y1=140S0_x2=60, S0_y2=200 *) net #() net10 ( n_60_140, n_60_200 );
    (* S0_x1=300, S0_y1=50S0_x2=410, S0_y2=50 *) net #() net11 ( n_300_50, n_410_50 );
    (* S0_x1=300, S0_y1=50S0_x2=300, S0_y2=60 *) net #() net12 ( n_300_50, n_300_60 );
    (* S0_x1=410, S0_y1=50S0_x2=410, S0_y2=160 *) net #() Output ( n_410_50, n_410_160 );
    (* S0_x1=180, S0_y1=50S0_x2=300, S0_y2=50 *) net #() net13 ( n_180_50, n_300_50 );
    (* S0_x1=180, S0_y1=50S0_x2=180, S0_y2=60 *) net #() net14 ( n_180_50, n_180_60 );
endmodule
