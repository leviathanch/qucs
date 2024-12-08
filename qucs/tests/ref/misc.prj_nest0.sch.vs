// VS::printSubckt main
module main();
Vdc #(.U(1 V), .$ty(18), .$tx(18), .$xposition(140), .$yposition(250), .$vflip(1), .$hflip(1), .$angle(450)) V1(net_140_220, net_140_280);
GND #(.$xposition(140), .$yposition(320), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_0(net_140_320);
R #(.R(50 Ohm), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(US), .$ty(15), .$tx(15), .$xposition(340), .$yposition(250), .$vflip(-1), .$hflip(1), .$angle(270)) R1(net_340_220, net_340_280);
//DC1
Sub #(.$tx(-20), .$ty(14), .File(nest1.sch), .$xposition(250), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(0)) SC1(net_220_200, net_280_200);
wire #(.$vscale(20), .$xposition(140), .$yposition(280), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_140_280, net_140_300);
wire #(.$vscale(20), .$xposition(140), .$yposition(300), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_140_300, net_140_320);
wire #(.$vscale(200), .$xposition(140), .$yposition(300), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_140_300, net_340_300);
wire #(.$vscale(20), .$xposition(340), .$yposition(280), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_340_280, net_340_300);
wire #(.$vscale(20), .$xposition(140), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_140_200, net_140_220);
wire #(.$tx(70), .$ty(-30), .netname(in), .$vscale(80), .$xposition(140), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_140_200, net_220_200);
wire #(.$vscale(20), .$xposition(340), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_340_200, net_340_220);
wire #(.$vscale(60), .$xposition(280), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_280_200, net_340_200);
wire #(.$tx(30), .$ty(-30), .netname(out), .$vscale(0), .$xposition(340), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_340_200, net_340_200);
place #(.$xposition(140), .$yposition(220)) net_140_220(net_140_220);
place #(.$xposition(140), .$yposition(280)) net_140_280(net_140_280);
place #(.$xposition(140), .$yposition(320)) net_140_320(net_140_320);
place #(.$xposition(340), .$yposition(220)) net_340_220(net_340_220);
place #(.$xposition(340), .$yposition(280)) net_340_280(net_340_280);
place #(.$xposition(220), .$yposition(200)) net_220_200(net_220_200);
place #(.$xposition(280), .$yposition(200)) net_280_200(net_280_200);
place #(.$xposition(140), .$yposition(300)) net_140_300(net_140_300);
place #(.$xposition(340), .$yposition(300)) net_340_300(net_340_300);
place #(.$xposition(140), .$yposition(200)) net_140_200(net_140_200);
place #(.$xposition(340), .$yposition(200)) net_340_200(net_340_200);
endmodule // main

