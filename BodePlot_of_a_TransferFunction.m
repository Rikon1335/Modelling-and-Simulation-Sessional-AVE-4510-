% Bode Plot 
sys = tf([1], [1 1 1]); % Define the transfer function H(s) = 1 / (s^3 + s^2 + 1)
bode(sys); % Generate the Bode plot of the transfer function
title('Bode Plot'); % Title for the Bode plot