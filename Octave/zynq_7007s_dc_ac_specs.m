
% List of power supply voltages and descriptions
%-------------------------------------------------
% PS
Vccpint   = 1.0;       % Internal logic
Vccpaux   = 1.8;       % I/O buffer pre-driver
Vcco_ddr  = [1.2 1.8]; % DDR memory interface
Vcco_mio0 = [1.8 3.3]; % MIO bank 0, pins 0:15 (bank 500)
Vcco_mio1 = [1.8 3.3]; % MIO bank 1, pins 16:53 (bank 501)
Vccpll    = 1.8;       % Three PLL clocks, analog

% PL
Vccint    = 1.0;       % Internal core logic
Vccaux    = 1.8;       % I/O buffer pre-driver
Vcco_34   = [1.8 3.3]; % I/O buffer drivers (per bank)
Vcco_35   = [1.8 3.3]; % I/O buffer drivers (per bank)
Vcc_batt  = 1.5;       % PL decryption key memory backup
Vccbram   = 1.0;       % PL block RAM
Vccadc    = 1.8;       % Analog power and ground

% List of typical quiescent supply currents
%-------------------------------------------------
% PS
Iccpintq = 0.122;
Iccpauxq = 0.013;
Iccddrq  = 0.004;

% PL
Iccintq  = 0.034;
Iccauxq  = 0.018;
Iccoq    = 0.003;
Iccbramq = 0.003;

%% Current increases during boot up
% PS
Iccpintq_incr = 0.070;
Iccpauxq_incr = 0.040;
Iccddrq_incr  = 0.100;
% PL
Iccintq_incr  = 0.040;
Iccauxq_incr  = 0.060;
Iccoq_incr    = 0.090;
Iccbramq_incr = 0.040;
