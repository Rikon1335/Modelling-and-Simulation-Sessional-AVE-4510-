%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% H-Bridge Circuit Simulation 
V_dc = 12; % DC supply voltage in volts 
R_load = 10; % Load resistance in ohms 
t = 0:0.001:1; % Time vector
V_out = V_dc * square(2*pi*10*t); % Output voltage with PWM control 
plot(t, V_out); 
title('H-Bridge Circuit Simulation'); 
xlabel('Time (s)'); 
ylabel('Voltage (V)'); 