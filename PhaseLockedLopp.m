%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Phase Locked Loop (PLL) Simulation 
Fs = 1000; % Sampling frequency 
t = 0:1/Fs:1-1/Fs; 
F0 = 50; % Initial frequency 
input_signal = cos(2*pi*F0*t + pi/4); % Input signal 
[~, pll_output] = pll(input_signal, Fs); % Using a PLL function 
plot(t, input_signal, t, pll_output); 
title('Phase Locked Loop (PLL) Simulation'); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
legend('Input Signal', 'PLL Output'); 