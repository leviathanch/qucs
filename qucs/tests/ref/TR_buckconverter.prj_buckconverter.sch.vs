// VS::printSubckt main
module main();
Vrect #(.U(1V), .TH(Ton), .TL(Toff), .Tr(1 ns), .Tf(1 ns), .Td(0 ns), .$ty(18), .$tx(18), .$xposition(130), .$yposition(290), .$vflip(1), .$hflip(1), .$angle(450)) V2(net_130_260, net_130_320);
GND #(.$xposition(130), .$yposition(360), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_0(net_130_360);
Vdc #(.U(12V), .$ty(18), .$tx(18), .$xposition(50), .$yposition(190), .$vflip(1), .$hflip(1), .$angle(450)) V1(net_50_160, net_50_220);
GND #(.$xposition(50), .$yposition(240), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_1(net_50_240);
Relais #(.Vt(0.5 V), .Vh(0.1 V), .Ron(1), .Roff(1e12), .Temp(26.85), .$ty(-26), .$tx(-26), .$xposition(200), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(90)) S1(net_170_200, net_170_140, net_230_140, net_230_200);
GND #(.$xposition(640), .$yposition(240), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_2(net_640_240);
Diode #(.Is(1e-12 A), .N(1), .Cj0(10 fF), .M(0.5), .Vj(0.7 V), .Fc(0.5), .Cp(0.0 fF), .Isr(0.0), .Nr(2.0), .Rs(0.0 Ohm), .Tt(0.0 ps), .Ikf(0), .Kf(0.0), .Af(1.0), .Ffe(1.0), .Bv(0), .Ibv(1 mA), .Temp(26.85), .Xti(3.0), .Eg(1.11), .Tbv(0.0), .Trs(0.0), .Ttt1(0.0), .Ttt2(0.0), .Tm1(0.0), .Tm2(0.0), .Tnom(26.85), .Area(1.0), .Symbol(normal), .$ty(-32), .$tx(-32), .$xposition(330), .$yposition(190), .$vflip(1), .$hflip(1), .$angle(270)) D1(net_330_160, net_330_220);
L #(.L(47uH), .I(0), .$ty(-26), .$tx(-26), .$xposition(410), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(0)) L1(net_380_140, net_440_140);
C #(.C(100u), .V(0), .Symbol(neutral), .$ty(17), .$tx(17), .$xposition(540), .$yposition(190), .$vflip(-1), .$hflip(1), .$angle(270)) C1(net_540_160, net_540_220);
R #(.R(5), .Temp(26.85), .Tc1(0.0), .Tc2(0.0), .Tnom(26.85), .Symbol(european), .$ty(15), .$tx(15), .$xposition(640), .$yposition(190), .$vflip(1), .$hflip(1), .$angle(90)) R1(net_640_220, net_640_160);
Eqn #(.Tmax(Bperiod*20), .Tstep(Bperiod/1000), .Export(yes), .$ty(-35), .$tx(-35), .$xposition(350), .$yposition(290), .$vflip(1), .$hflip(1), .$angle(0)) Eqn2();
//TR1
Eqn #(.Bfreq(40k), .Bperiod(1/Bfreq), .Bduty(50), .Ton(Bperiod*Bduty/100), .Toff(Bperiod-Ton), .Export(yes), .$ty(-35), .$tx(-35), .$xposition(530), .$yposition(510), .$vflip(1), .$hflip(1), .$angle(0)) Eqn1();
wire #(.$tx(30), .$ty(-30), .netname(dio), .$vscale(50), .$xposition(330), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_330_140, net_380_140);
wire #(.$vscale(20), .$xposition(330), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_330_140, net_330_160);
wire #(.$vscale(100), .$xposition(230), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_230_140, net_330_140);
wire #(.$vscale(40), .$xposition(230), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_230_200, net_270_200);
wire #(.$vscale(40), .$xposition(130), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_130_200, net_170_200);
wire #(.$vscale(160), .$xposition(270), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_270_200, net_270_360);
wire #(.$vscale(140), .$xposition(130), .$yposition(360), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_130_360, net_270_360);
wire #(.$tx(-50), .$ty(50), .netname(ctrl), .$vscale(60), .$xposition(130), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_130_200, net_130_260);
wire #(.$vscale(40), .$xposition(130), .$yposition(320), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_130_320, net_130_360);
wire #(.$vscale(120), .$xposition(50), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_50_140, net_170_140);
wire #(.$vscale(20), .$xposition(50), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_50_140, net_50_160);
wire #(.$vscale(20), .$xposition(50), .$yposition(220), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_50_220, net_50_240);
wire #(.$vscale(20), .$xposition(330), .$yposition(220), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_330_220, net_330_240);
wire #(.$vscale(20), .$xposition(640), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_640_140, net_640_160);
wire #(.$vscale(20), .$xposition(640), .$yposition(220), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_640_220, net_640_240);
wire #(.$tx(80), .$ty(-30), .netname(out), .$vscale(100), .$xposition(540), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_540_140, net_640_140);
wire #(.$vscale(20), .$xposition(540), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_540_140, net_540_160);
wire #(.$vscale(210), .$xposition(330), .$yposition(240), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_330_240, net_540_240);
wire #(.$vscale(100), .$xposition(540), .$yposition(240), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_540_240, net_640_240);
wire #(.$vscale(20), .$xposition(540), .$yposition(220), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_540_220, net_540_240);
wire #(.$vscale(100), .$xposition(440), .$yposition(140), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_440_140, net_540_140);
// `ifdef QUCS_DIAGRAMS
// Rect
// Rect
// `endif
place #(.$xposition(130), .$yposition(260)) net_130_260(net_130_260);
place #(.$xposition(130), .$yposition(320)) net_130_320(net_130_320);
place #(.$xposition(130), .$yposition(360)) net_130_360(net_130_360);
place #(.$xposition(50), .$yposition(160)) net_50_160(net_50_160);
place #(.$xposition(50), .$yposition(220)) net_50_220(net_50_220);
place #(.$xposition(50), .$yposition(240)) net_50_240(net_50_240);
place #(.$xposition(170), .$yposition(200)) net_170_200(net_170_200);
place #(.$xposition(170), .$yposition(140)) net_170_140(net_170_140);
place #(.$xposition(230), .$yposition(140)) net_230_140(net_230_140);
place #(.$xposition(230), .$yposition(200)) net_230_200(net_230_200);
place #(.$xposition(640), .$yposition(240)) net_640_240(net_640_240);
place #(.$xposition(330), .$yposition(160)) net_330_160(net_330_160);
place #(.$xposition(330), .$yposition(220)) net_330_220(net_330_220);
place #(.$xposition(380), .$yposition(140)) net_380_140(net_380_140);
place #(.$xposition(440), .$yposition(140)) net_440_140(net_440_140);
place #(.$xposition(540), .$yposition(160)) net_540_160(net_540_160);
place #(.$xposition(540), .$yposition(220)) net_540_220(net_540_220);
place #(.$xposition(640), .$yposition(220)) net_640_220(net_640_220);
place #(.$xposition(640), .$yposition(160)) net_640_160(net_640_160);
place #(.$xposition(330), .$yposition(140)) net_330_140(net_330_140);
place #(.$xposition(270), .$yposition(200)) net_270_200(net_270_200);
place #(.$xposition(130), .$yposition(200)) net_130_200(net_130_200);
place #(.$xposition(270), .$yposition(360)) net_270_360(net_270_360);
place #(.$xposition(50), .$yposition(140)) net_50_140(net_50_140);
place #(.$xposition(330), .$yposition(240)) net_330_240(net_330_240);
place #(.$xposition(640), .$yposition(140)) net_640_140(net_640_140);
place #(.$xposition(540), .$yposition(140)) net_540_140(net_540_140);
place #(.$xposition(540), .$yposition(240)) net_540_240(net_540_240);
endmodule // main

