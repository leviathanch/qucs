module main();
GND #() *(gnd);
Lib$Xyce$d_3f5 #(.Lib(Xyce), .Component(d_3f5)) d_3f52();
Lib$Xyce$ammeter #(.Lib(Xyce), .Component(ammeter)) ammeter1();
GND #() *(gnd);
Lib$Xyce$v_dc #(.Lib(Xyce), .Component(v_dc)) v_dc1();
// `ifdef QUCS_DIAGRAMS
// Rect
// Rect
// `endif
// `ifdef QUCS_DIAGRAMS
// Rect
// Rect
// `endif
endmodule // main

paramset Sub ModelFactory;
endparmset //Sub

paramset Verilog ModelFactory;
endparmset //Verilog

module Symbol();
endmodule // Symbol

