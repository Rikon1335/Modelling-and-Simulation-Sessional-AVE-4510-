%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Spectral Analysis Using FFT 
Fs = 1000; % Sampling frequency 
t = 0:1/Fs:1-1/Fs; 
x = cos(2*pi*100*t) + 0.5*cos(2*pi*200*t); % Signal with two frequencies 
X = fft(x); 
f = (0:length(X)-1)*Fs/length(X); % Frequency vector 
plot(f, abs(X)); 
title('Spectral Analysis Using FFT'); 
xlabel('Frequency (Hz)'); 