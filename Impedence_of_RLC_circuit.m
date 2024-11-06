%Name: Md.Roknuzzaman Rikon
%ID: 22024014
% Impedance of RLC Circuit 
R = 50; % Resistance in ohms 
L = 100e-3; % Inductance in henrys 
C = 10e-6; % Capacitance in farads 
f = 60; % Frequency in Hz 
omega = 2*pi*f; % Angular frequency 
Z = R + 1i*(omega*L - 1/(omega*C)); % Impedance 
disp(['Impedance: ', num2str(abs(Z)), ' Ohms']);