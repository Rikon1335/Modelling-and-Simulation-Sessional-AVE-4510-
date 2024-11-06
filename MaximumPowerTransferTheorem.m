%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Maximum Power Transfer Theorem 
R_source = 50; % Source resistance in ohms 
R_load = linspace(1, 100, 100); % Load resistance in ohms 
V_source = 10; % Source voltage in volts 
P_load = (V_source^2) * (R_load ./ (R_source + R_load).^2); % Power delivered to the load 
plot(R_load, P_load); 
title('Maximum Power Transfer Theorem'); 
xlabel('Load Resistance (Ohms)')
ylabel('Power Delivered (Watts)'); 