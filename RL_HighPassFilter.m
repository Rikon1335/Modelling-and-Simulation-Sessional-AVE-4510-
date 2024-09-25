% Step 1: Define the values of R and L
% Md. Roknuzzaman Rikon
% 26-09-2024
R = 1e3; % resistance in ohms  
L = 1e-3; % inductance in henries  

% Step 2: Calculate the transfer function  
H = tf([L 0], [L R]);  

% Step 3: Plot the frequency response  
bode(H);  
title('Frequency Response of RL High Pass Filter');  
grid on;  
