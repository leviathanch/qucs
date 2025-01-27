module LPF-Balun2();
    wire n_m20_90;
    wire n_m20_160;
    wire n_m20_190;
    wire n_m20_220;
    wire n_m20_240;
    wire n_20_350;
    wire n_80_130;
    wire n_80_160;
    wire n_80_190;
    wire n_80_210;
    wire n_130_90;
    wire n_130_130;
    wire n_130_170;
    wire n_130_270;
    wire n_160_150;
    wire n_200_370;
    wire n_220_90;
    wire n_220_170;
    wire n_220_260;
    wire n_330_90;
    wire n_330_260;
    wire n_360_90;
    wire n_360_260;
    wire n_390_90;
    wire n_390_260;
    wire n_440_90;
    wire n_440_140;
    wire n_440_170;
    wire n_440_200;
    wire n_440_260;
    wire n_480_90;
    wire n_480_260;
    wire n_510_90;
    wire n_510_260;
    wire n_540_90;
    wire n_540_260;
    wire n_580_90;
    wire n_580_140;
    wire n_580_170;
    wire n_580_200;
    wire n_580_260;
    wire n_600_350;
    wire n_620_90;
    wire n_620_260;
    wire n_650_90;
    wire n_650_260;
    wire n_680_90;
    wire n_680_260;
    wire n_720_170;
    wire n_720_260;
    wire n_760_90;
    wire n_760_170;
    wire n_820_150;
    wire n_850_90;
    wire n_850_130;
    wire n_850_170;
    wire n_860_130;
    wire n_860_150;
    wire n_870_170;
    wire n_870_190;
    wire n_910_150;
    wire n_920_130;
    wire n_930_150;
    wire n_930_170;
    wire n_990_90;
    wire n_990_150;
    wire n_990_180;
    wire n_990_210;
    wire n_990_250;
    (* S0_x1=480, S0_y1=90S0_x2=540, S0_y2=90 *) L #() L1 ( n_480_90, n_540_90 );
    (* S0_x1=620, S0_y1=90S0_x2=680, S0_y2=90 *) L #() L2 ( n_620_90, n_680_90 );
    (* S0_x1=440, S0_y1=200S0_x2=440, S0_y2=140 *) C #() C1 ( n_440_200, n_440_140 );
    (* S0_x1=580, S0_y1=200S0_x2=580, S0_y2=140 *) C #() C2 ( n_580_200, n_580_140 );
    (* S0_x1=330, S0_y1=90S0_x2=390, S0_y2=90 *) L #() L3 ( n_330_90, n_390_90 );
    (* S0_x1=330, S0_y1=260S0_x2=390, S0_y2=260 *) L #() L4 ( n_330_260, n_390_260 );
    (* S0_x1=480, S0_y1=260S0_x2=540, S0_y2=260 *) L #() L5 ( n_480_260, n_540_260 );
    (* S0_x1=620, S0_y1=260S0_x2=680, S0_y2=260 *) L #() L6 ( n_620_260, n_680_260 );
    (* S0_x1=130, S0_y1=270 *) GND #() \*  ( n_130_270 );
    (* S0_x1=-20, S0_y1=160S0_x2=-20, S0_y2=220 *) Pac #() P1 ( n_m20_160, n_m20_220 );
    (* S0_x1=-20, S0_y1=240 *) GND #() \*  ( n_m20_240 );
    (* S0_x1=870, S0_y1=190 *) GND #() \*  ( n_870_190 );
    (* S0_x1=130, S0_y1=90S0_x2=190, S0_y2=90S0_x3=130, S0_y3=150S0_x4=190, S0_y4=150S0_x5=130, S0_y5=210 *) Sub #() Balun1 ( n_130_90, n_190_90, n_130_150, n_190_150, n_130_210 );
    (* S0_x1=850, S0_y1=90S0_x2=790, S0_y2=90S0_x3=850, S0_y3=150S0_x4=790, S0_y4=150S0_x5=850, S0_y5=210 *) Sub #() Balun2 ( n_850_90, n_790_90, n_850_150, n_790_150, n_850_210 );
    (* S0_x1=80, S0_y1=210 *) GND #() \*  ( n_80_210 );
    (* S0_x1=80, S0_y1=130S0_x2=80, S0_y2=190 *) Vdc #() V1 ( n_80_130, n_80_190 );
    (* S0_x1=910, S0_y1=150S0_x2=930, S0_y2=150 *) VProbe #() Pr1 ( n_910_150, n_930_150 );
    (* S0_x1=930, S0_y1=170 *) GND #() \*  ( n_930_170 );
    (* S0_x1=990, S0_y1=150S0_x2=990, S0_y2=210 *) Pac #() P2 ( n_990_150, n_990_210 );
    (* S0_x1=990, S0_y1=250 *) GND #() \*  ( n_990_250 );
    (*  *) \.SP  #() SP1 (  );
    (*  *) Eqn #() Eqn1 (  );
    (*  *) \.DC  #() DC1 (  );
    (* S0_x1=440, S0_y1=90S0_x2=440, S0_y2=140 *) net #() net1 ( n_440_90, n_440_140 );
    (* S0_x1=580, S0_y1=90S0_x2=580, S0_y2=140 *) net #() net2 ( n_580_90, n_580_140 );
    (* S0_x1=440, S0_y1=90S0_x2=480, S0_y2=90 *) net #() net3 ( n_440_90, n_480_90 );
    (* S0_x1=540, S0_y1=90S0_x2=580, S0_y2=90 *) net #() net4 ( n_540_90, n_580_90 );
    (* S0_x1=580, S0_y1=90S0_x2=620, S0_y2=90 *) net #() net5 ( n_580_90, n_620_90 );
    (* S0_x1=440, S0_y1=200S0_x2=440, S0_y2=260 *) net #() net6 ( n_440_200, n_440_260 );
    (* S0_x1=390, S0_y1=90S0_x2=440, S0_y2=90 *) net #() net7 ( n_390_90, n_440_90 );
    (* S0_x1=390, S0_y1=260S0_x2=440, S0_y2=260 *) net #() net8 ( n_390_260, n_440_260 );
    (* S0_x1=580, S0_y1=200S0_x2=580, S0_y2=260 *) net #() net9 ( n_580_200, n_580_260 );
    (* S0_x1=440, S0_y1=260S0_x2=480, S0_y2=260 *) net #() net10 ( n_440_260, n_480_260 );
    (* S0_x1=540, S0_y1=260S0_x2=580, S0_y2=260 *) net #() net11 ( n_540_260, n_580_260 );
    (* S0_x1=580, S0_y1=260S0_x2=620, S0_y2=260 *) net #() net12 ( n_580_260, n_620_260 );
    (* S0_x1=220, S0_y1=90S0_x2=330, S0_y2=90 *) net #() net13 ( n_220_90, n_330_90 );
    (* S0_x1=220, S0_y1=260S0_x2=330, S0_y2=260 *) net #() net14 ( n_220_260, n_330_260 );
    (* S0_x1=-20, S0_y1=220S0_x2=-20, S0_y2=240 *) net #() net15 ( n_m20_220, n_m20_240 );
    (* S0_x1=-20, S0_y1=90S0_x2=-20, S0_y2=160 *) net #() net16 ( n_m20_90, n_m20_160 );
    (* S0_x1=-20, S0_y1=90S0_x2=130, S0_y2=90 *) net #() net17 ( n_m20_90, n_130_90 );
    (* S0_x1=130, S0_y1=170S0_x2=130, S0_y2=270 *) net #() net18 ( n_130_170, n_130_270 );
    (* S0_x1=220, S0_y1=170S0_x2=220, S0_y2=260 *) net #() net19 ( n_220_170, n_220_260 );
    (* S0_x1=850, S0_y1=170S0_x2=870, S0_y2=170 *) net #() net20 ( n_850_170, n_870_170 );
    (* S0_x1=870, S0_y1=170S0_x2=870, S0_y2=190 *) net #() net21 ( n_870_170, n_870_190 );
    (* S0_x1=680, S0_y1=90S0_x2=760, S0_y2=90 *) net #() net22 ( n_680_90, n_760_90 );
    (* S0_x1=720, S0_y1=170S0_x2=760, S0_y2=170 *) net #() net23 ( n_720_170, n_760_170 );
    (* S0_x1=680, S0_y1=260S0_x2=720, S0_y2=260 *) net #() net24 ( n_680_260, n_720_260 );
    (* S0_x1=720, S0_y1=170S0_x2=720, S0_y2=260 *) net #() net25 ( n_720_170, n_720_260 );
    (* S0_x1=80, S0_y1=190S0_x2=80, S0_y2=210 *) net #() net26 ( n_80_190, n_80_210 );
    (* S0_x1=80, S0_y1=130S0_x2=130, S0_y2=130 *) net #() net27 ( n_80_130, n_130_130 );
    (* S0_x1=850, S0_y1=90S0_x2=990, S0_y2=90 *) net #() net28 ( n_850_90, n_990_90 );
    (* S0_x1=990, S0_y1=90S0_x2=990, S0_y2=150 *) net #() net29 ( n_990_90, n_990_150 );
    (* S0_x1=990, S0_y1=210S0_x2=990, S0_y2=250 *) net #() net30 ( n_990_210, n_990_250 );
    (* S0_x1=930, S0_y1=150S0_x2=930, S0_y2=170 *) net #() net31 ( n_930_150, n_930_170 );
    (* S0_x1=860, S0_y1=150S0_x2=910, S0_y2=150 *) net #() net32 ( n_860_150, n_910_150 );
    (* S0_x1=850, S0_y1=130S0_x2=860, S0_y2=130 *) net #() net33 ( n_850_130, n_860_130 );
    (* S0_x1=860, S0_y1=130S0_x2=860, S0_y2=150 *) net #() net34 ( n_860_130, n_860_150 );
endmodule
