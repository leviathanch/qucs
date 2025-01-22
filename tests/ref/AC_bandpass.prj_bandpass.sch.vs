module bandpass();
    wire n_100_210;
    wire n_100_230;
    wire n_100_290;
    wire n_100_310;
    wire n_170_150;
    wire n_180_150;
    wire n_180_210;
    wire n_240_150;
    wire n_240_210;
    wire n_280_150;
    wire n_280_210;
    wire n_280_250;
    wire n_280_310;
    wire n_280_70;
    wire n_310_150;
    wire n_310_210;
    wire n_310_70;
    wire n_370_180;
    wire n_370_70;
    wire n_410_180;
    wire n_410_210;
    wire n_410_70;
    wire n_480_150;
    wire n_490_150;
    wire n_490_210;
    wire n_550_150;
    wire n_550_210;
    wire n_560_150;
    wire n_560_70;
    wire n_570_210;
    wire n_570_250;
    wire n_570_310;
    wire n_590_150;
    wire n_590_210;
    wire n_590_70;
    wire n_650_180;
    wire n_650_70;
    wire n_700_180;
    wire n_700_70;
    wire n_730_180;
    (* S0_x1=280, S0_y1=310 *) GND *(n_280_310);
    (* S0_x1=570, S0_y1=310 *) GND *(n_570_310);
    (* S0_x1=170, S0_y1=150 *) GND *(n_170_150);
    (* S0_x1=480, S0_y1=150 *) GND *(n_480_150);
    (* S0_x1=180, S0_y1=210, S0_x2=240, S0_y2=210 *) C C1(n_180_210, n_240_210);
    (* S0_x1=180, S0_y1=150, S0_x2=240, S0_y2=150 *) R R2(n_180_150, n_240_150);
    (* S0_x1=490, S0_y1=150, S0_x2=550, S0_y2=150 *) R R5(n_490_150, n_550_150);
    (*  *) Sub OPA227_1();
    (*  *) Sub OPA227_2();
    (*  *) .AC AC1();
    (* S0_x1=100, S0_y1=310 *) GND *(n_100_310);
    (* S0_x1=100, S0_y1=230, S0_x2=100, S0_y2=290 *) Vac V1(n_100_230, n_100_290);
    (*  *) Eqn Eqn1();
    (* S0_x1=310, S0_y1=70, S0_x2=370, S0_y2=70 *) R R1(n_310_70, n_370_70);
    (* S0_x1=590, S0_y1=70, S0_x2=650, S0_y2=70 *) R R4(n_590_70, n_650_70);
    (* S0_x1=570, S0_y1=310, S0_x2=570, S0_y2=250 *) C C2(n_570_310, n_570_250);
    (* S0_x1=280, S0_y1=250, S0_x2=280, S0_y2=310 *) R R3(n_280_250, n_280_310);
    (* S0_x1=490, S0_y1=210, S0_x2=550, S0_y2=210 *) R R6(n_490_210, n_550_210);
    (* S0_x1=240, S0_y1=150, S0_x2=280, S0_y2=150 *) net net0(n_240_150, n_280_150);
    (* S0_x1=240, S0_y1=210, S0_x2=280, S0_y2=210 *) net net1(n_240_210, n_280_210);
    (* S0_x1=280, S0_y1=70, S0_x2=310, S0_y2=70 *) net net2(n_280_70, n_310_70);
    (* S0_x1=280, S0_y1=150, S0_x2=310, S0_y2=150 *) net net3(n_280_150, n_310_150);
    (* S0_x1=280, S0_y1=70, S0_x2=280, S0_y2=150 *) net net4(n_280_70, n_280_150);
    (* S0_x1=370, S0_y1=180, S0_x2=410, S0_y2=180 *) net net5(n_370_180, n_410_180);
    (* S0_x1=410, S0_y1=70, S0_x2=410, S0_y2=180 *) net net6(n_410_70, n_410_180);
    (* S0_x1=370, S0_y1=70, S0_x2=410, S0_y2=70 *) net net7(n_370_70, n_410_70);
    (* S0_x1=550, S0_y1=150, S0_x2=560, S0_y2=150 *) net net8(n_550_150, n_560_150);
    (* S0_x1=560, S0_y1=70, S0_x2=590, S0_y2=70 *) net net9(n_560_70, n_590_70);
    (* S0_x1=560, S0_y1=150, S0_x2=590, S0_y2=150 *) net net10(n_560_150, n_590_150);
    (* S0_x1=560, S0_y1=70, S0_x2=560, S0_y2=150 *) net net11(n_560_70, n_560_150);
    (* S0_x1=650, S0_y1=180, S0_x2=700, S0_y2=180 *) net net12(n_650_180, n_700_180);
    (* S0_x1=700, S0_y1=70, S0_x2=700, S0_y2=180 *) net net13(n_700_70, n_700_180);
    (* S0_x1=650, S0_y1=70, S0_x2=700, S0_y2=70 *) net net14(n_650_70, n_700_70);
    (* S0_x1=700, S0_y1=180, S0_x2=730, S0_y2=180 *) net Vout(n_700_180, n_730_180);
    (* S0_x1=550, S0_y1=210, S0_x2=570, S0_y2=210 *) net net15(n_550_210, n_570_210);
    (* S0_x1=570, S0_y1=210, S0_x2=590, S0_y2=210 *) net net16(n_570_210, n_590_210);
    (* S0_x1=480, S0_y1=150, S0_x2=490, S0_y2=150 *) net net17(n_480_150, n_490_150);
    (* S0_x1=170, S0_y1=150, S0_x2=180, S0_y2=150 *) net net18(n_170_150, n_180_150);
    (* S0_x1=410, S0_y1=180, S0_x2=410, S0_y2=210 *) net net19(n_410_180, n_410_210);
    (* S0_x1=410, S0_y1=210, S0_x2=490, S0_y2=210 *) net net20(n_410_210, n_490_210);
    (* S0_x1=280, S0_y1=210, S0_x2=310, S0_y2=210 *) net net21(n_280_210, n_310_210);
    (* S0_x1=280, S0_y1=210, S0_x2=280, S0_y2=250 *) net net22(n_280_210, n_280_250);
    (* S0_x1=100, S0_y1=290, S0_x2=100, S0_y2=310 *) net net23(n_100_290, n_100_310);
    (* S0_x1=100, S0_y1=210, S0_x2=180, S0_y2=210 *) net Vin(n_100_210, n_180_210);
    (* S0_x1=100, S0_y1=210, S0_x2=100, S0_y2=230 *) net net24(n_100_210, n_100_230);
    (* S0_x1=570, S0_y1=210, S0_x2=570, S0_y2=250 *) net net25(n_570_210, n_570_250);
endmodule
