%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Electromagnetic Wave Propagation 
c = 3e8; % Speed of light in m/s 
f = 1e9; % Frequency in Hz 
lambda = c / f; % Wavelength in meters 
x = linspace(0, lambda, 1000); % Space vector 
E = sin(2 * pi * x / lambda); % Electric field 
plot(x, E); 
title('Electromagnetic Wave Propagation'); 
xlabel('Distance (m)'); 
ylabel('Electric Field (V/m)'); 