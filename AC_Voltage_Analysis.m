% AC Voltage Analysis 
% Md. Roknuzzaman Rikon
% 26_09_2024

Fs = 1000; % Sampling frequency in Hz 
t = 0:1/Fs:1-1/Fs; % Time vector from 0 to 1 second with 1000 samples 
f = 50; % Frequency of the AC voltage in Hz 
V_peak = 10; % Peak voltage in volts 

% Generate the AC voltage signal (sine wave) 
V_ac = V_peak * sin(2*pi*f*t); 

% Calculate the RMS voltage 
V_rms = rms(V_ac); 

% Display the calculated RMS voltage 
disp(['RMS Voltage: ', num2str(V_rms), ' V']); 
