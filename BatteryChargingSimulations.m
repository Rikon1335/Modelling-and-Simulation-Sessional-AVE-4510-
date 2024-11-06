%Name: Md.Roknuzzaman Rikon
%ID: 22024014
% Battery Charging Simulation 
V_batt = 12; % Battery voltage in volts 
I_charge = 2; % Charging current in amperes 
C = 60; % Battery capacity in Ah 
t = linspace(0, C/I_charge, 1000); % Time vector 
V = V_batt * (1 - exp(-t / (C/I_charge))); % Voltage during charging 
plot(t, V); 
title('Battery Charging Simulation'); 
xlabel('Time (hours)'); 