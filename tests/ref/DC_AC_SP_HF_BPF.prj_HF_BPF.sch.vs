module HF_BPF();
    wire n_100_120;
    wire n_100_180;
    wire n_100_220;
    wire n_100_90;
    wire n_270_140;
    wire n_270_200;
    wire n_310_140;
    wire n_310_200;
    wire n_310_220;
    wire n_310_90;
    wire n_380_90;
    wire n_440_90;
    wire n_520_90;
    wire n_580_90;
    wire n_590_140;
    wire n_590_200;
    wire n_630_140;
    wire n_630_200;
    wire n_630_220;
    wire n_630_280;
    wire n_630_290;
    wire n_630_90;
    wire n_800_140;
    wire n_800_200;
    wire n_800_220;
    wire n_800_90;
    (* S0_x1=520, S0_y1=90, S0_x2=580, S0_y2=90 *) INDQ INDQ1 (n_520_90, n_580_90);
    (* S0_x1=630, S0_y1=200, S0_x2=630, S0_y2=140 *) INDQ INDQ3 (n_630_200, n_630_140);
    (* S0_x1=590, S0_y1=200, S0_x2=590, S0_y2=140 *) CAPQ CAPQ3 (n_590_200, n_590_140);
    (* S0_x1=800, S0_y1=220 *) GND \* (n_800_220);
    (* S0_x1=800, S0_y1=140, S0_x2=800, S0_y2=200 *) Pac P1 (n_800_140, n_800_200);
    (* S0_x1=310, S0_y1=200, S0_x2=310, S0_y2=140 *) INDQ INDQ2 (n_310_200, n_310_140);
    (* S0_x1=380, S0_y1=90, S0_x2=440, S0_y2=90 *) CAPQ CAPQ1 (n_380_90, n_440_90);
    (* S0_x1=270, S0_y1=200, S0_x2=270, S0_y2=140 *) CAPQ CAPQ2 (n_270_200, n_270_140);
    (* S0_x1=310, S0_y1=220 *) GND \* (n_310_220);
    (*  *) .DC DC1 ();
    (*  *) Eqn Eqn2 ();
    (*  *) Eqn Eqn1 ();
    (*  *) .SP SP1 ();
    (*  *) .AC AC1 ();
    (* S0_x1=100, S0_y1=220 *) GND \* (n_100_220);
    (* S0_x1=100, S0_y1=120, S0_x2=100, S0_y2=180 *) Pac P2 (n_100_120, n_100_180);
    (* S0_x1=630, S0_y1=290 *) GND \* (n_630_290);
    (* S0_x1=630, S0_y1=220, S0_x2=630, S0_y2=280 *) Vdc V1 (n_630_220, n_630_280);
    (* S0_x1=630, S0_y1=90, S0_x2=630, S0_y2=140 *) net net0(n_630_90, n_630_140);
    (* S0_x1=590, S0_y1=140, S0_x2=630, S0_y2=140 *) net net1(n_590_140, n_630_140);
    (* S0_x1=590, S0_y1=200, S0_x2=630, S0_y2=200 *) net net2(n_590_200, n_630_200);
    (* S0_x1=630, S0_y1=200, S0_x2=630, S0_y2=220 *) net net3(n_630_200, n_630_220);
    (* S0_x1=580, S0_y1=90, S0_x2=630, S0_y2=90 *) net net4(n_580_90, n_630_90);
    (* S0_x1=630, S0_y1=90, S0_x2=800, S0_y2=90 *) net net5(n_630_90, n_800_90);
    (* S0_x1=800, S0_y1=90, S0_x2=800, S0_y2=140 *) net net6(n_800_90, n_800_140);
    (* S0_x1=800, S0_y1=200, S0_x2=800, S0_y2=220 *) net net7(n_800_200, n_800_220);
    (* S0_x1=440, S0_y1=90, S0_x2=520, S0_y2=90 *) net net8(n_440_90, n_520_90);
    (* S0_x1=310, S0_y1=90, S0_x2=310, S0_y2=140 *) net net9(n_310_90, n_310_140);
    (* S0_x1=270, S0_y1=140, S0_x2=310, S0_y2=140 *) net net10(n_270_140, n_310_140);
    (* S0_x1=270, S0_y1=200, S0_x2=310, S0_y2=200 *) net net11(n_270_200, n_310_200);
    (* S0_x1=310, S0_y1=90, S0_x2=380, S0_y2=90 *) net net12(n_310_90, n_380_90);
    (* S0_x1=310, S0_y1=200, S0_x2=310, S0_y2=220 *) net net13(n_310_200, n_310_220);
    (* S0_x1=100, S0_y1=90, S0_x2=310, S0_y2=90 *) net net14(n_100_90, n_310_90);
    (* S0_x1=100, S0_y1=90, S0_x2=100, S0_y2=120 *) net net15(n_100_90, n_100_120);
    (* S0_x1=100, S0_y1=180, S0_x2=100, S0_y2=220 *) net net16(n_100_180, n_100_220);
    (* S0_x1=630, S0_y1=280, S0_x2=630, S0_y2=290 *) net net17(n_630_280, n_630_290);
endmodule
