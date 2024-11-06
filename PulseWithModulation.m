%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Pulse Width Modulation (PWM) 
Fs = 1000; % Sampling frequency 
t = 0:1/Fs:1-1/Fs; 
duty_cycle = 0.5; % Duty cycle
pwm_signal = square(2*pi*10*t, duty_cycle*100); % PWM signal 
plot(t, pwm_signal); 
title('Pulse Width Modulation (PWM)'); 
xlabel('Time (s)'); 
ylabel('Amplitude');