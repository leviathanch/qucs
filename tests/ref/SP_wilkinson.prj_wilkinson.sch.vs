module wilkinson();
    wire n_m10_210;
    wire n_60_80;
    wire n_60_110;
    wire n_60_140;
    wire n_100_80;
    wire n_130_80;
    wire n_140_230;
    wire n_160_80;
    wire n_180_40;
    wire n_180_80;
    wire n_180_140;
    wire n_200_40;
    wire n_200_140;
    wire n_230_40;
    wire n_230_140;
    wire n_260_40;
    wire n_260_140;
    wire n_300_40;
    wire n_300_60;
    wire n_300_90;
    wire n_300_120;
    wire n_300_140;
    wire n_410_40;
    wire n_410_70;
    wire n_410_100;
    wire n_410_140;
    wire n_410_170;
    wire n_410_200;
    (* S0_x1=60, S0_y1=80S0_x2=60, S0_y2=140 *) Pac #(.Num(1),.Z(50 Ohm),.P(0 dBm),.f(1 GHz),.Temp(26.85)) P1 ( n_60_80, n_60_140 );
    (* S0_x1=60, S0_y1=140 *) GND #() \*  ( n_60_140 );
    (* S0_x1=100, S0_y1=80S0_x2=160, S0_y2=80 *) TLIN #(.Z(50 Ohm),.L(100 mm),.Alpha(0 dB),.Temp(26.85)) Line1 ( n_100_80, n_160_80 );
    (* S0_x1=200, S0_y1=40S0_x2=260, S0_y2=40 *) TLIN #(.Z(70.7 Ohm),.L(75 mm),.Alpha(0 dB),.Temp(26.85)) Line2 ( n_200_40, n_260_40 );
    (* S0_x1=200, S0_y1=140S0_x2=260, S0_y2=140 *) TLIN #(.Z(70.7 Ohm),.L(75 mm),.Alpha(0 dB),.Temp(26.85)) Line3 ( n_200_140, n_260_140 );
    (* S0_x1=410, S0_y1=40S0_x2=410, S0_y2=100 *) Pac #(.Num(2),.Z(50 Ohm),.P(0 dBm),.f(1 GHz),.Temp(26.85)) P2 ( n_410_40, n_410_100 );
    (* S0_x1=410, S0_y1=140S0_x2=410, S0_y2=200 *) Pac #(.Num(3),.Z(50 Ohm),.P(0 dBm),.f(1 GHz),.Temp(26.85)) P3 ( n_410_140, n_410_200 );
    (* S0_x1=410, S0_y1=200 *) GND #() \*  ( n_410_200 );
    (* S0_x1=410, S0_y1=100 *) GND #() \*  ( n_410_100 );
    (* S0_x1=300, S0_y1=120S0_x2=300, S0_y2=60 *) R #(.R(100 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R1 ( n_300_120, n_300_60 );
    (*  *) \.SP  #(.Type(lin),.Start(0.1 MHz),.Stop(2 GHz),.Points(100),.Noise(no),.NoiseIP(1),.NoiseOP(2),.saveCVs(no),.saveAll(no)) SP1 (  );
    (*  *) Eqn #(.Attenuation2(dB(S[2,1])),.Reflect(dB(S[1,1])),.Attenuation3(dB(S[3,1])),.Decoupling(dB(S[3,2])),.Export(yes)) Eqn1 (  );
    (* S0_x1=180, S0_y1=40S0_x2=200, S0_y2=40 *) net #() net1 ( n_180_40, n_200_40 );
    (* S0_x1=180, S0_y1=40S0_x2=180, S0_y2=80 *) net #() net2 ( n_180_40, n_180_80 );
    (* S0_x1=180, S0_y1=140S0_x2=200, S0_y2=140 *) net #() net3 ( n_180_140, n_200_140 );
    (* S0_x1=260, S0_y1=40S0_x2=300, S0_y2=40 *) net #() net4 ( n_260_40, n_300_40 );
    (* S0_x1=260, S0_y1=140S0_x2=300, S0_y2=140 *) net #() net5 ( n_260_140, n_300_140 );
    (* S0_x1=60, S0_y1=80S0_x2=100, S0_y2=80 *) net #() net6 ( n_60_80, n_100_80 );
    (* S0_x1=180, S0_y1=80S0_x2=180, S0_y2=140 *) net #() net7 ( n_180_80, n_180_140 );
    (* S0_x1=160, S0_y1=80S0_x2=180, S0_y2=80 *) net #() net8 ( n_160_80, n_180_80 );
    (* S0_x1=300, S0_y1=140S0_x2=410, S0_y2=140 *) net #() net9 ( n_300_140, n_410_140 );
    (* S0_x1=300, S0_y1=120S0_x2=300, S0_y2=140 *) net #() net10 ( n_300_120, n_300_140 );
    (* S0_x1=300, S0_y1=40S0_x2=410, S0_y2=40 *) net #() net11 ( n_300_40, n_410_40 );
    (* S0_x1=300, S0_y1=40S0_x2=300, S0_y2=60 *) net #() net12 ( n_300_40, n_300_60 );
endmodule
