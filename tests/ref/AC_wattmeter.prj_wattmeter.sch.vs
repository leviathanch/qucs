module wattmeter();
    wire n_56_187;
    wire n_56_217;
    wire n_56_247;
    wire n_56_277;
    wire n_56_307;
    wire n_56_437;
    wire n_63_m26;
    wire n_186_187;
    wire n_206_207;
    wire n_206_217;
    wire n_216_187;
    wire n_226_207;
    wire n_226_437;
    wire n_246_187;
    wire n_306_187;
    wire n_306_227;
    wire n_306_257;
    wire n_306_287;
    wire n_306_437;
    wire n_406_187;
    wire n_406_227;
    wire n_406_257;
    wire n_406_287;
    wire n_406_347;
    wire n_406_377;
    wire n_406_407;
    wire n_406_437;
    wire n_516_187;
    wire n_516_227;
    wire n_516_257;
    wire n_516_287;
    wire n_516_347;
    wire n_516_377;
    wire n_516_407;
    wire n_516_437;
    (* S0_x1=56, S0_y1=247, S0_x2=56, S0_y2=307 *) Vac #(.U(150 V),.f(1 GHz),.Phase(0),.Theta(0)) V1 ( n_56_247, n_56_307 );
    (* S0_x1=56, S0_y1=437 *) GND #() \*  ( n_56_437 );
    (* S0_x1=306, S0_y1=287, S0_x2=306, S0_y2=227 *) R #(.R(15 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(US)) R1 ( n_306_287, n_306_227 );
    (* S0_x1=406, S0_y1=287, S0_x2=406, S0_y2=227 *) R #(.R(6 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(US)) R2 ( n_406_287, n_406_227 );
    (* S0_x1=516, S0_y1=287, S0_x2=516, S0_y2=227 *) R #(.R(8 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85),.Symbol(US)) R3 ( n_516_287, n_516_227 );
    (* S0_x1=516, S0_y1=407, S0_x2=516, S0_y2=347 *) C #(.C(177 uF),.V(),.Symbol(neutral)) C1 ( n_516_407, n_516_347 );
    (* S0_x1=186, S0_y1=187, S0_x2=246, S0_y2=187, S0_x3=206, S0_y3=207, S0_x4=226, S0_y4=207 *) WProbe #() PF ( n_186_187, n_246_187, n_206_207, n_226_207 );
    (*  *) \.AC  #(.Type(lin),.Start(100 Hz),.Stop(1000 Hz),.Points(10),.Noise(no)) AC1 (  );
    (* S0_x1=406, S0_y1=407, S0_x2=406, S0_y2=347 *) L #(.L(0.1 H),.I()) L1 ( n_406_407, n_406_347 );
    (* S0_x1=56, S0_y1=187, S0_x2=186, S0_y2=187 *) net #() net1 ( n_56_187, n_186_187 );
    (* S0_x1=516, S0_y1=187, S0_x2=516, S0_y2=227 *) net #() net2 ( n_516_187, n_516_227 );
    (* S0_x1=516, S0_y1=287, S0_x2=516, S0_y2=347 *) net #() net3 ( n_516_287, n_516_347 );
    (* S0_x1=516, S0_y1=407, S0_x2=516, S0_y2=437 *) net #() net4 ( n_516_407, n_516_437 );
    (* S0_x1=56, S0_y1=307, S0_x2=56, S0_y2=437 *) net #() net5 ( n_56_307, n_56_437 );
    (* S0_x1=406, S0_y1=437, S0_x2=516, S0_y2=437 *) net #() net6 ( n_406_437, n_516_437 );
    (* S0_x1=406, S0_y1=407, S0_x2=406, S0_y2=437 *) net #() net7 ( n_406_407, n_406_437 );
    (* S0_x1=406, S0_y1=287, S0_x2=406, S0_y2=347 *) net #() net8 ( n_406_287, n_406_347 );
    (* S0_x1=406, S0_y1=187, S0_x2=406, S0_y2=227 *) net #() net9 ( n_406_187, n_406_227 );
    (* S0_x1=246, S0_y1=187, S0_x2=306, S0_y2=187 *) net #() net10 ( n_246_187, n_306_187 );
    (* S0_x1=306, S0_y1=187, S0_x2=406, S0_y2=187 *) net #() net11 ( n_306_187, n_406_187 );
    (* S0_x1=306, S0_y1=187, S0_x2=306, S0_y2=227 *) net #() net12 ( n_306_187, n_306_227 );
    (* S0_x1=306, S0_y1=437, S0_x2=406, S0_y2=437 *) net #() net13 ( n_306_437, n_406_437 );
    (* S0_x1=306, S0_y1=287, S0_x2=306, S0_y2=437 *) net #() net14 ( n_306_287, n_306_437 );
    (* S0_x1=206, S0_y1=207, S0_x2=206, S0_y2=217 *) net #() net15 ( n_206_207, n_206_217 );
    (* S0_x1=56, S0_y1=187, S0_x2=56, S0_y2=217 *) net #() net16 ( n_56_187, n_56_217 );
    (* S0_x1=56, S0_y1=217, S0_x2=56, S0_y2=247 *) net #() net17 ( n_56_217, n_56_247 );
    (* S0_x1=56, S0_y1=217, S0_x2=206, S0_y2=217 *) net #() net18 ( n_56_217, n_206_217 );
    (* S0_x1=56, S0_y1=437, S0_x2=226, S0_y2=437 *) net #() net19 ( n_56_437, n_226_437 );
    (* S0_x1=226, S0_y1=437, S0_x2=306, S0_y2=437 *) net #() net20 ( n_226_437, n_306_437 );
    (* S0_x1=226, S0_y1=207, S0_x2=226, S0_y2=437 *) net #() net21 ( n_226_207, n_226_437 );
    (* S0_x1=406, S0_y1=187, S0_x2=516, S0_y2=187 *) net #() net22 ( n_406_187, n_516_187 );
endmodule
