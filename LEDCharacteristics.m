%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% LED Characteristics 
V = linspace(0, 3, 100); % Voltage range 
I = 1e-9 * (exp(V / 0.026) - 1); % Current 
plot(V, I); 
title('LED I-V Characteristics'); 
xlabel('Voltage (V)'); 
ylabel('Current (A)'); 