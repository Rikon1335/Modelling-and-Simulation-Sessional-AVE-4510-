% Series RLC Circuit: 
% RLC Circuit Response  
% Md. Roknuzzaman Rikon
% 26-09-2024
R = 5; % Resistance in ohms  
L = 1e-3; % Inductance in henrys  
C = 100e-6; % Capacitance in farads  

% Define the transfer function of the series RLC circuit
sys = tf([1], [L*C R*C 1]);  

% Plot the step response of the system
step(sys); 
title('Series RLC Circuit Step Response');  
