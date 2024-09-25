% LED characteristics curve
% Md. Roknuzzaman Rikon
% 26-09-2024

V = 0:0.01:2; % Voltage range  
I = exp(V); % Simplified exponential I-V relationship  

% Plotting the I-V characteristic curve
plot(V, I);  
title('LED I-V Characteristic Curve');  
xlabel('Voltage (V)'); 
ylabel('Current (A)');
