% Fourier Transform of a sine wave 
% Md Roknuzzaman Rikon
% 26-09-2024

Fs = 1000; % Sampling frequency in Hz 
t = 0:1/Fs:1-1/Fs; % Time vector from 0 to 1 second with 1000 samples 
f = 5; % Frequency of the sine wave in Hz 
x = sin(2*pi*f*t); % Sine wave equation: sin(2*pi*f*t) 

X = fft(x); % Fast Fourier Transform (FFT) of the sine wave 
n = length(x); % Number of samples in the sine wave 
f = (0:n-1)*(Fs/n); % Frequency vector (0 to Fs/2) in Hz 
magnitude = abs(X); % Magnitude of the FFT 

plot(f, magnitude); % Plot magnitude against frequency 
title('Fourier Transform of a 5 Hz Sine Wave'); % Title of the plot 
xlabel('Frequency (Hz)'); % X-axis label (Frequency in Hz) 
ylabel('Magnitude'); % Y-axis label (Magnitude of the signal) 
grid on; % Enable grid for better visualization 
