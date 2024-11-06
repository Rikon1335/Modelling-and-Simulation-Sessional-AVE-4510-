%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Voltage Doubler Circuit 
V_in = 5; % Input AC voltage peak 
f = 60; % Frequency in Hz 
t = linspace(0, 1/f, 1000); % Time vector 
V_out = 2 * V_in * abs(sin(2*pi*f*t)); % Output voltage waveform 
plot(t, V_out); 
title('Voltage Doubler Circuit'); 
xlabel('Time (s)'); 
ylabel('Voltage (V)')