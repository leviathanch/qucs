module timer_trig(.Pcomp_vp1(n_140_140), .Pcomp_vn1(n_140_200), .comp_vout1(n_440_165));
    inout n_140_140;
    inout n_140_200;
    inout n_440_165;
    wire n_120_80;
    wire n_160_80;
    wire n_160_110;
    wire n_160_140;
    wire n_175_140;
    wire n_175_145;
    wire n_175_185;
    wire n_175_200;
    wire n_210_145;
    wire n_210_185;
    wire n_240_165;
    wire n_280_165;
    wire n_320_165;
    wire n_350_165;
    wire n_380_165;
    wire n_410_165;
    wire n_410_180;
    wire n_410_210;
    wire n_410_240;
    wire n_410_245;
    (* S0_x1=140, S0_y1=140 *) Port #(.Num(1),.Type(analog)) Pcomp_vp1 ( n_140_140 );
    (* S0_x1=140, S0_y1=200 *) Port #(.Num(2),.Type(analog)) Pcomp_vn1 ( n_140_200 );
    (* S0_x1=120, S0_y1=80 *) GND #() \*  ( n_120_80 );
    (* S0_x1=160, S0_y1=140S0_x2=160, S0_y2=80 *) Idc #(.I(500 nA)) I1 ( n_160_140, n_160_80 );
    (* S0_x1=320, S0_y1=165S0_x2=380, S0_y2=165 *) R #(.R(1k),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(european)) R4 ( n_320_165, n_380_165 );
    (* S0_x1=410, S0_y1=245 *) GND #() \*  ( n_410_245 );
    (* S0_x1=440, S0_y1=165 *) Port #(.Num(3),.Type(analog)) comp_vout1 ( n_440_165 );
    (* S0_x1=210, S0_y1=185S0_x2=210, S0_y2=145S0_x3=280, S0_y3=165 *) OpAmp #(.G(1e6),.Umax(1 V)) OP1 ( n_210_185, n_210_145, n_280_165 );
    (* S0_x1=410, S0_y1=240S0_x2=410, S0_y2=180 *) C #(.C(1 nF),.V(),.Symbol(neutral)) C1 ( n_410_240, n_410_180 );
    (* S0_x1=140, S0_y1=140S0_x2=160, S0_y2=140 *) net #() net1 ( n_140_140, n_160_140 );
    (* S0_x1=140, S0_y1=200S0_x2=175, S0_y2=200 *) net #() net2 ( n_140_200, n_175_200 );
    (* S0_x1=160, S0_y1=140S0_x2=175, S0_y2=140 *) net #() net3 ( n_160_140, n_175_140 );
    (* S0_x1=120, S0_y1=80S0_x2=160, S0_y2=80 *) net #() net4 ( n_120_80, n_160_80 );
    (* S0_x1=175, S0_y1=145S0_x2=210, S0_y2=145 *) net #() net5 ( n_175_145, n_210_145 );
    (* S0_x1=175, S0_y1=140S0_x2=175, S0_y2=145 *) net #() net6 ( n_175_140, n_175_145 );
    (* S0_x1=175, S0_y1=185S0_x2=210, S0_y2=185 *) net #() net7 ( n_175_185, n_210_185 );
    (* S0_x1=175, S0_y1=185S0_x2=175, S0_y2=200 *) net #() net8 ( n_175_185, n_175_200 );
    (* S0_x1=280, S0_y1=165S0_x2=320, S0_y2=165 *) net #() net9 ( n_280_165, n_320_165 );
    (* S0_x1=380, S0_y1=165S0_x2=410, S0_y2=165 *) net #() net10 ( n_380_165, n_410_165 );
    (* S0_x1=410, S0_y1=240S0_x2=410, S0_y2=245 *) net #() net11 ( n_410_240, n_410_245 );
    (* S0_x1=410, S0_y1=165S0_x2=440, S0_y2=165 *) net #() net12 ( n_410_165, n_440_165 );
    (* S0_x1=410, S0_y1=165S0_x2=410, S0_y2=180 *) net #() net13 ( n_410_165, n_410_180 );
endmodule
