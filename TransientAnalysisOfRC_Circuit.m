%Md Roknuzzaman Rikon
%ID: 22024014
% Transient Analysis of RC Circuit 
R = 1e3; % Resistance in ohms 
C = 1e-6; % Capacitance in farads 
sys = tf([1], [R*C 1]); 
impulse(sys); 
title('Transient Response of RC Circuit'); 