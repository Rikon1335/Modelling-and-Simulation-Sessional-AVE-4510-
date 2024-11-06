%Name: Md. Roknuzzaman Rikon
%id: 22024014
% Synchronous Motor Simulation 
V = 230; % Supply voltage in volts 
f = 50; % Supply frequency in Hz 
P = 4; % Number of poles 
N_sync = 120*f/P; % Synchronous speed in RPM 
t = linspace(0, 1, 1000); 
theta = 2*pi*N_sync/60 * t; % Rotor angle in radians 
I = V * sin(theta); % Induced current 
plot(t, I); 
title('Synchronous Motor Simulation'); 
xlabel('Time (s)'); 
ylabel('Current (A)');