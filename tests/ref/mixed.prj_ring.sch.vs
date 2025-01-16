module ring();
    wire n_-1290_-1030;
    wire n_-1290_-920;
    wire n_-1310_-1030;
    wire n_-1310_-920;
    wire n_-1430_-570;
    wire n_-1430_-920;
    wire n_-1580_-1030;
    wire n_-1580_-830;
    wire n_-1580_-870;
    wire n_-1580_-990;
    wire n_-1590_-870;
    wire n_-1590_-990;
    wire n_-1610_-1020;
    wire n_-1610_-1030;
    wire n_-1610_-1310;
    wire n_-1610_-820;
    wire n_-1610_-830;
    wire n_-1610_-840;
    wire n_-1610_-900;
    wire n_-1610_-920;
    wire n_-1610_-960;
    wire n_-1640_-870;
    wire n_-1640_-990;
    wire n_-1650_-870;
    wire n_-1650_-930;
    wire n_-1650_-990;
    wire n_-1690_-1080;
    wire n_-1690_-510;
    wire n_-1690_-570;
    wire n_-1690_-630;
    wire n_-1710_-1080;
    wire n_-1710_-930;
    wire n_-1720_-510;
    wire n_-1720_-630;
    wire n_-1750_-1310;
    wire n_-1750_-380;
    wire n_-1750_-460;
    wire n_-1750_-480;
    wire n_-1750_-540;
    wire n_-1750_-570;
    wire n_-1750_-600;
    wire n_-1750_-660;
    wire n_-1750_-670;
    wire n_-1770_-510;
    wire n_-1770_-630;
    wire n_-1780_-460;
    wire n_-1780_-510;
    wire n_-1780_-630;
    wire n_-1780_-670;
    wire n_-1800_-930;
    wire n_-1860_-930;
    wire n_-1870_-1110;
    wire n_-1870_-1170;
    wire n_-1870_-1230;
    wire n_-1870_-1310;
    wire n_-2070_-930;
    wire n_-2130_-930;
    wire n_-2150_-570;
    wire n_-2210_-570;
    wire n_-2300_-570;
    wire n_-2300_-930;
    wire n_-2360_-570;
    wire n_-2360_-920;
    wire n_-2360_-940;
    wire n_-2550_-1010;
    wire n_-2570_-1010;
    wire n_-2570_-570;
    wire n_-2570_-940;
    wire n_-2830_-710;
    wire n_-2830_-750;
    wire n_-2830_-810;
    wire n_-2830_-920;
    (* x=-1290, y=-920 *) GND *2(n_-1290_-920);
    (* x=-1610, y=-990 *) MOSFET T3(n_-1640_-990,n_-1610_-960,n_-1610_-1020,n_-1590_-990);
    (* x=-1610, y=-870 *) MOSFET T2(n_-1640_-870,n_-1610_-840,n_-1610_-900,n_-1590_-870);
    (* x=-1610, y=-820 *) GND *1(n_-1610_-820);
    (* x=-1750, y=-630 *) MOSFET T4(n_-1720_-630,n_-1750_-600,n_-1750_-660,n_-1770_-630);
    (* x=-1750, y=-510 *) MOSFET T5(n_-1720_-510,n_-1750_-480,n_-1750_-540,n_-1770_-510);
    (* x=-1750, y=-380 *) GND *5(n_-1750_-380);
    (* x=-3230, y=-870 *) .TR TR1();
    (* x=-1830, y=-930 *) Inv Y1(n_-1800_-930,n_-1860_-930);
    (* x=-2180, y=-570 *) Inv Y4(n_-2210_-570,n_-2150_-570);
    (* x=-2330, y=-570 *) Inv Y5(n_-2360_-570,n_-2300_-570);
    (* x=-1700, y=-1100 *) VProbe Pr6(n_-1710_-1080,n_-1690_-1080);
    (* x=-1690, y=-1080 *) GND *11(n_-1690_-1080);
    (* x=-1300, y=-1050 *) VProbe Pr4(n_-1310_-1030,n_-1290_-1030);
    (* x=-2560, y=-1030 *) VProbe Pr7(n_-2570_-1010,n_-2550_-1010);
    (* x=-2550, y=-1010 *) GND *12(n_-2550_-1010);
    (* x=-1870, y=-1200 *) Vdc V3(n_-1870_-1230,n_-1870_-1170);
    (* x=-1870, y=-1110 *) GND *(n_-1870_-1110);
    (* x=-2830, y=-710 *) GND *(n_-2830_-710);
    (* x=-2830, y=-780 *) Vpulse V4(n_-2830_-810,n_-2830_-750);
    (* x=-2330, y=-930 *) NAND Y3(n_-2300_-930,n_-2360_-920,n_-2360_-940);
    (* x=-2100, y=-930 *) Inv Y2(n_-2070_-930,n_-2130_-930);
    (* S0_x1=-2150, S0_y1=-570, S0_x2=-1750, S0_y2=-570 *) net net0(n_-2150_-570, n_-1750_-570);
    (* S0_x1=-2300, S0_y1=-570, S0_x2=-2210, S0_y2=-570 *) net net1(n_-2300_-570, n_-2210_-570);
    (* S0_x1=-1590, S0_y1=-990, S0_x2=-1580, S0_y2=-990 *) net net2(n_-1590_-990, n_-1580_-990);
    (* S0_x1=-1580, S0_y1=-1030, S0_x2=-1580, S0_y2=-990 *) net net3(n_-1580_-1030, n_-1580_-990);
    (* S0_x1=-1610, S0_y1=-1310, S0_x2=-1610, S0_y2=-1030 *) net net4(n_-1610_-1310, n_-1610_-1030);
    (* S0_x1=-1610, S0_y1=-1030, S0_x2=-1610, S0_y2=-1020 *) net net5(n_-1610_-1030, n_-1610_-1020);
    (* S0_x1=-1610, S0_y1=-1030, S0_x2=-1580, S0_y2=-1030 *) net net6(n_-1610_-1030, n_-1580_-1030);
    (* S0_x1=-1590, S0_y1=-870, S0_x2=-1580, S0_y2=-870 *) net net7(n_-1590_-870, n_-1580_-870);
    (* S0_x1=-1580, S0_y1=-870, S0_x2=-1580, S0_y2=-830 *) net net8(n_-1580_-870, n_-1580_-830);
    (* S0_x1=-1610, S0_y1=-840, S0_x2=-1610, S0_y2=-830 *) net net9(n_-1610_-840, n_-1610_-830);
    (* S0_x1=-1610, S0_y1=-830, S0_x2=-1610, S0_y2=-820 *) net net10(n_-1610_-830, n_-1610_-820);
    (* S0_x1=-1610, S0_y1=-830, S0_x2=-1580, S0_y2=-830 *) net net11(n_-1610_-830, n_-1580_-830);
    (* S0_x1=-1750, S0_y1=-670, S0_x2=-1750, S0_y2=-660 *) net net12(n_-1750_-670, n_-1750_-660);
    (* S0_x1=-1780, S0_y1=-630, S0_x2=-1770, S0_y2=-630 *) net net13(n_-1780_-630, n_-1770_-630);
    (* S0_x1=-1780, S0_y1=-670, S0_x2=-1780, S0_y2=-630 *) net net14(n_-1780_-670, n_-1780_-630);
    (* S0_x1=-1780, S0_y1=-670, S0_x2=-1750, S0_y2=-670 *) net net15(n_-1780_-670, n_-1750_-670);
    (* S0_x1=-1750, S0_y1=-480, S0_x2=-1750, S0_y2=-460 *) net net16(n_-1750_-480, n_-1750_-460);
    (* S0_x1=-1780, S0_y1=-460, S0_x2=-1750, S0_y2=-460 *) net net17(n_-1780_-460, n_-1750_-460);
    (* S0_x1=-1780, S0_y1=-510, S0_x2=-1780, S0_y2=-460 *) net net18(n_-1780_-510, n_-1780_-460);
    (* S0_x1=-1780, S0_y1=-510, S0_x2=-1770, S0_y2=-510 *) net net19(n_-1780_-510, n_-1770_-510);
    (* S0_x1=-1750, S0_y1=-600, S0_x2=-1750, S0_y2=-570 *) net net20(n_-1750_-600, n_-1750_-570);
    (* S0_x1=-1750, S0_y1=-1310, S0_x2=-1610, S0_y2=-1310 *) net net21(n_-1750_-1310, n_-1610_-1310);
    (* S0_x1=-1750, S0_y1=-1310, S0_x2=-1750, S0_y2=-670 *) net net22(n_-1750_-1310, n_-1750_-670);
    (* S0_x1=-1750, S0_y1=-460, S0_x2=-1750, S0_y2=-380 *) net net23(n_-1750_-460, n_-1750_-380);
    (* S0_x1=-1720, S0_y1=-510, S0_x2=-1690, S0_y2=-510 *) net net24(n_-1720_-510, n_-1690_-510);
    (* S0_x1=-1720, S0_y1=-630, S0_x2=-1690, S0_y2=-630 *) net net25(n_-1720_-630, n_-1690_-630);
    (* S0_x1=-1690, S0_y1=-630, S0_x2=-1690, S0_y2=-570 *) net net26(n_-1690_-630, n_-1690_-570);
    (* S0_x1=-1690, S0_y1=-570, S0_x2=-1690, S0_y2=-510 *) net net27(n_-1690_-570, n_-1690_-510);
    (* S0_x1=-1690, S0_y1=-570, S0_x2=-1430, S0_y2=-570 *) net net28(n_-1690_-570, n_-1430_-570);
    (* S0_x1=-1650, S0_y1=-870, S0_x2=-1640, S0_y2=-870 *) net net29(n_-1650_-870, n_-1640_-870);
    (* S0_x1=-1650, S0_y1=-990, S0_x2=-1640, S0_y2=-990 *) net net30(n_-1650_-990, n_-1640_-990);
    (* S0_x1=-2570, S0_y1=-570, S0_x2=-2360, S0_y2=-570 *) net net31(n_-2570_-570, n_-2360_-570);
    (* S0_x1=-1610, S0_y1=-960, S0_x2=-1610, S0_y2=-920 *) net net32(n_-1610_-960, n_-1610_-920);
    (* S0_x1=-1610, S0_y1=-920, S0_x2=-1610, S0_y2=-900 *) net net33(n_-1610_-920, n_-1610_-900);
    (* S0_x1=-1610, S0_y1=-920, S0_x2=-1430, S0_y2=-920 *) net net34(n_-1610_-920, n_-1430_-920);
    (* S0_x1=-1430, S0_y1=-920, S0_x2=-1310, S0_y2=-920 *) net net35(n_-1430_-920, n_-1310_-920);
    (* S0_x1=-1430, S0_y1=-920, S0_x2=-1430, S0_y2=-570 *) net net36(n_-1430_-920, n_-1430_-570);
    (* S0_x1=-1750, S0_y1=-570, S0_x2=-1750, S0_y2=-540 *) net net37(n_-1750_-570, n_-1750_-540);
    (* S0_x1=-1650, S0_y1=-990, S0_x2=-1650, S0_y2=-930 *) net net38(n_-1650_-990, n_-1650_-930);
    (* S0_x1=-1650, S0_y1=-930, S0_x2=-1650, S0_y2=-870 *) net net39(n_-1650_-930, n_-1650_-870);
    (* S0_x1=-1800, S0_y1=-930, S0_x2=-1710, S0_y2=-930 *) net net40(n_-1800_-930, n_-1710_-930);
    (* S0_x1=-1710, S0_y1=-930, S0_x2=-1650, S0_y2=-930 *) net net41(n_-1710_-930, n_-1650_-930);
    (* S0_x1=-1710, S0_y1=-1080, S0_x2=-1710, S0_y2=-930 *) net net42(n_-1710_-1080, n_-1710_-930);
    (* S0_x1=-1290, S0_y1=-1030, S0_x2=-1290, S0_y2=-920 *) net net43(n_-1290_-1030, n_-1290_-920);
    (* S0_x1=-1310, S0_y1=-1030, S0_x2=-1310, S0_y2=-920 *) net net44(n_-1310_-1030, n_-1310_-920);
    (* S0_x1=-1870, S0_y1=-1310, S0_x2=-1750, S0_y2=-1310 *) net net45(n_-1870_-1310, n_-1750_-1310);
    (* S0_x1=-1870, S0_y1=-1310, S0_x2=-1870, S0_y2=-1230 *) net net46(n_-1870_-1310, n_-1870_-1230);
    (* S0_x1=-1870, S0_y1=-1170, S0_x2=-1870, S0_y2=-1110 *) net net47(n_-1870_-1170, n_-1870_-1110);
    (* S0_x1=-2830, S0_y1=-750, S0_x2=-2830, S0_y2=-710 *) net net48(n_-2830_-750, n_-2830_-710);
    (* S0_x1=-2570, S0_y1=-1010, S0_x2=-2570, S0_y2=-940 *) net net49(n_-2570_-1010, n_-2570_-940);
    (* S0_x1=-2570, S0_y1=-940, S0_x2=-2570, S0_y2=-570 *) net net50(n_-2570_-940, n_-2570_-570);
    (* S0_x1=-2570, S0_y1=-940, S0_x2=-2360, S0_y2=-940 *) net net51(n_-2570_-940, n_-2360_-940);
    (* S0_x1=-2830, S0_y1=-920, S0_x2=-2830, S0_y2=-810 *) net net52(n_-2830_-920, n_-2830_-810);
    (* S0_x1=-2830, S0_y1=-920, S0_x2=-2360, S0_y2=-920 *) net net53(n_-2830_-920, n_-2360_-920);
    (* S0_x1=-2300, S0_y1=-930, S0_x2=-2130, S0_y2=-930 *) net net54(n_-2300_-930, n_-2130_-930);
    (* S0_x1=-2070, S0_y1=-930, S0_x2=-1860, S0_y2=-930 *) net net55(n_-2070_-930, n_-1860_-930);
endmodule
