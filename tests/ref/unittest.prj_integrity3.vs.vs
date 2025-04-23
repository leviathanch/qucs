(* qucs_ViewX1=0, qucs_ViewY1=0, qucs_ViewX2=800, qucs_ViewY2=800, qucs_Scale=1, qucs_tmpViewX1=-200, qucs_tmpViewY1=-200, qucs_GridX=10, qucs_GridY=10, qucs_GridOn=1, qucs_DataSet="integrity3.dat", qucs_DataDisplay="integrity3.dpl", qucs_SimOpenDpl=1, qucs_Script="integrity3.m", qucs_SimRunScript=0, qucs_showFrame=0, qucs_FrameText0="Title", qucs_FrameText1="Drawn By:", qucs_FrameText2="Date:", qucs_FrameText3="Revision:" *) module integrity3();
    wire n_781_581;
    wire n_1010_440;
    wire n_1010_580;
    wire n_9999_580;
    (* S0_x1=781, S0_y1=581, S0_x2=1010, S0_y2=580 *) net #() net1 ( n_781_581, n_1010_580 );
    (* S0_x1=1010, S0_y1=440, S0_x2=9999, S0_y2=580 *) net #() net2 ( n_1010_440, n_9999_580 );
endmodule
