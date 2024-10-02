% Nyquist Plot 
sys = tf([1], [1 1 1]); % Define the transfer function H(s) = 1 / (s^3 + s^2 + 1)
nyquist(sys); % Generate the Nyquist plot of the transfer function
title('Nyquist Plot'); % Title for the Nyquist plot

