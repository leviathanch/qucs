module main();
Vdc #(.U(1 V)) V1(_net4, gnd);
GND #() *(gnd);
R #(.R(50 Ohm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(US)) R1(_net5, gnd);
Lib$Ideal$Notch2 #(.Lib(Ideal), .Component(Notch2), .fc(1E3), .Q(1)) IB1(_net4, _net5);
//DC1
// `ifdef QUCS_DIAGRAMS
// Tab
// Tab
// `endif
endmodule // main

paramset Sub ModelFactory;
endparmset //Sub

paramset Verilog ModelFactory;
endparmset //Verilog

module Symbol();
endmodule // Symbol

