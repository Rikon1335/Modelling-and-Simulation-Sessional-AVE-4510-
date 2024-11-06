%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Series RLC Circuit Analysis 
R = 10; % Resistance in ohms 
L = 1e-3; % Inductance in henrys 
C = 1e-6; % Capacitance in farads 
V = 1; % Voltage step input in volts 
sys = tf([1], [L*C R*C 1]); 
t = linspace(0, 0.01, 1000); 
step_response = step(V*sys, t); 
plot(t, step_response); 
title('Series RLC Circuit Analy-sis'); 
xlabel('Time (s)'); 
ylabel('Voltage (V)'); 