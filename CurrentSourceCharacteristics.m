%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Current Source Characteristics 
I_source = 10; % Current source value in amperes 
V = linspace(-10, 10, 1000); % Voltage range 
I = I_source * ones(size(V)); % Current is constant
plot(V, I); 
title('Current Source Characteristics'); 
xlabel('Voltage (V)'); 