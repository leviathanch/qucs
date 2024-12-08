# Qucs 0.0.21-dev  /home/leviathan/GNUCap/qucs/tests/DC_SW_diode.prj/diode.sch

.DC:DC1 Temp="26.85" reltol="0.001" abstol="1 pA" vntol="1 uV" saveOPs="no" MaxIter="150" saveAll="no" convHelper="none" Solver="CroutLU"
Idc:I1 vdiode vdiode I="Idiode"
Diode:D1 gnd gnd Is="1e-15 A" N="1" Cj0="15 fF" M="0.5" Vj="0.7 V" Fc="0.5" Cp="0.0 fF" Isr="0.0" Nr="2.0" Rs="0.0 Ohm" Tt="0.0 ps" Ikf="0" Kf="0.0" Af="1.0" Ffe="1.0" Bv="0" Ibv="1 mA" Temp="26.85" Xti="3.0" Eg="1.11" Tbv="0.0" Trs="0.0" Ttt1="0.0" Ttt2="0.0" Tm1="0.0" Tm2="0.0" Tnom="26.85" Area="1.0"
.SW:SW1 Sim="DC1" Type="lin" Start="Idiode" Stop="1e-3" Points="1" Points="12001"
