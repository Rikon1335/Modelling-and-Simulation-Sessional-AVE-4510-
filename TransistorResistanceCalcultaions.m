%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Thermistor Resistance Calculation 
T = 25; % Temperature in Celsius 
T0 = 25; % Reference temperature in Celsius 
R0 = 10e3; % Resistance at T0 in ohms 
B = 3950; % Beta coefficient 
R = R0 * exp(B * ((1 / (T + 273.15)) - (1 / (T0 + 273.15)))); 
disp(['Thermistor Resistance: ', num2str(R), ' Ohms']); 