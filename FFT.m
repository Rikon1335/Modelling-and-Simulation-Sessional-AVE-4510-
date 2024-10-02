% Fast Fourier Transform (FFT) 

Fs = 1000; % Sampling frequency in Hz

t = 0:1/Fs:1-1/Fs; % Time vector from 0 to 1 second with step size of 1/Fs

f = 5; % Frequency of sine wave in Hz

x = sin(2*pi*f*t); % Generate the sine wave signal

X = fft(x); % Compute the Fast Fourier Transform of the signal

n = length(x); % Length of the signal

f = (0:n-1)*(Fs/n); % Frequency range for the FFT plot

magnitude = abs(X)/n; % Calculate the magnitude of the FFT

plot(f, magnitude); % Plot the magnitude spectrum

title('FFT of Sine Wave'); % Title for the plot

xlabel('Frequency (Hz)'); % Label for x-axis (Frequency in Hz)

ylabel('Magnitude'); % Label for y-axis (Magnitude of the FFT)

grid on;
