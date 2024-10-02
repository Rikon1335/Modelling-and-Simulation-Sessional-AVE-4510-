%Frequency Modulation
Fs = 10000; % Sampling frequency in Hz

t = 0:1/Fs:1-1/Fs; % Time vector from 0 to 1 second with step size of 1/Fs

Fc = 100; % Carrier frequency in Hz

Fm = 5; % Modulating frequency in Hz

Am = 1; % Modulating amplitude (Amplitude of the modulating signal)

beta = 5; % Modulation index (determines the amount of frequency deviation)

carrier = cos(2*pi*Fc*t); % Carrier signal (cosine wave with frequency Fc)

modulator = cos(2*pi*Fm*t); % Modulating signal (cosine wave with frequency Fm)

fm_signal = cos(2*pi*Fc*t + beta*sin(2*pi*Fm*t)); % FM signal (frequency modulated)

plot(t, fm_signal); % Plot the FM signal

title('Frequency Modulated Signal'); 
xlabel('Time (s)');
ylabel('Amplitude');
grid on;