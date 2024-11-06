%Name:Md. Roknuzzaman Rikon
%ID: 22024014
% Photodiode IV Characteristics 
V = linspace(-2, 2, 100); % Voltage range 
I_dark = 1e-9; % Dark current in amperes 
n = 1; % Ideality factor 
Is = 1e-12; % Saturation current in amperes 
k = 1.38e-23; % BoltzmPann constant 
T = 300; % Temperature in Kelvin 
q = 1.6e-19; % Electron charge 
I = Is * (exp((q*V)/(n*k*T)) - 1) + I_dark; % Current 
plot(V, I); 
title('Photodiode IV Characteristics'); 
xlabel('Voltage (V)'); 
ylabel('Current (A)');