module curtice_1(.Source(n_90_410), .Drain(n_90_180), .Gate(n_360_30));
    inout n_90_410;
    inout n_90_180;
    inout n_360_30;
    wire n_110_180;
    wire n_140_180;
    wire n_170_180;
    wire n_170_410;
    wire n_190_180;
    wire n_200_410;
    wire n_210_220;
    wire n_210_240;
    wire n_210_300;
    wire n_210_320;
    wire n_220_180;
    wire n_230_410;
    wire n_240_320;
    wire n_250_180;
    wire n_250_410;
    wire n_270_180;
    wire n_270_240;
    wire n_270_300;
    wire n_270_320;
    wire n_280_180;
    wire n_280_410;
    wire n_300_270;
    wire n_310_180;
    wire n_310_410;
    wire n_330_220;
    wire n_330_240;
    wire n_330_300;
    wire n_330_320;
    wire n_330_410;
    wire n_340_180;
    wire n_360_60;
    wire n_360_90;
    wire n_360_100;
    wire n_360_130;
    wire n_360_160;
    wire n_360_180;
    wire n_360_220;
    wire n_390_220;
    wire n_390_240;
    wire n_390_300;
    wire n_390_320;
    wire n_490_20;
    wire n_490_240;
    (* S0_x1=250, S0_y1=410S0_x2=310, S0_y2=410 *) R #() Rs ( n_250_410, n_310_410 );
    (* S0_x1=170, S0_y1=410S0_x2=230, S0_y2=410 *) L #() Ls ( n_170_410, n_230_410 );
    (* S0_x1=90, S0_y1=410 *) Port #() Source ( n_90_410 );
    (* S0_x1=210, S0_y1=320S0_x2=270, S0_y2=320 *) R #() Rin ( n_210_320, n_270_320 );
    (* S0_x1=340, S0_y1=180S0_x2=280, S0_y2=180 *) EDD #() D2 ( n_340_180, n_280_180 );
    (* S0_x1=90, S0_y1=180 *) Port #() Drain ( n_90_180 );
    (* S0_x1=190, S0_y1=180S0_x2=250, S0_y2=180 *) R #() Rd ( n_190_180, n_250_180 );
    (* S0_x1=110, S0_y1=180S0_x2=170, S0_y2=180 *) L #() Ld ( n_110_180, n_170_180 );
    (* S0_x1=360, S0_y1=160S0_x2=360, S0_y2=100 *) R #() Rg ( n_360_160, n_360_100 );
    (* S0_x1=360, S0_y1=90S0_x2=360, S0_y2=30 *) L #() Lg ( n_360_90, n_360_30 );
    (* S0_x1=360, S0_y1=30 *) Port #() Gate ( n_360_30 );
    (*  *) Eqn #() Eqn1 (  );
    (*  *) Eqn #() Eqn2 (  );
    (* S0_x1=390, S0_y1=240S0_x2=390, S0_y2=300S0_x3=330, S0_y3=240S0_x4=330, S0_y4=300S0_x5=270, S0_y5=240S0_x6=270, S0_y6=300S0_x7=210, S0_y7=240S0_x8=210, S0_y8=300 *) EDD #() D1 ( n_390_240, n_390_300, n_330_240, n_330_300, n_270_240, n_270_300, n_210_240, n_210_300 );
    (* S0_x1=270, S0_y1=300S0_x2=270, S0_y2=320 *) net #() net1 ( n_270_300, n_270_320 );
    (* S0_x1=390, S0_y1=300S0_x2=390, S0_y2=320 *) net #() net2 ( n_390_300, n_390_320 );
    (* S0_x1=270, S0_y1=320S0_x2=330, S0_y2=320 *) net #() net3 ( n_270_320, n_330_320 );
    (* S0_x1=330, S0_y1=320S0_x2=390, S0_y2=320 *) net #() net4 ( n_330_320, n_390_320 );
    (* S0_x1=330, S0_y1=300S0_x2=330, S0_y2=320 *) net #() net5 ( n_330_300, n_330_320 );
    (* S0_x1=330, S0_y1=220S0_x2=330, S0_y2=240 *) net #() net6 ( n_330_220, n_330_240 );
    (* S0_x1=390, S0_y1=220S0_x2=390, S0_y2=240 *) net #() net7 ( n_390_220, n_390_240 );
    (* S0_x1=330, S0_y1=220S0_x2=360, S0_y2=220 *) net #() net8 ( n_330_220, n_360_220 );
    (* S0_x1=210, S0_y1=300S0_x2=210, S0_y2=320 *) net #() net9 ( n_210_300, n_210_320 );
    (* S0_x1=210, S0_y1=220S0_x2=330, S0_y2=220 *) net #() net10 ( n_210_220, n_330_220 );
    (* S0_x1=210, S0_y1=220S0_x2=210, S0_y2=240 *) net #() net11 ( n_210_220, n_210_240 );
    (* S0_x1=330, S0_y1=320S0_x2=330, S0_y2=410 *) net #() net12 ( n_330_320, n_330_410 );
    (* S0_x1=310, S0_y1=410S0_x2=330, S0_y2=410 *) net #() net13 ( n_310_410, n_330_410 );
    (* S0_x1=230, S0_y1=410S0_x2=250, S0_y2=410 *) net #() net14 ( n_230_410, n_250_410 );
    (* S0_x1=90, S0_y1=410S0_x2=170, S0_y2=410 *) net #() net15 ( n_90_410, n_170_410 );
    (* S0_x1=360, S0_y1=220S0_x2=390, S0_y2=220 *) net #() net16 ( n_360_220, n_390_220 );
    (* S0_x1=360, S0_y1=180S0_x2=360, S0_y2=220 *) net #() net17 ( n_360_180, n_360_220 );
    (* S0_x1=340, S0_y1=180S0_x2=360, S0_y2=180 *) net #() net18 ( n_340_180, n_360_180 );
    (* S0_x1=270, S0_y1=180S0_x2=270, S0_y2=240 *) net #() net19 ( n_270_180, n_270_240 );
    (* S0_x1=270, S0_y1=180S0_x2=280, S0_y2=180 *) net #() net20 ( n_270_180, n_280_180 );
    (* S0_x1=250, S0_y1=180S0_x2=270, S0_y2=180 *) net #() net21 ( n_250_180, n_270_180 );
    (* S0_x1=170, S0_y1=180S0_x2=190, S0_y2=180 *) net #() net22 ( n_170_180, n_190_180 );
    (* S0_x1=90, S0_y1=180S0_x2=110, S0_y2=180 *) net #() net23 ( n_90_180, n_110_180 );
    (* S0_x1=360, S0_y1=160S0_x2=360, S0_y2=180 *) net #() net24 ( n_360_160, n_360_180 );
    (* S0_x1=360, S0_y1=90S0_x2=360, S0_y2=100 *) net #() net25 ( n_360_90, n_360_100 );
endmodule
