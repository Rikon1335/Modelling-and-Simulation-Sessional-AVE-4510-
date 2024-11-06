% Name: Md. Roknuzzaman Rikon
% ID: 22024014
% Full-Wave Rectifier Simulation 

t = linspace(0, 0.1, 1000); % Time vector 
V_in = sin(2 * pi * 50 * t); % Input AC voltage 
V_out = abs(V_in); % Full-wave rectified voltage 

% Plot the input and output voltages
plot(t, V_in, 'b', t, V_out, 'r--'); 
title('Full-Wave Rectifier Simulation'); 
xlabel('Time (s)'); 
ylabel('Voltage (V)'); 
legend('Input Voltage', 'Output Voltage'); 
grid on;
