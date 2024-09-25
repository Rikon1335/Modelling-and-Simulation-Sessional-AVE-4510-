% Transmission Line Impedance 
% Md. Roknuzzaman Rikon
% 26-09-2024

L = 0.5e-6; % Inductance per unit length (H/m)  
C = 2e-12; % Capacitance per unit length (F/m) 

% Calculate the characteristic impedance
Z0 = sqrt(L/C); % Characteristic impedance  

% Display the result
disp(['Characteristic Impedance: ', num2str(Z0), ' Ohms']);  
