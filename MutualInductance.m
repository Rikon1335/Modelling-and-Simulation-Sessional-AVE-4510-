%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Mutual Inductance Calculation 
L1 = 10e-3; % Inductance of coil 1 in henrys 
L2 = 20e-3; % Inductance of coil 2 in henrys 
k = 0.5; % Coupling coefficient 
M = k * sqrt(L1 * L2); % Mutual inductance 
disp(['Mutual Inductance: ', num2str(M), ' H']);