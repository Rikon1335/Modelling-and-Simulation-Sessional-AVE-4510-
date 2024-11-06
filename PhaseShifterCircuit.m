%name: Md. Roknuzzaman Rikon
%ID: 22024014
% Phase Shifter Circuit 
f = 1000; % Frequency in Hz 
R = 1e3; % Resistance in ohms 
C = 1e-6; % Capacitance in farads 
omega = 2 * pi * f; 
phi = atan(1 / (omega * R * C)); % Phase shift in radians 
disp(['Phase Shift: ', num2str(phi * (180/pi)), ' degrees']);