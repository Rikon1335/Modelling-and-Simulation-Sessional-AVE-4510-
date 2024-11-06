%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Power Factor Calculation 
P = 100; % Real power in watts 
Q = 75; % Reactive power in VAR 
S = sqrt(P^2 + Q^2); % Apparent power in VA 
power_factor = P / S; 
disp(['Power Factor: ', num2str(power_factor)]); 