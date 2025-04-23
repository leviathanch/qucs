(* qucs_ViewX1=1830, qucs_ViewY1=-369, qucs_ViewX2=2265, qucs_ViewY2=-119, qucs_Scale=3.59902, qucs_tmpViewX1=-200, qucs_tmpViewY1=-200, qucs_GridX=10, qucs_GridY=10, qucs_GridOn=1, qucs_DataSet="integrity1.dat", qucs_DataDisplay="integrity1.dpl", qucs_SimOpenDpl=1, qucs_Script="integrity1.m", qucs_SimRunScript=0, qucs_showFrame=0, qucs_FrameText0="Title", qucs_FrameText1="Drawn By:", qucs_FrameText2="Date:", qucs_FrameText3="Revision:" *) module integrity1();
    wire n_2000_m280;
    wire n_2060_m280;
    wire n_2110_m280;
    wire n_2170_m280;
    wire n_1960_m280;
    wire n_1960_m170;
    wire n_2230_m170;
    wire n_2230_m280;
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=2000, S0_y1=-280, S0_x2=2060, S0_y2=-280 *) R #(.R(50 Ohm),.Temp(26.85),.Tc1(0.0),.Tc2(0.0),.Tnom(26.85)) R1 ( n_2000_m280, n_2060_m280 );
    (* qucs_mirrored=0, qucs_rotated=0, S0_x1=2110, S0_y1=-280, S0_x2=2170, S0_y2=-280 *) C #(.C(1 pF),.V()) C1 ( n_0_0, n_2170_m280 );
    (* S0_x1=2060, S0_y1=-280, S0_x2=2110, S0_y2=-280 *) net #() net1 ( n_2060_m280, n_2110_m280 );
    (* S0_x1=1960, S0_y1=-280, S0_x2=2000, S0_y2=-280 *) net #() net2 ( n_1960_m280, n_2000_m280 );
    (* S0_x1=1960, S0_y1=-280, S0_x2=1960, S0_y2=-170 *) net #() net3 ( n_1960_m280, n_1960_m170 );
    (* S0_x1=1960, S0_y1=-170, S0_x2=2230, S0_y2=-170 *) net #() net4 ( n_1960_m170, n_2230_m170 );
    (* S0_x1=2230, S0_y1=-280, S0_x2=2230, S0_y2=-170 *) net #() net5 ( n_2230_m280, n_2230_m170 );
    (* S0_x1=2170, S0_y1=-280, S0_x2=2230, S0_y2=-280 *) net #() net6 ( n_2170_m280, n_2230_m280 );
endmodule
