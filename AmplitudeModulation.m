% Amplitude Modulation
Fs = 10000; % Sampling frequency in Hz

t = 0:1/Fs:1-1/Fs; % Time vector from 0 to 1 second with step size of 1/Fs

Fc = 100; % Carrier frequency in Hz

Fm = 5; % Modulating frequency in Hz

Am = 1; % Modulating amplitude (Amplitude of the modulating signal)

carrier = cos(2*pi*Fc*t); % Carrier signal (cosine wave with frequency Fc)

modulator = cos(2*pi*Fm*t); % Modulating signal (cosine wave with frequency Fm)

am_signal = (1 + Am*modulator) .* carrier; % Amplitude modulated signal (AM)

plot(t, am_signal); % Plot the AM signal

title('Amplitude Modulated Signal'); % Title for the plot

xlabel('Time (s)'); % Label for x-axis (Time in seconds)

ylabel('Amplitude'); % Label for y-axis (Amplitude of the signal)
grid on;

