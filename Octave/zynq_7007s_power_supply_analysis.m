%% Calculation sheet for estimating Zynq-7007S Power supplies

% Include dc and ac specs
%------------------------------------------------
source zynq_7007s_dc_ac_specs.m

%% Static power consumption
% PS
P_ps = Vccpint*Iccpintq + Vccpaux*Iccpauxq + Vcco_ddr(1)*Iccddrq + Vcco_mio0(1)*Iccoq + Vcco_mio1(1)*Iccoq;
% PL
P_pl = Vccint*Iccintq + Vccaux*Iccauxq + Vcco_34(1)*Iccoq + Vcco_35(1)*Iccoq + Vccbram*Iccbramq;
% Total
P_total = P_ps + P_pl;
display("Static Power Consumption:");
display(["PS:        " "PL:        " "Total:"]);
display([P_ps P_pl P_total]);
%% Recommended power on sequence
% This sequence is taken from DS187: DC and AC Switching Characteristics
%-------------------------------------------------
% PS power up sequence
% 1. Vccpint, Vccpaux, Vccpll -> 2. Vcco_mio_n, Vcco_ddr
%
% PL power up sequence
% 1.Vccint, Vccbram, Bccaux -> 2. Vcco_n
%
% Power down sequence - reverse of power up sequence

