% BJT Common Emitter Amplifier 
% Md. Roknuzzaman Rikon
% 26-09-2024

beta = 100; % Current gain  
R_C = 1e3; % Collector resistor in ohms  
V_CC = 10; % Supply voltage in volts  
I_B = 50e-6; % Base current in amperes  

% Collector current calculation
I_C = beta * I_B; % Collector current in amperes  

% Collector-Emitter voltage calculation
V_CE = V_CC - I_C * R_C; 

% Displaying the Collector-Emitter Voltage
disp(['Collector-Emitter Voltage: ', num2str(V_CE), ' V']);
