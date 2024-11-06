%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Buck Converter Simulation 
Vin = 12; % Input voltage in volts 
Vout = 5; % Desired output voltage in volts 
D = Vout / Vin; % Duty cycle 
t = 0:0.0001:0.01; % Time vector 
V = Vin * D * square(2*pi*1e3*t); % Output voltage waveform 
plot(t, V); 
title('Buck Converter Simulation'); 
xlabel('Time (s)'); 
ylabel('Voltage (V)');