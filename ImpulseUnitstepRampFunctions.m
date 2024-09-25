% Impulse Function, Unit Step Function, and Ramp Function
% Md. Roknuzzaman Rikon
% 26-09-2024

t = -10:0.01:10;   

% Impulse Function
impulse = (t == 0);  

% Unit Step Function
unit_step = t >= 0;   

% Ramp Function
ramp = t .* (t >= 0);   

% Subplot 1: Impulse Function
subplot(3, 1, 1);  % 3 rows, 1 column, 1st plot
stem(t, impulse);  % stem plot for impulse (discrete signal)
xlabel('t');   
ylabel('Impulse(t)');  
title('Impulse Function');  
grid on; 

% Subplot 2: Unit Step Function
subplot(3, 1, 2);  % 3 rows, 1 column, 2nd plot
plot(t, unit_step);  % plotting unit step function (continuous)
xlabel('t');  
ylabel('u(t)'); 
title('Unit Step Function');
grid on;  

% Subplot 3: Ramp Function
subplot(3, 1, 3);  % 3 rows, 1 column, 3rd plot
plot(t, ramp);  
xlabel('t');  
ylabel('r(t)');  
title('Ramp Function');  
grid on;
