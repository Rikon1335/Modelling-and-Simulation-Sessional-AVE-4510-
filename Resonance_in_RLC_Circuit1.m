%Name:Md.Roknuzzaman Rikon
%ID: 22024014
% Resonance in RLC Circuit 
L = 1e-3; % Inductance in henrys 
C = 100e-9; % Capacitance in farads 
f_resonance = 1/(2*pi*sqrt(L*C)); % Resonance frequency 
disp(['Resonance Frequency: ', num2str(f_resonance), ' Hz']);