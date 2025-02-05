module libparam();
    wire n_140_200;
    wire n_140_220;
    wire n_140_250;
    wire n_140_280;
    wire n_140_300;
    wire n_140_320;
    wire n_140_380;
    wire n_220_200;
    wire n_250_200;
    wire n_280_200;
    wire n_340_200;
    wire n_340_220;
    wire n_340_250;
    wire n_340_280;
    wire n_340_300;
    (* S0_x1=140, S0_y1=220S0_x2=140, S0_y2=280 *) Vdc #(.U(1 V)) V1 ( n_140_220, n_140_280 );
    (* S0_x1=140, S0_y1=320 *) GND #() \*  ( n_140_320 );
    (* S0_x1=340, S0_y1=220S0_x2=340, S0_y2=280 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(US)) R1 ( n_340_220, n_340_280 );
    (*  *) Lib #(.Lib(Ideal),.Comp(Notch2)) IB1 (  );
    (*  *) \.DC  #(.Temp(26.85),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.saveOPs(no),.MaxIter(150),.saveAll(no),.convHelper(none),.Solver(CroutLU)) DC1 (  );
    (* S0_x1=140, S0_y1=280S0_x2=140, S0_y2=300 *) net #() net1 ( n_140_280, n_140_300 );
    (* S0_x1=140, S0_y1=300S0_x2=140, S0_y2=320 *) net #() net2 ( n_140_300, n_140_320 );
    (* S0_x1=140, S0_y1=300S0_x2=340, S0_y2=300 *) net #() net3 ( n_140_300, n_340_300 );
    (* S0_x1=340, S0_y1=280S0_x2=340, S0_y2=300 *) net #() net4 ( n_340_280, n_340_300 );
    (* S0_x1=140, S0_y1=200S0_x2=140, S0_y2=220 *) net #() net5 ( n_140_200, n_140_220 );
    (* S0_x1=140, S0_y1=200S0_x2=220, S0_y2=200 *) net #() net6 ( n_140_200, n_220_200 );
    (* S0_x1=340, S0_y1=200S0_x2=340, S0_y2=220 *) net #() net7 ( n_340_200, n_340_220 );
    (* S0_x1=280, S0_y1=200S0_x2=340, S0_y2=200 *) net #() net8 ( n_280_200, n_340_200 );
endmodule
