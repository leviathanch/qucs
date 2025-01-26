module groupdelay_ac();
    wire n_120_140;
    wire n_180_140;
    wire n_240_140;
    wire n_240_190;
    wire n_280_140;
    wire n_340_140;
    wire n_380_140;
    wire n_380_190;
    wire n_450_140;
    wire n_510_140;
    wire n_550_140;
    wire n_550_170;
    wire n_550_230;
    wire n_550_250;
    wire n_60_140;
    wire n_60_170;
    wire n_60_230;
    wire n_60_250;
    (* S0_x1=240, S0_y1=250, S0_x2=240, S0_y2=190 *) C C1(n_240_250,n_240_190);
    (* S0_x1=240, S0_y1=250 *) GND *(n_240_250);
    (* S0_x1=280, S0_y1=140, S0_x2=340, S0_y2=140 *) L L1(n_280_140,n_340_140);
    (* S0_x1=380, S0_y1=250, S0_x2=380, S0_y2=190 *) C C2(n_380_250,n_380_190);
    (* S0_x1=380, S0_y1=250 *) GND *(n_380_250);
    (* S0_x1=60, S0_y1=250 *) GND *(n_60_250);
    (* S0_x1=60, S0_y1=170, S0_x2=60, S0_y2=230 *) Vac V1(n_60_170,n_60_230);
    (* S0_x1=550, S0_y1=170, S0_x2=550, S0_y2=230 *) Vac V2(n_550_170,n_550_230);
    (* S0_x1=550, S0_y1=250 *) GND *(n_550_250);
    (* S0_x1=450, S0_y1=140, S0_x2=510, S0_y2=140 *) R R2(n_450_140,n_510_140);
    (*  *) .AC AC1();
    (*  *) Eqn Eqn1();
    (* S0_x1=120, S0_y1=140, S0_x2=180, S0_y2=140 *) R R1(n_120_140,n_180_140);
    (* S0_x1=240, S0_y1=140, S0_x2=240, S0_y2=190 *) net net0(n_240_140, n_240_190);
    (* S0_x1=380, S0_y1=140, S0_x2=380, S0_y2=190 *) net net1(n_380_140, n_380_190);
    (* S0_x1=240, S0_y1=140, S0_x2=280, S0_y2=140 *) net net2(n_240_140, n_280_140);
    (* S0_x1=340, S0_y1=140, S0_x2=380, S0_y2=140 *) net net3(n_340_140, n_380_140);
    (* S0_x1=60, S0_y1=230, S0_x2=60, S0_y2=250 *) net net4(n_60_230, n_60_250);
    (* S0_x1=380, S0_y1=140, S0_x2=450, S0_y2=140 *) net P2(n_380_140, n_450_140);
    (* S0_x1=510, S0_y1=140, S0_x2=550, S0_y2=140 *) net net5(n_510_140, n_550_140);
    (* S0_x1=550, S0_y1=140, S0_x2=550, S0_y2=170 *) net net6(n_550_140, n_550_170);
    (* S0_x1=550, S0_y1=230, S0_x2=550, S0_y2=250 *) net net7(n_550_230, n_550_250);
    (* S0_x1=180, S0_y1=140, S0_x2=240, S0_y2=140 *) net P1(n_180_140, n_240_140);
    (* S0_x1=60, S0_y1=140, S0_x2=60, S0_y2=170 *) net net8(n_60_140, n_60_170);
    (* S0_x1=60, S0_y1=140, S0_x2=120, S0_y2=140 *) net net9(n_60_140, n_120_140);
endmodule
