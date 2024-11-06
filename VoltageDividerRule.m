%Md.Roknuzzaman Rikon
%ID:22024014
% Voltage Divider Rule 
R1 = 10e3; % Resistor 1 in ohms 
R2 = 20e3; % Resistor 2 in ohms 
Vin = 10; % Input voltage in volts 
Vout = (R2 / (R1 + R2)) * Vin; % Output voltage 
disp(['Output Voltage: ', num2str(Vout), ' V']); 