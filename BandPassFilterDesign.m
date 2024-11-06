%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Band Pass Filter Design 
R = 1e3; % Resistance in ohms 
L = 1e-3; % Inductance in henrys 
C = 1e-6; % Capacitance in farads 
sys = tf([R*C 0], [L*C R*C 1]); 
bode(sys); 
title('Band Pass Filter Design');