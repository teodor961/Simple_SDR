%% Calculation sheet for estimating Zynq-7007S Power supplies

% Include dc and ac specs
%------------------------------------------------
source zynq_7007s_dc_ac_specs.m

%% Static power consumption
%------------------------------------------------
% PS
P_ps = Vccpint*Iccpintq + Vccpaux*Iccpauxq + Vcco_ddr(1)*Iccddrq + Vcco_mio0(1)*Iccoq + Vcco_mio1(1)*Iccoq;
% PL
P_pl = Vccint*Iccintq + Vccaux*Iccauxq + Vcco_34(1)*Iccoq + Vcco_35(1)*Iccoq + Vccbram*Iccbramq;
% Total
P_total = P_ps + P_pl;
display("Static Power Consumption:");
display(["PS:        " "PL:        " "Total:"]);
display([P_ps P_pl P_total]);

%% Power Up surge consumption
%------------------------------------------------
% PS

P_ps_boot = Vccpint*(Iccpintq + Iccpintq_incr) ...
          + Vccpaux*(Iccpauxq + Iccpauxq_incr) ...
          + Vcco_ddr(1)*(Iccddrq + Iccddrq_incr) ...
          + Vcco_mio0(1)*(Iccoq + Iccoq_incr) ...
          + Vcco_mio1(1)*(Iccoq + Iccoq_incr);
% PL
P_pl_boot = Vccint*(Iccintq + Iccintq_incr) ...
          + Vccaux*(Iccauxq + Iccauxq_incr) ...
          + Vcco_34(1)*(Iccoq + Iccoq_incr) ...
          + Vcco_35(1)*(Iccoq + Iccoq_incr) ...
          + Vccbram*(Iccbramq + Iccbramq_incr);
% Total
P_total_boot = P_ps_boot + P_pl_boot;

display("Boot Up Power Consumption:");
display(["PS:        " "PL:        " "Total:"]);
display([P_ps_boot P_pl_boot P_total_boot]);

% Power Supply Ramp Time
%-------------------------------------------------
T_power_ramp = [0.002 0.050] % Power supply ramp up time in seconds


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

