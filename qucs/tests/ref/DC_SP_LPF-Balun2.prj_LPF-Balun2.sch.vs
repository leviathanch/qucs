// VS::printSubckt main
module main();
L #(.L(1.2uH), .I(), .$ty(-26), .$tx(-26), .$xposition(510), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) L1(net_480_90, net_540_90);
L #(.L(470nH), .I(), .$ty(-26), .$tx(-26), .$xposition(650), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) L2(net_620_90, net_680_90);
C #(.C(270pF), .V(), .Symbol(neutral), .$ty(17), .$tx(17), .$xposition(440), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(90)) C1(net_440_200, net_440_140);
C #(.C(270pF), .V(), .Symbol(neutral), .$ty(17), .$tx(17), .$xposition(580), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(90)) C2(net_580_200, net_580_140);
L #(.L(470nH), .I(), .$ty(-26), .$tx(-26), .$xposition(360), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) L3(net_330_90, net_390_90);
L #(.L(470nH), .I(), .$ty(-26), .$tx(-26), .$xposition(360), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) L4(net_330_260, net_390_260);
L #(.L(1.2uH), .I(), .$ty(-26), .$tx(-26), .$xposition(510), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) L5(net_480_260, net_540_260);
L #(.L(470nH), .I(), .$ty(-26), .$tx(-26), .$xposition(650), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) L6(net_620_260, net_680_260);
GND #(.$xposition(130), .$yposition(270), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_0(net_130_270);
Pac #(.Num(1), .Z(100 Ohm), .P(0 dBm), .f(1 GHz), .Temp(26.85), .$ty(18), .$tx(18), .$xposition(-20), .$yposition(190), .$vflip(1), .$hflip(1), .$angle(450)) P1(net_-20_160, net_-20_220);
GND #(.$xposition(-20), .$yposition(240), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_1(net_-20_240);
GND #(.$xposition(870), .$yposition(190), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_2(net_870_190);
Sub #(.$tx(-10), .$ty(34), .File(IdealBalun.sch), .$xposition(160), .$yposition(150), .$vflip(1), .$hflip(1), .$angle(0)) Balun1(net_130_90, net_190_90, net_130_150, net_190_150, net_130_210);
Sub #(.$tx(-40), .$ty(34), .File(IdealBalun.sch), .$xposition(820), .$yposition(150), .$vflip(-1), .$hflip(1), .$angle(180)) Balun2(net_850_90, net_790_90, net_850_150, net_790_150, net_850_210);
GND #(.$xposition(80), .$yposition(210), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_3(net_80_210);
Vdc #(.U(1V), .$ty(18), .$tx(18), .$xposition(80), .$yposition(160), .$vflip(1), .$hflip(1), .$angle(450)) V1(net_80_130, net_80_190);
VProbe #(.$ty(28), .$tx(28), .$xposition(920), .$yposition(130), .$vflip(1), .$hflip(1), .$angle(0)) Pr1(net_910_150, net_930_150);
GND #(.$xposition(930), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(0)) anonymous_gnd_hack_4(net_930_170);
Pac #(.Num(2), .Z(100 Ohm), .P(0 dBm), .f(1 GHz), .Temp(26.85), .$ty(18), .$tx(18), .$xposition(990), .$yposition(180), .$vflip(1), .$hflip(1), .$angle(450)) P2(net_990_150, net_990_210);
GND #(.$xposition(990), .$yposition(250), .$vflip(-1), .$hflip(1), .$angle(180)) anonymous_gnd_hack_5(net_990_250);
Eqn #(.dBS21(dB(S[2,1])), .dBS11(dB(S[1,1])), .Export(yes), .$ty(-28), .$tx(-28), .$xposition(200), .$yposition(370), .$vflip(1), .$hflip(1), .$angle(0)) Eqn1();
//DC1
wire #(.$vscale(50), .$xposition(440), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_440_90, net_440_140);
wire #(.$vscale(50), .$xposition(580), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_580_90, net_580_140);
wire #(.$vscale(40), .$xposition(440), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_440_90, net_480_90);
wire #(.$vscale(40), .$xposition(540), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_540_90, net_580_90);
wire #(.$vscale(40), .$xposition(580), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_580_90, net_620_90);
wire #(.$vscale(60), .$xposition(440), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_440_200, net_440_260);
wire #(.$vscale(50), .$xposition(390), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_390_90, net_440_90);
wire #(.$vscale(50), .$xposition(390), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_390_260, net_440_260);
wire #(.$vscale(60), .$xposition(580), .$yposition(200), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_580_200, net_580_260);
wire #(.$vscale(40), .$xposition(440), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_440_260, net_480_260);
wire #(.$vscale(40), .$xposition(540), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_540_260, net_580_260);
wire #(.$vscale(40), .$xposition(580), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_580_260, net_620_260);
wire #(.$vscale(110), .$xposition(220), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_220_90, net_330_90);
wire #(.$vscale(110), .$xposition(220), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_220_260, net_330_260);
wire #(.$vscale(20), .$xposition(-20), .$yposition(220), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_-20_220, net_-20_240);
wire #(.$vscale(70), .$xposition(-20), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_-20_90, net_-20_160);
wire #(.$vscale(150), .$xposition(-20), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_-20_90, net_130_90);
wire #(.$vscale(100), .$xposition(130), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_130_170, net_130_270);
wire #(.$vscale(90), .$xposition(220), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_220_170, net_220_260);
wire #(.$vscale(20), .$xposition(850), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_850_170, net_870_170);
wire #(.$vscale(20), .$xposition(870), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_870_170, net_870_190);
wire #(.$vscale(80), .$xposition(680), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_680_90, net_760_90);
wire #(.$vscale(40), .$xposition(720), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_720_170, net_760_170);
wire #(.$vscale(40), .$xposition(680), .$yposition(260), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_680_260, net_720_260);
wire #(.$vscale(90), .$xposition(720), .$yposition(170), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_720_170, net_720_260);
wire #(.$vscale(20), .$xposition(80), .$yposition(190), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_80_190, net_80_210);
wire #(.$vscale(50), .$xposition(80), .$yposition(130), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_80_130, net_130_130);
wire #(.$vscale(140), .$xposition(850), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_850_90, net_990_90);
wire #(.$vscale(60), .$xposition(990), .$yposition(90), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_990_90, net_990_150);
wire #(.$vscale(40), .$xposition(990), .$yposition(210), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_990_210, net_990_250);
wire #(.$vscale(20), .$xposition(930), .$yposition(150), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_930_150, net_930_170);
wire #(.$vscale(50), .$xposition(860), .$yposition(150), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_860_150, net_910_150);
wire #(.$vscale(10), .$xposition(850), .$yposition(130), .$vflip(1), .$hflip(1), .$angle(0)) noname(net_850_130, net_860_130);
wire #(.$vscale(20), .$xposition(860), .$yposition(130), .$vflip(1), .$hflip(1), .$angle(270)) noname(net_860_130, net_860_150);
place #(.$xposition(480), .$yposition(90)) net_480_90(net_480_90);
place #(.$xposition(540), .$yposition(90)) net_540_90(net_540_90);
place #(.$xposition(620), .$yposition(90)) net_620_90(net_620_90);
place #(.$xposition(680), .$yposition(90)) net_680_90(net_680_90);
place #(.$xposition(440), .$yposition(200)) net_440_200(net_440_200);
place #(.$xposition(440), .$yposition(140)) net_440_140(net_440_140);
place #(.$xposition(580), .$yposition(200)) net_580_200(net_580_200);
place #(.$xposition(580), .$yposition(140)) net_580_140(net_580_140);
place #(.$xposition(330), .$yposition(90)) net_330_90(net_330_90);
place #(.$xposition(390), .$yposition(90)) net_390_90(net_390_90);
place #(.$xposition(330), .$yposition(260)) net_330_260(net_330_260);
place #(.$xposition(390), .$yposition(260)) net_390_260(net_390_260);
place #(.$xposition(480), .$yposition(260)) net_480_260(net_480_260);
place #(.$xposition(540), .$yposition(260)) net_540_260(net_540_260);
place #(.$xposition(620), .$yposition(260)) net_620_260(net_620_260);
place #(.$xposition(680), .$yposition(260)) net_680_260(net_680_260);
place #(.$xposition(130), .$yposition(270)) net_130_270(net_130_270);
place #(.$xposition(-20), .$yposition(160)) net_-20_160(net_-20_160);
place #(.$xposition(-20), .$yposition(220)) net_-20_220(net_-20_220);
place #(.$xposition(-20), .$yposition(240)) net_-20_240(net_-20_240);
place #(.$xposition(870), .$yposition(190)) net_870_190(net_870_190);
place #(.$xposition(130), .$yposition(90)) net_130_90(net_130_90);
place #(.$xposition(190), .$yposition(90)) net_190_90(net_190_90);
place #(.$xposition(130), .$yposition(150)) net_130_150(net_130_150);
place #(.$xposition(190), .$yposition(150)) net_190_150(net_190_150);
place #(.$xposition(130), .$yposition(210)) net_130_210(net_130_210);
place #(.$xposition(850), .$yposition(90)) net_850_90(net_850_90);
place #(.$xposition(790), .$yposition(90)) net_790_90(net_790_90);
place #(.$xposition(850), .$yposition(150)) net_850_150(net_850_150);
place #(.$xposition(790), .$yposition(150)) net_790_150(net_790_150);
place #(.$xposition(850), .$yposition(210)) net_850_210(net_850_210);
place #(.$xposition(80), .$yposition(210)) net_80_210(net_80_210);
place #(.$xposition(80), .$yposition(130)) net_80_130(net_80_130);
place #(.$xposition(80), .$yposition(190)) net_80_190(net_80_190);
place #(.$xposition(910), .$yposition(150)) net_910_150(net_910_150);
place #(.$xposition(930), .$yposition(150)) net_930_150(net_930_150);
place #(.$xposition(930), .$yposition(170)) net_930_170(net_930_170);
place #(.$xposition(990), .$yposition(150)) net_990_150(net_990_150);
place #(.$xposition(990), .$yposition(210)) net_990_210(net_990_210);
place #(.$xposition(990), .$yposition(250)) net_990_250(net_990_250);
place #(.$xposition(440), .$yposition(90)) net_440_90(net_440_90);
place #(.$xposition(580), .$yposition(90)) net_580_90(net_580_90);
place #(.$xposition(440), .$yposition(260)) net_440_260(net_440_260);
place #(.$xposition(580), .$yposition(260)) net_580_260(net_580_260);
place #(.$xposition(220), .$yposition(90)) net_220_90(net_220_90);
place #(.$xposition(220), .$yposition(260)) net_220_260(net_220_260);
place #(.$xposition(-20), .$yposition(90)) net_-20_90(net_-20_90);
place #(.$xposition(130), .$yposition(170)) net_130_170(net_130_170);
place #(.$xposition(220), .$yposition(170)) net_220_170(net_220_170);
place #(.$xposition(850), .$yposition(170)) net_850_170(net_850_170);
place #(.$xposition(870), .$yposition(170)) net_870_170(net_870_170);
place #(.$xposition(760), .$yposition(90)) net_760_90(net_760_90);
place #(.$xposition(720), .$yposition(170)) net_720_170(net_720_170);
place #(.$xposition(760), .$yposition(170)) net_760_170(net_760_170);
place #(.$xposition(720), .$yposition(260)) net_720_260(net_720_260);
place #(.$xposition(130), .$yposition(130)) net_130_130(net_130_130);
place #(.$xposition(990), .$yposition(90)) net_990_90(net_990_90);
place #(.$xposition(860), .$yposition(150)) net_860_150(net_860_150);
place #(.$xposition(850), .$yposition(130)) net_850_130(net_850_130);
place #(.$xposition(860), .$yposition(130)) net_860_130(net_860_130);
endmodule // main

