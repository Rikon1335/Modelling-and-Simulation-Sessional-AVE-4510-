%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Transmission Line Impedance Matching 
Z0 = 50; % Characteristic impedance 
ZL = 100; % Load impedance 
matching_impedance = sqrt(Z0 * ZL); % Matching impedance 
disp(['Matching Impedance: ', num2str(matching_impedance), ' Ohms']); 