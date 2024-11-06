%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Resonance in RLC Circuit 
R = 10; % Resistance in ohms 
L = 1e-3; % Inductance in henrys 
C = 1e-6; % Capacitance in farads 
f_resonance = 1 / (2*pi*sqrt(L*C)); % Resonant frequency 
disp(['Resonant Frequency: ', num2str(f_resonance), ' Hz']); 
f = linspace(0, 2*f_resonance, 1000); 
Z = sqrt(R^2 + (2*pi*f*L - 1./(2*pi*f*C)).^2); % Impedance 
plot(f, Z); 
title('Resonance in RLC Circuit'); 
xlabel('Frequency (Hz)'); 
ylabel('Impedance (Ohms)'); 