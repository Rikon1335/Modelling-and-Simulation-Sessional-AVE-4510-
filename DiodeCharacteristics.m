% Define constants for the transistor 
% Md. Roknuzzaman Rikon
% 26-09-2024

Is = 1e-12;   % Saturation current (amperes) 
Vt = 0.025;   % Thermal voltage (volts) 
beta = 100;   % Current gain (beta) of the transistor 

% Step 1: Define the base-emitter voltage range 
Vbe = linspace(0, 1, 1000);  % Base-emitter voltage range (volts) 

% Step 2: Define the collector current equation (using BJT model) 
Ib = Is * (exp(Vbe / Vt) - 1);  % Base current (amperes) 
Ic = beta * Ib;                 % Collector current (amperes) 

% Step 3: Plot the collector current vs base-emitter voltage 
plot(Vbe, Ic); 
xlabel('Base-Emitter Voltage (V)'); 
ylabel('Collector Current (A)'); 
title('Transistor I-V Characteristics (NPN BJT as a Switch)'); 
grid on;
