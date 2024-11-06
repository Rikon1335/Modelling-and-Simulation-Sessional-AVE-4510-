%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Sallen-Key Low Pass Filter 
R = 1e3; % Resistance in ohms 
C = 1e-6; % Capacitance in farads 
sys = tf([1], [R^2*C^2 3*R*C 1]); 
bode(sys); 
title('Sallen-Key Low Pass Filter'); 