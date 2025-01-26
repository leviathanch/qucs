module gain();
    wire n_130_80;
    wire n_130_90;
    wire n_160_200;
    wire n_160_240;
    wire n_160_310;
    wire n_210_170;
    wire n_210_270;
    wire n_210_340;
    wire n_210_80;
    wire n_230_310;
    wire n_260_220;
    wire n_290_220;
    wire n_290_310;
    wire n_360_220;
    wire n_360_240;
    wire n_40_200;
    wire n_40_260;
    wire n_40_270;
    (* S0_x1=40, S0_y1=200, S0_x2=40, S0_y2=260 *) Vac V4 (n_40_200, n_40_260);
    (* S0_x1=40, S0_y1=270 *) GND \* (n_40_270);
    (* S0_x1=290, S0_y1=310, S0_x2=230, S0_y2=310 *) R R2 (n_290_310, n_230_310);
    (* S0_x1=100, S0_y1=310 *) GND \* (n_100_310);
    (* S0_x1=360, S0_y1=300, S0_x2=360, S0_y2=240 *) R R1 (n_360_300, n_360_240);
    (* S0_x1=360, S0_y1=300 *) GND \* (n_360_300);
    (* S0_x1=130, S0_y1=150 *) GND \* (n_130_150);
    (* S0_x1=130, S0_y1=90, S0_x2=130, S0_y2=150 *) Vdc V3 (n_130_90, n_130_150);
    (* S0_x1=210, S0_y1=400 *) GND \* (n_210_400);
    (* S0_x1=210, S0_y1=340, S0_x2=210, S0_y2=400 *) Vdc V6 (n_210_340, n_210_400);
    (*  *) .AC AC1 ();
    (*  *) .DC DC1 ();
    (*  *) Eqn Eqn1 ();
    (* S0_x1=160, S0_y1=240, S0_x2=160, S0_y2=200, S0_x3=210, S0_y3=170, S0_x4=210, S0_y4=270, S0_x5=260, S0_y5=220 *) Sub OPV1 (n_160_240, n_160_200, n_210_170, n_210_270, n_260_220);
    (* S0_x1=160, S0_y1=310, S0_x2=100, S0_y2=310 *) R R3 (n_160_310, n_100_310);
    (* S0_x1=260, S0_y1=220, S0_x2=290, S0_y2=220 *) net net0(n_260_220, n_290_220);
    (* S0_x1=40, S0_y1=260, S0_x2=40, S0_y2=270 *) net net1(n_40_260, n_40_270);
    (* S0_x1=40, S0_y1=200, S0_x2=160, S0_y2=200 *) net net2(n_40_200, n_160_200);
    (* S0_x1=160, S0_y1=240, S0_x2=160, S0_y2=310 *) net net3(n_160_240, n_160_310);
    (* S0_x1=160, S0_y1=310, S0_x2=230, S0_y2=310 *) net net4(n_160_310, n_230_310);
    (* S0_x1=290, S0_y1=220, S0_x2=290, S0_y2=310 *) net net5(n_290_220, n_290_310);
    (* S0_x1=360, S0_y1=220, S0_x2=360, S0_y2=240 *) net net6(n_360_220, n_360_240);
    (* S0_x1=290, S0_y1=220, S0_x2=360, S0_y2=220 *) net Output(n_290_220, n_360_220);
    (* S0_x1=130, S0_y1=80, S0_x2=210, S0_y2=80 *) net net7(n_130_80, n_210_80);
    (* S0_x1=130, S0_y1=80, S0_x2=130, S0_y2=90 *) net net8(n_130_80, n_130_90);
    (* S0_x1=210, S0_y1=80, S0_x2=210, S0_y2=170 *) net net9(n_210_80, n_210_170);
    (* S0_x1=210, S0_y1=270, S0_x2=210, S0_y2=340 *) net net10(n_210_270, n_210_340);
endmodule
