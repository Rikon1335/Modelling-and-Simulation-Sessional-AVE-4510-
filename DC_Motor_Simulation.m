% DC Motor Simulation
% Md. Roknuzzaman Rikon
% 26-09-2024

J = 0.01; % Moment of inertia of the rotor  
b = 0.1; % Damping ratio of the mechanical system  
K = 0.01; % Electromotive force constant  
R = 1; % Electric resistance  
L = 0.5; % Electric inductance  

% State-space representation matrices
A = [0 1 0; 0 -b/J K/J; 0 -K/L -R/L];  
B = [0; 0; 1/L];  
C = [1 0 0];  
D = 0;  

% Create state-space system
sys = ss(A,B,C,D);  

% Step response of the system
step(sys);  
title('DC Motor Step Response');  
