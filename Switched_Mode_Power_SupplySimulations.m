%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Switched-Mode Power Supply (SMPS) Simulation 
V_in = 12; % Input voltage in volts 
D = 0.5; % Duty cycle 
L = 1e-3; % Inductance in henries 
C = 1e-6; % Capacitance in farads 
R = 10; % Load resistance in ohms 
t = linspace(0, 0.01, 1000); % Time vector 
V_out = V_in * D * (1 - exp(-t / (L / R))); % Output voltage 
plot(t, V_out); 
title('Switched-Mode Power Supply (SMPS) Simulation'); 
xlabel('Time (s)'); 
ylabel('Voltage (V)'); 