% RC Low Pass Filter
% Md. Roknuzzaman Rikon
% 26-09-2024

R = 1e3; % Resistance in ohms  
C = 1e-6; % Capacitance in farads  
fc = 1/(2*pi*R*C); % Cutoff frequency  

sys = tf([1], [R*C 1]); % Transfer function of the RC low pass filter  
bode(sys); % Generate the Bode plot for the given transfer function  
title('RC Low Pass Filter'); % Add title to the plot  
