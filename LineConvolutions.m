% Linear Convolution 
% Md. Roknuzzaman Rikon
% 26-09-2024

clc;  
clear all;  
close all;  

% Prompt the user to input the length of the first sequence 
disp('Enter the length of the first sequence m =');  
m = input('');  

% Prompt the user to input the values of the first sequence 
disp('Enter the first sequence x[m] =');  
for i = 1:m      
    x(i) = input(''); % Store each input value in the array x 
end  

% Prompt the user to input the length of the second sequence 
disp('Enter the length of the second sequence n =');  
n = input('');  

% Prompt the user to input the values of the second sequence 
disp('Enter the second sequence h[n] =');  
for j = 1:n  
    h(j) = input(''); % Store each input value in the array h 
end  

% Perform linear convolution of the two sequences 
y = conv(x, h);  

% Plot the first sequence x[n] 
figure;  
subplot(3,1,1);  
stem(x); % Plotting the first sequence using stem plot 
ylabel('Amplitude ---- >');  
xlabel('n ---- >');  
title('x(n) Vs n');  

% Plot the second sequence h[n] 
subplot(3,1,2);  
stem(h); % Plotting the second sequence using stem plot 
ylabel('Amplitude ---- >');  
xlabel('n ---- >');  
title('h(n) Vs n');  

% Plot the result of the convolution y[n] 
subplot(3,1,3);  
stem(y); % Plotting the result of convolution 
ylabel('Amplitude ---- >');  
xlabel('n ---- >');  
title('y(n) Vs n');  

% Display the convolution result in the command window 
disp('Linear convolution of x[m] and h[n] is y');
disp(y);  % Display the result of the convolution
