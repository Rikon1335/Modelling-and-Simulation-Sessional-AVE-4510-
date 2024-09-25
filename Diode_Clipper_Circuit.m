% Diode Clipper Circuit
% Md. Roknuzzaman Rikon
% 26-09-2024

t = 0:0.001:1; % Time vector  
Vi = 5*sin(2*pi*50*t); % Input sine wave  
Vd = 0.7; % Diode forward voltage  

% Output voltage calculation
Vo = Vi; 
Vo(Vi > Vd) = Vd;      % Clipping for positive half cycle
Vo(Vi < -Vd) = -Vd;    % Clipping for negative half cycle

% Plotting the results
plot(t, Vi, t, Vo);  
title('Diode Clipper Circuit');  
xlabel('Time (s)');  
ylabel('Voltage (V)');  
legend('Input Voltage', 'Output Voltage');  
grid on; % Add grid for better visualization
