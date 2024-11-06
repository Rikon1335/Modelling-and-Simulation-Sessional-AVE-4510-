%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Schmitt Trigger Circuit 
Vcc = 5; % Supply voltage in volts 
R1 = 1e3; % Resistance R1 in ohms 
R2 = 10e3; % Resistance R2 in ohms 
Vin = linspace(-Vcc, Vcc, 1000); % Input voltage sweep 
Vout = zeros(size(Vin)); 
Vh = Vcc * (R2 / (R1 + R2)); % High threshold voltage 
Vl = -Vcc * (R2 / (R1 + R2)); % Low threshold voltage 
for i = 2:length(Vin) 
if Vin(i) > Vh 
Vout(i) = Vcc; 
elseif Vin(i) < Vl 
Vout(i) = -Vcc; 
else
    Vout(i) = Vout(i-1); 
end 
end 
plot(Vin, Vout); 
title('Schmitt Trigger Circuit'); 
xlabel('Input Voltage (V)'); 
ylabel('Output Voltage (V)'); 