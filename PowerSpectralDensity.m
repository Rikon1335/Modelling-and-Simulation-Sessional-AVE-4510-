%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Power Spectral Density (PSD) 
Fs = 1000; % Sampling frequency 
t = 0:1/Fs:1-1/Fs; 
x = cos(2*pi*100*t) + randn(size(t)); % Signal with noise 
[Pxx, f] = pwelch(x, [], [], [], Fs); 
plot(f, 10*log10(Pxx)); 
title('Power Spectral Density'); 
xlabel('Frequency (Hz)'); 
ylabel('Power/Frequency (dB/Hz)'); 
32. Step Response of a Transfer Fun