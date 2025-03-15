(* qucs_ViewX1=0, qucs_ViewY1=0, qucs_ViewX2=800, qucs_ViewY2=800, qucs_Scale=1, qucs_tmpViewX1=-200, qucs_tmpViewY1=-200, qucs_GridX=10, qucs_GridY=10, qucs_GridOn=1, qucs_DataSet="curtice_1_tb1.dat", qucs_DataDisplay="curtice_1_tb1.dpl", qucs_SimOpenDpl=1, qucs_Script="curtice_1_tb1.m", qucs_SimRunScript=0, qucs_showFrame=0, qucs_FrameText0="Title", qucs_FrameText1="Drawn By:", qucs_FrameText2="Date:", qucs_FrameText3="Revision:" *) module curtice_1_tb1();
    wire n_0_0;
    (* S0_x1=0, S0_y1=-30, S0_x2=0, S0_y2=30, qucs_mirrored=0, qucs_rotated=1 *) Vdc #(.U(Vgs)) V2 ( n_0_m30, n_0_30 );
    (* S0_x1=0, S0_y1=0, qucs_mirrored=0, qucs_rotated=0 *) GND #() \\*  ( n_0_0 );
    (* S0_x1=0, S0_y1=0, qucs_mirrored=0, qucs_rotated=0 *) GND #() \\*  ( n_0_0 );
    (* S0_x1=0, S0_y1=-30, S0_x2=0, S0_y2=30, qucs_mirrored=0, qucs_rotated=1 *) Vdc #(.U(Vds)) V1 ( n_0_m30, n_0_30 );
    (* S0_x1=0, S0_y1=0, qucs_mirrored=0, qucs_rotated=0 *) GND #() \\*  ( n_0_0 );
    (* S0_x1=-30, S0_y1=0, S0_x2=30, S0_y2=0, qucs_mirrored=0, qucs_rotated=0 *) IProbe #() Pr1 ( n_m30_0, n_30_0 );
    (* S0_x1=0, S0_y1=40, S0_x2=-30, S0_y2=0, S0_x3=0, S0_y3=-40, qucs_mirrored=0, qucs_rotated=0 *) Sub #(.RG(curtice_1.sch),.RD(0),.RS(0),.VBR(10e10),.LG(1e-15),.LD(1e-15),.LS(1e-15),.IS(10f),.N(1),.XTI(0),.EG(1.11),.Beta(3m),.Lambda(40m),.VT0(-6),.Temp(27),.Alpha(0.8),.CDS(300f),.TAU(10p),.RIN(1m),.CGS(300f),.CGD(300f)) Curtice ( n_0_40, n_m30_0, n_0_m40 );
endmodule
