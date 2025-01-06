# Qucs 0.0.21-dev  /home/leviathan/GNUCap/qucs/tests/AC_groupdelay_ac.prj/groupdelay_ac.sch

C:C1 _net0 _net0 C="39.01pF" V=""
L:L1 P1 P1 L="280.9nH" I=""
C:C2 _net1 _net1 C="39.01pF" V=""
Vac:V1 _net2 _net2 U="1 V" f="1 GHz" Phase="0" Theta="0"
Vac:V2 _net3 _net3 U="0 V" f="1 GHz" Phase="0" Theta="0"
R:R2 P2 P2 R="Z0" Temp="26.85" Tc1="0.0" Tc2="0.0" Tnom="26.85"
.AC:AC1 Type="log" Start="1 MHz" Stop="200 MHz" Points="458" Noise="no"
Eqn:Eqn1 dBS21_3rd="dB(S21)" S21="b2/a1" S11="b1/a1" a1="(P1.v+Z0*-V1.i)/(2*sqrt(Z0))" Z0="60" b1="(P1.v-Z0*-V1.i)/(2*sqrt(Z0))" b2="(P2.v-Z0*-V2.i)/(2*sqrt(Z0))" gain_phase="unwrap(angle(S21))" group_delay="-diff(gain_phase,2*pi*acfrequency)" Export="yes"
R:R1 _net2 _net2 R="Z0" Temp="26.85" Tc1="0.0" Tc2="0.0" Tnom="26.85"
