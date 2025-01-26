module tline0();
    wire n_1040_350;
    wire n_1230_350;
    wire n_1230_680;
    wire n_290_300;
    wire n_290_350;
    wire n_290_430;
    wire n_290_490;
    wire n_290_550;
    wire n_390_350;
    wire n_450_350;
    wire n_480_300;
    wire n_480_350;
    wire n_660_350;
    wire n_720_350;
    wire n_910_300;
    wire n_910_350;
    wire n_980_350;
    (* S0_x1=290, S0_y1=550 *) GND *(n_290_550);
    (* S0_x1=500, S0_y1=300 *) GND *3(n_500_300);
    (* S0_x1=930, S0_y1=300 *) GND *2(n_930_300);
    (* S0_x1=310, S0_y1=300 *) GND *4(n_310_300);
    (*  *) .TR TR1();
    (* S0_x1=660, S0_y1=350, S0_x2=720, S0_y2=350 *) TLIN Line1(n_660_350,n_720_350);
    (* S0_x1=390, S0_y1=350, S0_x2=450, S0_y2=350 *) R R1(n_390_350,n_450_350);
    (* S0_x1=480, S0_y1=300, S0_x2=500, S0_y2=300 *) VProbe Pr2(n_480_300,n_500_300);
    (* S0_x1=290, S0_y1=300, S0_x2=310, S0_y2=300 *) VProbe Pr1(n_290_300,n_310_300);
    (* S0_x1=910, S0_y1=300, S0_x2=930, S0_y2=300 *) VProbe Pr3(n_910_300,n_930_300);
    (* S0_x1=980, S0_y1=350, S0_x2=1040, S0_y2=350 *) R R2(n_980_350,n_1040_350);
    (* S0_x1=1230, S0_y1=680 *) GND *1(n_1230_680);
    (* S0_x1=290, S0_y1=430, S0_x2=290, S0_y2=490 *) Vpulse V1(n_290_430,n_290_490);
    (* S0_x1=980, S0_y1=350, S0_x2=1040, S0_y2=350 *) R R2(n_980_350,n_1040_350);
    (* S0_x1=290, S0_y1=490, S0_x2=290, S0_y2=550 *) net net0(n_290_490, n_290_550);
    (* S0_x1=450, S0_y1=350, S0_x2=480, S0_y2=350 *) net net1(n_450_350, n_480_350);
    (* S0_x1=910, S0_y1=350, S0_x2=980, S0_y2=350 *) net net2(n_910_350, n_980_350);
    (* S0_x1=720, S0_y1=350, S0_x2=910, S0_y2=350 *) net net3(n_720_350, n_910_350);
    (* S0_x1=480, S0_y1=350, S0_x2=660, S0_y2=350 *) net net4(n_480_350, n_660_350);
    (* S0_x1=290, S0_y1=350, S0_x2=390, S0_y2=350 *) net net5(n_290_350, n_390_350);
    (* S0_x1=480, S0_y1=300, S0_x2=480, S0_y2=350 *) net net6(n_480_300, n_480_350);
    (* S0_x1=290, S0_y1=300, S0_x2=290, S0_y2=350 *) net net7(n_290_300, n_290_350);
    (* S0_x1=910, S0_y1=300, S0_x2=910, S0_y2=350 *) net net8(n_910_300, n_910_350);
    (* S0_x1=290, S0_y1=350, S0_x2=290, S0_y2=430 *) net net9(n_290_350, n_290_430);
    (* S0_x1=1040, S0_y1=350, S0_x2=1230, S0_y2=350 *) net net10(n_1040_350, n_1230_350);
    (* S0_x1=1230, S0_y1=350, S0_x2=1230, S0_y2=680 *) net net11(n_1230_350, n_1230_680);
endmodule
