# Qucs 0.0.21-dev  /home/leviathan/GNUCap/qucs/tests/AC_SW_resonance.prj/resonance.sch

Vac:V1 _net0 _net0 U="1 V" f="1 GHz" Phase="0" Theta="0"
R:R1 _net1 _net1 R="R_par" Temp="26.85" Tc1="0.0" Tc2="0.0" Tnom="26.85"
C:C1 _net2 _net2 C="2 pF" V=""
L:L1 Voltage Voltage L="13 nH" I=""
.SW:SW1 Sim="AC1" Type="log" Start="R_par" Stop="1 Ohm" Points="20 Ohm" Points="6"
.AC:AC1 Type="lin" Start="0.9 GHz" Stop="1.1 GHz" Points="150" Noise="no"
