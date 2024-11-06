%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Digital Filter Design (FIR) 
Fs = 1000; % Sampling frequency 
N = 50; % Filter order 
Fc = 200; % Cutoff frequency 
fir_coeff = fir1(N, Fc/(Fs/2)); 
freqz(fir_coeff, 1, [], Fs); 
title('FIR Digital Filter Design')