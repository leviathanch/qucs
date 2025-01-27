module combinat();
    wire n_120_140;
    wire n_120_180;
    wire n_120_210;
    wire n_120_240;
    wire n_120_260;
    wire n_130_370;
    wire n_130_390;
    wire n_130_420;
    wire n_130_450;
    wire n_150_710;
    wire n_330_70;
    wire n_330_140;
    wire n_340_50;
    wire n_350_70;
    wire n_380_330;
    wire n_380_370;
    wire n_390_310;
    wire n_400_330;
    wire n_540_160;
    wire n_540_370;
    wire n_620_210;
    wire n_620_230;
    wire n_620_250;
    wire n_620_280;
    wire n_620_310;
    wire n_730_120;
    wire n_730_190;
    wire n_730_250;
    wire n_730_310;
    wire n_760_120;
    wire n_760_140;
    wire n_760_160;
    wire n_760_190;
    wire n_760_210;
    wire n_760_230;
    wire n_760_250;
    wire n_810_160;
    wire n_860_170;
    wire n_890_130;
    wire n_890_170;
    wire n_900_110;
    wire n_910_130;
    (* S0_x1=380, S0_y1=330S0_x2=400, S0_y2=330 *) VProbe #() Pr3 ( n_380_330, n_400_330 );
    (* S0_x1=400, S0_y1=330 *) GND #() \*  ( n_400_330 );
    (*  *) \.TR  #() TR1 (  );
    (* S0_x1=890, S0_y1=130S0_x2=910, S0_y2=130 *) VProbe #() Pr5 ( n_890_130, n_910_130 );
    (* S0_x1=620, S0_y1=250S0_x2=620, S0_y2=310 *) Vdc #() V3 ( n_620_250, n_620_310 );
    (* S0_x1=730, S0_y1=310 *) GND #() \*  ( n_730_310 );
    (* S0_x1=620, S0_y1=310 *) GND #() \*5  ( n_620_310 );
    (* S0_x1=910, S0_y1=130 *) GND #() \*4  ( n_910_130 );
    (* S0_x1=760, S0_y1=120S0_x2=760, S0_y2=140S0_x3=760, S0_y3=160S0_x4=760, S0_y4=190S0_x5=760, S0_y5=210S0_x6=760, S0_y6=230S0_x7=760, S0_y7=250S0_x8=860, S0_y8=170 *) mux4to1 #() Y5 ( n_760_120, n_760_140, n_760_160, n_760_190, n_760_210, n_760_230, n_760_250, n_860_170 );
    (* S0_x1=120, S0_y1=180S0_x2=120, S0_y2=240 *) Vrect #() V1 ( n_120_180, n_120_240 );
    (* S0_x1=120, S0_y1=260 *) GND #() \*  ( n_120_260 );
    (* S0_x1=330, S0_y1=70S0_x2=350, S0_y2=70 *) VProbe #() Pr1 ( n_330_70, n_350_70 );
    (* S0_x1=350, S0_y1=70 *) GND #() \*6  ( n_350_70 );
    (* S0_x1=130, S0_y1=450 *) GND #() \*  ( n_130_450 );
    (* S0_x1=130, S0_y1=390S0_x2=130, S0_y2=450 *) Vrect #() V2 ( n_130_390, n_130_450 );
    (* S0_x1=380, S0_y1=370S0_x2=540, S0_y2=370 *) net #() net1 ( n_380_370, n_540_370 );
    (* S0_x1=380, S0_y1=330S0_x2=380, S0_y2=370 *) net #() net2 ( n_380_330, n_380_370 );
    (* S0_x1=860, S0_y1=170S0_x2=890, S0_y2=170 *) net #() net3 ( n_860_170, n_890_170 );
    (* S0_x1=890, S0_y1=130S0_x2=890, S0_y2=170 *) net #() net4 ( n_890_130, n_890_170 );
    (* S0_x1=730, S0_y1=190S0_x2=730, S0_y2=250 *) net #() net5 ( n_730_190, n_730_250 );
    (* S0_x1=730, S0_y1=190S0_x2=760, S0_y2=190 *) net #() net6 ( n_730_190, n_760_190 );
    (* S0_x1=620, S0_y1=210S0_x2=620, S0_y2=230 *) net #() net7 ( n_620_210, n_620_230 );
    (* S0_x1=620, S0_y1=210S0_x2=760, S0_y2=210 *) net #() net8 ( n_620_210, n_760_210 );
    (* S0_x1=620, S0_y1=230S0_x2=620, S0_y2=250 *) net #() net9 ( n_620_230, n_620_250 );
    (* S0_x1=620, S0_y1=230S0_x2=760, S0_y2=230 *) net #() net10 ( n_620_230, n_760_230 );
    (* S0_x1=730, S0_y1=250S0_x2=760, S0_y2=250 *) net #() net11 ( n_730_250, n_760_250 );
    (* S0_x1=730, S0_y1=120S0_x2=760, S0_y2=120 *) net #() net12 ( n_730_120, n_760_120 );
    (* S0_x1=730, S0_y1=120S0_x2=730, S0_y2=190 *) net #() net13 ( n_730_120, n_730_190 );
    (* S0_x1=730, S0_y1=250S0_x2=730, S0_y2=310 *) net #() net14 ( n_730_250, n_730_310 );
    (* S0_x1=540, S0_y1=160S0_x2=760, S0_y2=160 *) net #() net15 ( n_540_160, n_760_160 );
    (* S0_x1=540, S0_y1=160S0_x2=540, S0_y2=370 *) net #() net16 ( n_540_160, n_540_370 );
    (* S0_x1=120, S0_y1=240S0_x2=120, S0_y2=260 *) net #() net17 ( n_120_240, n_120_260 );
    (* S0_x1=330, S0_y1=70S0_x2=330, S0_y2=140 *) net #() net18 ( n_330_70, n_330_140 );
    (* S0_x1=330, S0_y1=140S0_x2=760, S0_y2=140 *) net #() net19 ( n_330_140, n_760_140 );
    (* S0_x1=120, S0_y1=140S0_x2=120, S0_y2=180 *) net #() net20 ( n_120_140, n_120_180 );
    (* S0_x1=120, S0_y1=140S0_x2=330, S0_y2=140 *) net #() net21 ( n_120_140, n_330_140 );
    (* S0_x1=130, S0_y1=370S0_x2=130, S0_y2=390 *) net #() net22 ( n_130_370, n_130_390 );
    (* S0_x1=130, S0_y1=370S0_x2=380, S0_y2=370 *) net #() net23 ( n_130_370, n_380_370 );
endmodule
