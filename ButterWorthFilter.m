%ID: 22024014
%Md. Roknuzzaman Rikon
% Butterworth Low Pass Filter Design 
Fs = 1000; % Sampling frequency 
Fc = 200; % Cutoff frequency 
[b, a] = butter(4, Fc/(Fs/2)); % 4th order Butterworth filter 
freqz(b, a, [], Fs);