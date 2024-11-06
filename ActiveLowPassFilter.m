%Name: Md.Roknuzzaman Rikon
%ID: 22024014
% Active Low Pass Filter 
R = 1e3; % Resistance in ohms 
C = 1e-6; % Capacitance in farads 
sys = tf([1], [R*C 1]); 
bode(sys); 
title('Active Low Pass Filter'); 