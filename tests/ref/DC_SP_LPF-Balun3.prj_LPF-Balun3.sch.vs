module LPF-Balun3();
    wire n_140_180;
    wire n_140_190;
    wire n_170_120;
    wire n_170_180;
    wire n_170_80;
    wire n_230_140;
    wire n_230_160;
    wire n_230_220;
    wire n_230_250;
    wire n_230_80;
    wire n_250_140;
    wire n_250_150;
    wire n_250_160;
    wire n_300_150;
    wire n_330_250;
    wire n_330_80;
    wire n_390_250;
    wire n_390_80;
    wire n_40_110;
    wire n_40_170;
    wire n_40_190;
    wire n_40_80;
    wire n_440_130;
    wire n_440_190;
    wire n_440_250;
    wire n_440_80;
    wire n_480_250;
    wire n_480_80;
    wire n_540_250;
    wire n_540_80;
    wire n_580_130;
    wire n_580_190;
    wire n_580_250;
    wire n_580_80;
    wire n_620_250;
    wire n_620_80;
    wire n_680_250;
    wire n_680_80;
    wire n_750_150;
    wire n_750_300;
    wire n_770_140;
    wire n_770_150;
    wire n_770_160;
    wire n_790_140;
    wire n_790_160;
    wire n_790_220;
    wire n_790_250;
    wire n_790_80;
    wire n_850_120;
    wire n_850_180;
    wire n_850_80;
    wire n_890_180;
    wire n_890_220;
    wire n_920_290;
    wire n_920_300;
    wire n_940_290;
    wire n_940_310;
    wire n_960_100;
    wire n_960_160;
    wire n_960_200;
    wire n_960_80;
    (* S0_x1=40, S0_y1=110, S0_x2=40, S0_y2=170 *) Pac P1(n_40_110,n_40_170);
    (* S0_x1=480, S0_y1=80, S0_x2=540, S0_y2=80 *) L L1(n_480_80,n_540_80);
    (* S0_x1=620, S0_y1=80, S0_x2=680, S0_y2=80 *) L L2(n_620_80,n_680_80);
    (* S0_x1=440, S0_y1=190, S0_x2=440, S0_y2=130 *) C C1(n_440_190,n_440_130);
    (* S0_x1=580, S0_y1=190, S0_x2=580, S0_y2=130 *) C C2(n_580_190,n_580_130);
    (* S0_x1=330, S0_y1=80, S0_x2=390, S0_y2=80 *) L L3(n_330_80,n_390_80);
    (* S0_x1=40, S0_y1=190 *) GND *(n_40_190);
    (*  *) .SP SP1();
    (*  *) Eqn Eqn1();
    (* S0_x1=960, S0_y1=100, S0_x2=960, S0_y2=160 *) Pac P2(n_960_100,n_960_160);
    (* S0_x1=960, S0_y1=200 *) GND *(n_960_200);
    (* S0_x1=330, S0_y1=250, S0_x2=390, S0_y2=250 *) L L4(n_330_250,n_390_250);
    (* S0_x1=480, S0_y1=250, S0_x2=540, S0_y2=250 *) L L5(n_480_250,n_540_250);
    (* S0_x1=620, S0_y1=250, S0_x2=680, S0_y2=250 *) L L6(n_620_250,n_680_250);
    (* S0_x1=230, S0_y1=80, S0_x2=170, S0_y2=120, S0_x3=170, S0_y3=180, S0_x4=230, S0_y4=220, S0_x5=230, S0_y5=160, S0_x6=230, S0_y6=140 *) sTr Tr5(n_230_80,n_170_120,n_170_180,n_230_220,n_230_160,n_230_140);
    (* S0_x1=790, S0_y1=80, S0_x2=850, S0_y2=120, S0_x3=850, S0_y3=180, S0_x4=790, S0_y4=220, S0_x5=790, S0_y5=160, S0_x6=790, S0_y6=140 *) sTr Tr6(n_790_80,n_850_120,n_850_180,n_790_220,n_790_160,n_790_140);
    (* S0_x1=890, S0_y1=220 *) GND *(n_890_220);
    (* S0_x1=140, S0_y1=190 *) GND *(n_140_190);
    (*  *) .DC DC1();
    (* S0_x1=300, S0_y1=150, S0_x2=300, S0_y2=210 *) Vdc V1(n_300_150,n_300_210);
    (* S0_x1=300, S0_y1=210 *) GND *(n_300_210);
    (* S0_x1=920, S0_y1=290, S0_x2=940, S0_y2=290 *) VProbe Pr1(n_920_290,n_940_290);
    (* S0_x1=940, S0_y1=310 *) GND *(n_940_310);
    (* S0_x1=440, S0_y1=80, S0_x2=440, S0_y2=130 *) net net0(n_440_80, n_440_130);
    (* S0_x1=580, S0_y1=80, S0_x2=580, S0_y2=130 *) net net1(n_580_80, n_580_130);
    (* S0_x1=440, S0_y1=80, S0_x2=480, S0_y2=80 *) net net2(n_440_80, n_480_80);
    (* S0_x1=540, S0_y1=80, S0_x2=580, S0_y2=80 *) net net3(n_540_80, n_580_80);
    (* S0_x1=580, S0_y1=80, S0_x2=620, S0_y2=80 *) net net4(n_580_80, n_620_80);
    (* S0_x1=440, S0_y1=190, S0_x2=440, S0_y2=250 *) net net5(n_440_190, n_440_250);
    (* S0_x1=390, S0_y1=80, S0_x2=440, S0_y2=80 *) net net6(n_390_80, n_440_80);
    (* S0_x1=40, S0_y1=170, S0_x2=40, S0_y2=190 *) net net7(n_40_170, n_40_190);
    (* S0_x1=40, S0_y1=80, S0_x2=40, S0_y2=110 *) net net8(n_40_80, n_40_110);
    (* S0_x1=230, S0_y1=80, S0_x2=330, S0_y2=80 *) net net9(n_230_80, n_330_80);
    (* S0_x1=40, S0_y1=80, S0_x2=170, S0_y2=80 *) net net10(n_40_80, n_170_80);
    (* S0_x1=850, S0_y1=80, S0_x2=960, S0_y2=80 *) net net11(n_850_80, n_960_80);
    (* S0_x1=960, S0_y1=80, S0_x2=960, S0_y2=100 *) net net12(n_960_80, n_960_100);
    (* S0_x1=960, S0_y1=160, S0_x2=960, S0_y2=200 *) net net13(n_960_160, n_960_200);
    (* S0_x1=230, S0_y1=250, S0_x2=330, S0_y2=250 *) net net14(n_230_250, n_330_250);
    (* S0_x1=390, S0_y1=250, S0_x2=440, S0_y2=250 *) net net15(n_390_250, n_440_250);
    (* S0_x1=580, S0_y1=190, S0_x2=580, S0_y2=250 *) net net16(n_580_190, n_580_250);
    (* S0_x1=440, S0_y1=250, S0_x2=480, S0_y2=250 *) net net17(n_440_250, n_480_250);
    (* S0_x1=540, S0_y1=250, S0_x2=580, S0_y2=250 *) net net18(n_540_250, n_580_250);
    (* S0_x1=580, S0_y1=250, S0_x2=620, S0_y2=250 *) net net19(n_580_250, n_620_250);
    (* S0_x1=230, S0_y1=140, S0_x2=250, S0_y2=140 *) net net20(n_230_140, n_250_140);
    (* S0_x1=680, S0_y1=80, S0_x2=790, S0_y2=80 *) net net21(n_680_80, n_790_80);
    (* S0_x1=680, S0_y1=250, S0_x2=790, S0_y2=250 *) net net22(n_680_250, n_790_250);
    (* S0_x1=230, S0_y1=220, S0_x2=230, S0_y2=250 *) net net23(n_230_220, n_230_250);
    (* S0_x1=170, S0_y1=80, S0_x2=170, S0_y2=120 *) net net24(n_170_80, n_170_120);
    (* S0_x1=230, S0_y1=160, S0_x2=250, S0_y2=160 *) net net25(n_230_160, n_250_160);
    (* S0_x1=250, S0_y1=140, S0_x2=250, S0_y2=150 *) net net26(n_250_140, n_250_150);
    (* S0_x1=850, S0_y1=80, S0_x2=850, S0_y2=120 *) net net27(n_850_80, n_850_120);
    (* S0_x1=770, S0_y1=140, S0_x2=790, S0_y2=140 *) net net28(n_770_140, n_790_140);
    (* S0_x1=770, S0_y1=160, S0_x2=790, S0_y2=160 *) net net29(n_770_160, n_790_160);
    (* S0_x1=770, S0_y1=140, S0_x2=770, S0_y2=150 *) net net30(n_770_140, n_770_150);
    (* S0_x1=790, S0_y1=220, S0_x2=790, S0_y2=250 *) net net31(n_790_220, n_790_250);
    (* S0_x1=850, S0_y1=180, S0_x2=890, S0_y2=180 *) net net32(n_850_180, n_890_180);
    (* S0_x1=890, S0_y1=180, S0_x2=890, S0_y2=220 *) net net33(n_890_180, n_890_220);
    (* S0_x1=140, S0_y1=180, S0_x2=170, S0_y2=180 *) net net34(n_140_180, n_170_180);
    (* S0_x1=140, S0_y1=180, S0_x2=140, S0_y2=190 *) net net35(n_140_180, n_140_190);
    (* S0_x1=250, S0_y1=150, S0_x2=250, S0_y2=160 *) net net36(n_250_150, n_250_160);
    (* S0_x1=770, S0_y1=150, S0_x2=770, S0_y2=160 *) net net37(n_770_150, n_770_160);
    (* S0_x1=750, S0_y1=150, S0_x2=770, S0_y2=150 *) net net38(n_750_150, n_770_150);
    (* S0_x1=250, S0_y1=150, S0_x2=300, S0_y2=150 *) net net39(n_250_150, n_300_150);
    (* S0_x1=750, S0_y1=150, S0_x2=750, S0_y2=300 *) net net40(n_750_150, n_750_300);
    (* S0_x1=750, S0_y1=300, S0_x2=920, S0_y2=300 *) net net41(n_750_300, n_920_300);
    (* S0_x1=920, S0_y1=290, S0_x2=920, S0_y2=300 *) net net42(n_920_290, n_920_300);
    (* S0_x1=940, S0_y1=290, S0_x2=940, S0_y2=310 *) net net43(n_940_290, n_940_310);
endmodule
