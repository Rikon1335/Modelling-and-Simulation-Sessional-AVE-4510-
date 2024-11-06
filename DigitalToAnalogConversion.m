%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Digital to Analog Conversion (DAC) 
digital_signal = [0 1 1 0 1 0 0 1]; 
analog_signal = filter(1, [1 -0.9], digital_signal); % Simple DAC model 
stem(analog_signal); 
title('Digital to Analog Conversion'); 
xlabel('Sample'); 
ylabel('Amplitude'); 