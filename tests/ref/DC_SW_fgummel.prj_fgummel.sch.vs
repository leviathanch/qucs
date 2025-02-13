module fgummel();
    wire n_40_130;
    wire n_40_160;
    wire n_40_190;
    wire n_50_250;
    wire n_80_340;
    wire n_150_130;
    wire n_180_60;
    wire n_180_100;
    wire n_180_130;
    wire n_180_160;
    wire n_180_190;
    wire n_210_130;
    wire n_270_130;
    wire n_270_160;
    wire n_270_190;
    wire n_360_60;
    wire n_360_130;
    wire n_360_160;
    wire n_360_190;
    wire n_450_50;
    (* S0_x1=40, S0_y1=130, S0_x2=40, S0_y2=190 *) Vdc #(.U(Vbe)) VBE ( n_40_130, n_40_190 );
    (* S0_x1=40, S0_y1=190 *) GND #() \*  ( n_40_190 );
    (* S0_x1=180, S0_y1=190 *) GND #() \*  ( n_180_190 );
    (* S0_x1=360, S0_y1=130, S0_x2=360, S0_y2=190 *) Vdc #(.U(Vbe)) VCE ( n_360_130, n_360_190 );
    (* S0_x1=360, S0_y1=190 *) GND #() \*  ( n_360_190 );
    (* S0_x1=270, S0_y1=130, S0_x2=270, S0_y2=190 *) Vdc #(.U(0 V)) VSUB ( n_270_130, n_270_190 );
    (* S0_x1=270, S0_y1=190 *) GND #() \*  ( n_270_190 );
    (* S0_x1=150, S0_y1=130, S0_x2=180, S0_y2=100, S0_x3=180, S0_y3=160, S0_x4=210, S0_y4=130 *) BJT #(.Type(npn),.Is(1e-16),.Nf(1),.Nr(1.3),.Ikf(40mA),.Ikr(1mA),.Vaf(40),.Var(30),.Ise(1e-16),.Ne(1.5),.Isc(1e-15),.Nc(2),.Bf(100),.Br(3.5),.Rbm(1.1),.Irb(1.5),.Rc(4),.Re(1),.Rb(5),.Cje(0),.Vje(0.75),.Mje(0.33),.Cjc(0),.Vjc(0.75),.Mjc(0.33),.Xcjc(1.0),.Cjs(0),.Vjs(0.75),.Mjs(0),.Fc(0.5),.Tf(2.5p),.Xtf(0.0),.Vtf(0.0),.Itf(0.0),.Tr(12p),.Temp(26.85),.Kf(0.0),.Af(1.0),.Ffe(1.0),.Kb(0.0),.Ab(1.0),.Fb(1.0),.Ptf(0.0),.Xtb(0.0),.Xti(3.0),.Eg(1.11),.Tnom(26.85),.Area(1.0)) T1 ( n_150_130, n_180_100, n_180_160, n_210_130 );
    (*  *) \.DC  #(.Temp(26.85),.reltol(0.001),.abstol(1 pA),.vntol(1 uV),.saveOPs(no),.MaxIter(150),.saveAll(no),.convHelper(none),.Solver(CroutLU)) DC1 (  );
    (*  *) Eqn #(.Ib(-VBE.I),.Beta(Ic/Ib),.Ic(-VCE.I),.Isub(-VSUB.I),.Export(yes)) Eqn1 (  );
    (*  *) \.SW  #(.Sim(DC1),.Type(lin),.Start(Vbe),.Stop(0.1),.Points(1.1),.Points(201)) SW1 (  );
    (* S0_x1=180, S0_y1=60, S0_x2=180, S0_y2=100 *) net #() net1 ( n_180_60, n_180_100 );
    (* S0_x1=40, S0_y1=130, S0_x2=150, S0_y2=130 *) net #() net2 ( n_40_130, n_150_130 );
    (* S0_x1=180, S0_y1=160, S0_x2=180, S0_y2=190 *) net #() net3 ( n_180_160, n_180_190 );
    (* S0_x1=360, S0_y1=60, S0_x2=360, S0_y2=130 *) net #() net4 ( n_360_60, n_360_130 );
    (* S0_x1=180, S0_y1=60, S0_x2=360, S0_y2=60 *) net #() net5 ( n_180_60, n_360_60 );
    (* S0_x1=210, S0_y1=130, S0_x2=270, S0_y2=130 *) net #() net6 ( n_210_130, n_270_130 );
endmodule
