module opa227(.P1(n_160_160), .P3(n_610_160), .P2(n_160_220));
    inout n_160_160;
    inout n_610_160;
    inout n_160_220;
    wire n_230_160;
    wire n_230_220;
    wire n_260_190;
    wire n_290_160;
    wire n_290_220;
    wire n_330_160;
    wire n_360_160;
    wire n_390_160;
    wire n_410_220;
    wire n_440_160;
    wire n_440_190;
    wire n_440_220;
    wire n_500_160;
    wire n_500_220;
    wire n_530_190;
    wire n_560_160;
    wire n_560_220;
    wire n_600_220;
    (* S0_x1=500, S0_y1=160, S0_x2=560, S0_y2=160, S0_x3=560, S0_y3=220, S0_x4=500, S0_y4=220 *) VCVS SRC2 ( n_500_160, n_560_160, n_560_220, n_500_220 );
    (* S0_x1=410, S0_y1=220 *) GND \*  ( n_410_220 );
    (* S0_x1=330, S0_y1=160, S0_x2=390, S0_y2=160 *) R R1 ( n_330_160, n_390_160 );
    (* S0_x1=440, S0_y1=220, S0_x2=440, S0_y2=160 *) C C1 ( n_440_220, n_440_160 );
    (* S0_x1=230, S0_y1=160, S0_x2=290, S0_y2=160, S0_x3=290, S0_y3=220, S0_x4=230, S0_y4=220 *) VCVS SRC1 ( n_230_160, n_290_160, n_290_220, n_230_220 );
    (* S0_x1=160, S0_y1=160 *) Port P1 ( n_160_160 );
    (* S0_x1=610, S0_y1=160 *) Port P3 ( n_610_160 );
    (* S0_x1=160, S0_y1=220 *) Port P2 ( n_160_220 );
    (* S0_x1=600, S0_y1=220 *) GND \*  ( n_600_220 );
    (* S0_x1=390, S0_y1=160, S0_x2=440, S0_y2=160 *) net net1 ( n_390_160, n_440_160 );
    (* S0_x1=410, S0_y1=220, S0_x2=440, S0_y2=220 *) net net2 ( n_410_220, n_440_220 );
    (* S0_x1=560, S0_y1=160, S0_x2=610, S0_y2=160 *) net net3 ( n_560_160, n_610_160 );
    (* S0_x1=290, S0_y1=220, S0_x2=410, S0_y2=220 *) net net4 ( n_290_220, n_410_220 );
    (* S0_x1=290, S0_y1=160, S0_x2=330, S0_y2=160 *) net net5 ( n_290_160, n_330_160 );
    (* S0_x1=440, S0_y1=220, S0_x2=500, S0_y2=220 *) net net6 ( n_440_220, n_500_220 );
    (* S0_x1=440, S0_y1=160, S0_x2=500, S0_y2=160 *) net net7 ( n_440_160, n_500_160 );
    (* S0_x1=160, S0_y1=160, S0_x2=230, S0_y2=160 *) net net8 ( n_160_160, n_230_160 );
    (* S0_x1=160, S0_y1=220, S0_x2=230, S0_y2=220 *) net net9 ( n_160_220, n_230_220 );
    (* S0_x1=560, S0_y1=220, S0_x2=600, S0_y2=220 *) net net10 ( n_560_220, n_600_220 );
endmodule
