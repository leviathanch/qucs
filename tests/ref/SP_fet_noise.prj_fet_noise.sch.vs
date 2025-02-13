module fet_noise();
    wire n_40_110;
    wire n_40_150;
    wire n_40_180;
    wire n_40_210;
    wire n_100_110;
    wire n_130_110;
    wire n_160_110;
    wire n_180_110;
    wire n_180_150;
    wire n_180_180;
    wire n_180_210;
    wire n_200_110;
    wire n_220_110;
    wire n_240_130;
    wire n_260_90;
    wire n_310_220;
    wire n_400_90;
    wire n_400_110;
    wire n_400_140;
    wire n_400_170;
    (* S0_x1=240, S0_y1=130 *) GND #() \*  ( n_240_130 );
    (* S0_x1=200, S0_y1=110, S0_x2=260, S0_y2=90, S0_x3=240, S0_y3=130 *) Sub #(.File(fet.sch)) SUB1 ( n_200_110, n_260_90, n_240_130 );
    (* S0_x1=100, S0_y1=110, S0_x2=160, S0_y2=110 *) L #(.L(1.1 nH),.I()) L1 ( n_100_110, n_160_110 );
    (* S0_x1=180, S0_y1=210, S0_x2=180, S0_y2=150 *) L #(.L(4.0 nH),.I()) L2 ( n_180_210, n_180_150 );
    (* S0_x1=180, S0_y1=210 *) GND #() \*  ( n_180_210 );
    (* S0_x1=40, S0_y1=210 *) GND #() \*  ( n_40_210 );
    (* S0_x1=40, S0_y1=150, S0_x2=40, S0_y2=210 *) Pac #(.Num(1),.Z(50 Ohm),.P(0 dBm),.f(1 GHz),.Temp(26.85)) P1 ( n_40_150, n_40_210 );
    (* S0_x1=400, S0_y1=170 *) GND #() \*  ( n_400_170 );
    (* S0_x1=400, S0_y1=110, S0_x2=400, S0_y2=170 *) Pac #(.Num(2),.Z(50 Ohm),.P(0 dBm),.f(1 GHz),.Temp(26.85)) P2 ( n_400_110, n_400_170 );
    (*  *) \.SP  #(.Type(lin),.Start(1 GHz),.Stop(20 GHz),.Points(39),.Noise(yes),.NoiseIP(1),.NoiseOP(2),.saveCVs(no),.saveAll(no)) SP1 (  );
    (* S0_x1=160, S0_y1=110, S0_x2=180, S0_y2=110 *) net #() net1 ( n_160_110, n_180_110 );
    (* S0_x1=180, S0_y1=110, S0_x2=200, S0_y2=110 *) net #() net2 ( n_180_110, n_200_110 );
    (* S0_x1=180, S0_y1=110, S0_x2=180, S0_y2=150 *) net #() net3 ( n_180_110, n_180_150 );
    (* S0_x1=40, S0_y1=110, S0_x2=40, S0_y2=150 *) net #() net4 ( n_40_110, n_40_150 );
    (* S0_x1=40, S0_y1=110, S0_x2=100, S0_y2=110 *) net #() net5 ( n_40_110, n_100_110 );
    (* S0_x1=400, S0_y1=90, S0_x2=400, S0_y2=110 *) net #() net6 ( n_400_90, n_400_110 );
    (* S0_x1=260, S0_y1=90, S0_x2=400, S0_y2=90 *) net #() net7 ( n_260_90, n_400_90 );
endmodule
