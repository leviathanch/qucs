module singleOPV(P1,P2,P3,P4,P6);
    (* x=50, y=230 *) inout P1;
    (* x=50, y=170 *) inout P2;
    (* x=50, y=60 *) inout P3;
    (* x=50, y=400 *) inout P4;
    (* x=540, y=230 *) inout P6;
    wire n_130_300;
    wire n_130_320;
    wire n_130_380;
    wire n_130_400;
    wire n_140_230;
    wire n_160_350;
    wire n_170_130;
    wire n_170_140;
    wire n_170_200;
    wire n_170_260;
    wire n_170_280;
    wire n_170_60;
    wire n_170_70;
    wire n_180_300;
    wire n_180_350;
    wire n_190_230;
    wire n_200_100;
    wire n_210_100;
    wire n_210_140;
    wire n_210_350;
    wire n_240_280;
    wire n_240_320;
    wire n_240_380;
    wire n_240_400;
    wire n_270_230;
    wire n_270_400;
    wire n_280_100;
    wire n_290_230;
    wire n_310_130;
    wire n_310_160;
    wire n_310_200;
    wire n_310_260;
    wire n_310_280;
    wire n_310_60;
    wire n_310_70;
    wire n_340_230;
    wire n_360_170;
    wire n_360_230;
    wire n_380_100;
    wire n_380_160;
    wire n_440_160;
    wire n_440_300;
    wire n_440_350;
    wire n_470_100;
    wire n_470_350;
    wire n_500_130;
    wire n_500_160;
    wire n_500_230;
    wire n_500_320;
    wire n_500_380;
    wire n_500_400;
    wire n_500_60;
    wire n_500_70;
    wire n_50_170;
    wire n_50_230;
    wire n_50_400;
    wire n_50_60;
    wire n_540_230;
    wire n_90_240;
    wire n_90_300;
    wire n_90_60;
    (* x=310, y=230 *) MOSFET T3(n_340_230,n_310_200,n_310_260,n_290_230);
    (* x=170, y=230 *) MOSFET T4(n_140_230,n_170_200,n_170_260,n_190_230);
    (* x=130, y=350 *) _MOSFET T6(n_160_350,n_130_320,n_130_380);
    (* x=240, y=350 *) _MOSFET T5(n_210_350,n_240_320,n_240_380);
    (* x=500, y=350 *) _MOSFET T8(n_470_350,n_500_320,n_500_380);
    (* x=410, y=160 *) R R1(n_380_160,n_440_160);
    (* x=470, y=160 *) C C1(n_440_160,n_500_160);
    (* x=170, y=100 *) _MOSFET T1(n_200_100,n_170_130,n_170_70);
    (* x=310, y=100 *) _MOSFET T2(n_280_100,n_310_130,n_310_70);
    (* x=500, y=100 *) _MOSFET T7(n_470_100,n_500_130,n_500_70);
    net _P3(P3,n_50_60);
    net _P4(P4,n_50_400);
    net _P6(P6,n_540_230);
    net _P1(P1,n_50_230);
    net _P2(P2,n_50_170);
    (* x=90, y=270 *) Idc I1(n_90_300,n_90_240);
    (* S0_x1=200, S0_y1=100, S0_x2=210, S0_y2=100 *) net net0(n_200_100, n_210_100);
    (* S0_x1=170, S0_y1=130, S0_x2=170, S0_y2=140 *) net net1(n_170_130, n_170_140);
    (* S0_x1=310, S0_y1=130, S0_x2=310, S0_y2=160 *) net net2(n_310_130, n_310_160);
    (* S0_x1=190, S0_y1=230, S0_x2=270, S0_y2=230 *) net net3(n_190_230, n_270_230);
    (* S0_x1=170, S0_y1=260, S0_x2=170, S0_y2=280 *) net net4(n_170_260, n_170_280);
    (* S0_x1=310, S0_y1=260, S0_x2=310, S0_y2=280 *) net net5(n_310_260, n_310_280);
    (* S0_x1=170, S0_y1=280, S0_x2=240, S0_y2=280 *) net net6(n_170_280, n_240_280);
    (* S0_x1=160, S0_y1=350, S0_x2=180, S0_y2=350 *) net net7(n_160_350, n_180_350);
    (* S0_x1=240, S0_y1=280, S0_x2=310, S0_y2=280 *) net net8(n_240_280, n_310_280);
    (* S0_x1=240, S0_y1=280, S0_x2=240, S0_y2=320 *) net net9(n_240_280, n_240_320);
    (* S0_x1=130, S0_y1=380, S0_x2=130, S0_y2=400 *) net net10(n_130_380, n_130_400);
    (* S0_x1=240, S0_y1=380, S0_x2=240, S0_y2=400 *) net net11(n_240_380, n_240_400);
    (* S0_x1=130, S0_y1=400, S0_x2=240, S0_y2=400 *) net net12(n_130_400, n_240_400);
    (* S0_x1=170, S0_y1=60, S0_x2=170, S0_y2=70 *) net net13(n_170_60, n_170_70);
    (* S0_x1=170, S0_y1=60, S0_x2=310, S0_y2=60 *) net net14(n_170_60, n_310_60);
    (* S0_x1=310, S0_y1=60, S0_x2=310, S0_y2=70 *) net net15(n_310_60, n_310_70);
    (* S0_x1=130, S0_y1=300, S0_x2=130, S0_y2=320 *) net net16(n_130_300, n_130_320);
    (* S0_x1=180, S0_y1=350, S0_x2=210, S0_y2=350 *) net net17(n_180_350, n_210_350);
    (* S0_x1=180, S0_y1=300, S0_x2=180, S0_y2=350 *) net net18(n_180_300, n_180_350);
    (* S0_x1=130, S0_y1=300, S0_x2=180, S0_y2=300 *) net net19(n_130_300, n_180_300);
    (* S0_x1=440, S0_y1=300, S0_x2=440, S0_y2=350 *) net net20(n_440_300, n_440_350);
    (* S0_x1=180, S0_y1=300, S0_x2=440, S0_y2=300 *) net net21(n_180_300, n_440_300);
    (* S0_x1=440, S0_y1=350, S0_x2=470, S0_y2=350 *) net net22(n_440_350, n_470_350);
    (* S0_x1=500, S0_y1=380, S0_x2=500, S0_y2=400 *) net net23(n_500_380, n_500_400);
    (* S0_x1=240, S0_y1=400, S0_x2=270, S0_y2=400 *) net net24(n_240_400, n_270_400);
    (* S0_x1=340, S0_y1=230, S0_x2=360, S0_y2=230 *) net net25(n_340_230, n_360_230);
    (* S0_x1=310, S0_y1=160, S0_x2=310, S0_y2=200 *) net net26(n_310_160, n_310_200);
    (* S0_x1=310, S0_y1=160, S0_x2=380, S0_y2=160 *) net net27(n_310_160, n_380_160);
    (* S0_x1=500, S0_y1=230, S0_x2=500, S0_y2=320 *) net net28(n_500_230, n_500_320);
    (* S0_x1=500, S0_y1=230, S0_x2=540, S0_y2=230 *) net net29(n_500_230, n_540_230);
    (* S0_x1=270, S0_y1=230, S0_x2=290, S0_y2=230 *) net net30(n_270_230, n_290_230);
    (* S0_x1=270, S0_y1=400, S0_x2=500, S0_y2=400 *) net net31(n_270_400, n_500_400);
    (* S0_x1=270, S0_y1=230, S0_x2=270, S0_y2=400 *) net net32(n_270_230, n_270_400);
    (* S0_x1=170, S0_y1=140, S0_x2=170, S0_y2=200 *) net net33(n_170_140, n_170_200);
    (* S0_x1=170, S0_y1=140, S0_x2=210, S0_y2=140 *) net net34(n_170_140, n_210_140);
    (* S0_x1=210, S0_y1=100, S0_x2=280, S0_y2=100 *) net net35(n_210_100, n_280_100);
    (* S0_x1=210, S0_y1=100, S0_x2=210, S0_y2=140 *) net net36(n_210_100, n_210_140);
    (* S0_x1=500, S0_y1=160, S0_x2=500, S0_y2=230 *) net net37(n_500_160, n_500_230);
    (* S0_x1=380, S0_y1=100, S0_x2=470, S0_y2=100 *) net net38(n_380_100, n_470_100);
    (* S0_x1=380, S0_y1=100, S0_x2=380, S0_y2=160 *) net net39(n_380_100, n_380_160);
    (* S0_x1=500, S0_y1=130, S0_x2=500, S0_y2=160 *) net net40(n_500_130, n_500_160);
    (* S0_x1=500, S0_y1=60, S0_x2=500, S0_y2=70 *) net net41(n_500_60, n_500_70);
    (* S0_x1=310, S0_y1=60, S0_x2=500, S0_y2=60 *) net net42(n_310_60, n_500_60);
    (* S0_x1=90, S0_y1=300, S0_x2=130, S0_y2=300 *) net net43(n_90_300, n_130_300);
    (* S0_x1=90, S0_y1=60, S0_x2=170, S0_y2=60 *) net net44(n_90_60, n_170_60);
    (* S0_x1=90, S0_y1=60, S0_x2=90, S0_y2=240 *) net net45(n_90_60, n_90_240);
    (* S0_x1=50, S0_y1=60, S0_x2=90, S0_y2=60 *) net net46(n_50_60, n_90_60);
    (* S0_x1=50, S0_y1=400, S0_x2=130, S0_y2=400 *) net net47(n_50_400, n_130_400);
    (* S0_x1=50, S0_y1=230, S0_x2=140, S0_y2=230 *) net net48(n_50_230, n_140_230);
    (* S0_x1=50, S0_y1=170, S0_x2=360, S0_y2=170 *) net net49(n_50_170, n_360_170);
    (* S0_x1=360, S0_y1=170, S0_x2=360, S0_y2=230 *) net net50(n_360_170, n_360_230);
endmodule
