module Puls3b();
    wire n_130_80;
    wire n_160_140;
    wire n_160_200;
    wire n_160_220;
    wire n_160_80;
    wire n_190_80;
    wire n_250_80;
    wire n_280_140;
    wire n_280_200;
    wire n_280_220;
    wire n_280_240;
    wire n_280_300;
    wire n_280_80;
    wire n_310_80;
    wire n_370_80;
    wire n_400_140;
    wire n_400_200;
    wire n_400_220;
    wire n_400_80;
    wire n_40_140;
    wire n_40_200;
    wire n_40_220;
    wire n_40_80;
    wire n_440_80;
    wire n_500_80;
    wire n_520_80;
    wire n_70_80;
    (* S0_x1=310, S0_y1=80, S0_x2=370, S0_y2=80 *) R RD(n_310_80, n_370_80);
    (* S0_x1=280, S0_y1=300 *) GND *(n_280_300);
    (* S0_x1=280, S0_y1=240, S0_x2=280, S0_y2=300 *) Vdc VDC(n_280_240, n_280_300);
    (* S0_x1=40, S0_y1=140, S0_x2=40, S0_y2=200 *) Vdc VGEN(n_40_140, n_40_200);
    (* S0_x1=160, S0_y1=200, S0_x2=160, S0_y2=140 *) C CS(n_160_200, n_160_140);
    (* S0_x1=280, S0_y1=200, S0_x2=280, S0_y2=140 *) R RE(n_280_200, n_280_140);
    (* S0_x1=400, S0_y1=200, S0_x2=400, S0_y2=140 *) C CL(n_400_200, n_400_140);
    (*  *) .TR TR1();
    (* S0_x1=440, S0_y1=80, S0_x2=500, S0_y2=80 *) R RI(n_440_80, n_500_80);
    (* S0_x1=190, S0_y1=80, S0_x2=250, S0_y2=80 *) Switch S2(n_190_80, n_250_80);
    (* S0_x1=70, S0_y1=80, S0_x2=130, S0_y2=80 *) Switch S1(n_70_80, n_130_80);
    (* S0_x1=280, S0_y1=220, S0_x2=280, S0_y2=240 *) net net0(n_280_220, n_280_240);
    (* S0_x1=160, S0_y1=220, S0_x2=280, S0_y2=220 *) net net1(n_160_220, n_280_220);
    (* S0_x1=400, S0_y1=200, S0_x2=400, S0_y2=220 *) net net2(n_400_200, n_400_220);
    (* S0_x1=280, S0_y1=220, S0_x2=400, S0_y2=220 *) net net3(n_280_220, n_400_220);
    (* S0_x1=280, S0_y1=200, S0_x2=280, S0_y2=220 *) net net4(n_280_200, n_280_220);
    (* S0_x1=250, S0_y1=80, S0_x2=280, S0_y2=80 *) net net5(n_250_80, n_280_80);
    (* S0_x1=280, S0_y1=80, S0_x2=280, S0_y2=140 *) net net6(n_280_80, n_280_140);
    (* S0_x1=160, S0_y1=200, S0_x2=160, S0_y2=220 *) net net7(n_160_200, n_160_220);
    (* S0_x1=130, S0_y1=80, S0_x2=160, S0_y2=80 *) net net8(n_130_80, n_160_80);
    (* S0_x1=160, S0_y1=80, S0_x2=160, S0_y2=140 *) net net9(n_160_80, n_160_140);
    (* S0_x1=40, S0_y1=80, S0_x2=40, S0_y2=140 *) net net10(n_40_80, n_40_140);
    (* S0_x1=40, S0_y1=80, S0_x2=70, S0_y2=80 *) net net11(n_40_80, n_70_80);
    (* S0_x1=40, S0_y1=200, S0_x2=40, S0_y2=220 *) net net12(n_40_200, n_40_220);
    (* S0_x1=40, S0_y1=220, S0_x2=160, S0_y2=220 *) net net13(n_40_220, n_160_220);
    (* S0_x1=370, S0_y1=80, S0_x2=400, S0_y2=80 *) net net14(n_370_80, n_400_80);
    (* S0_x1=400, S0_y1=80, S0_x2=400, S0_y2=140 *) net net15(n_400_80, n_400_140);
    (* S0_x1=400, S0_y1=80, S0_x2=440, S0_y2=80 *) net net16(n_400_80, n_440_80);
    (* S0_x1=160, S0_y1=80, S0_x2=190, S0_y2=80 *) net net17(n_160_80, n_190_80);
    (* S0_x1=280, S0_y1=80, S0_x2=310, S0_y2=80 *) net net18(n_280_80, n_310_80);
    (* S0_x1=500, S0_y1=80, S0_x2=520, S0_y2=80 *) net net19(n_500_80, n_520_80);
endmodule
