% RC Low Pass Filter 
% Md. Roknuzzaman Rikon
% 26-09-2024

% Step 1: Define the resistor and capacitor values
R = 1e3; % Resistance in ohms (1 kilo-ohm) 
C = 1e-6; % Capacitance in farads (1 microfarad) 

% Step 2: Calculate the transfer function of the RC low-pass filter 
% Transfer function: H(s) = 1 / (R*C*s + 1) 
H = tf([1], [R*C 1]); % 'tf' creates the transfer function of the system 

% Step 3: Plot the frequency response (Bode plot) 
bode(H); % Generates the Bode plot for the given transfer function 

% Step 4: Set title and enable grid for the plot 
title('Frequency Response of RC Low Pass Filter'); % Adds a title to the plot 
grid on; % Enables grid for better visualization 
