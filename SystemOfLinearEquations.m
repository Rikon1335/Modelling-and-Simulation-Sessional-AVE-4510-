% Solving a system of linear equations can be achieved using matrix inversion or MATLAB's backslash operator.  
% Md. Roknuzzaman Rikon
% 26-09-2024

A = [2 1; 3 4];  
b = [5; 6];  

% Solve using inverse  
x1 = inv(A) * b;  

% Solve using backslash operator  
x2 = A \ b;  

% Display Results  
disp('Solution using inverse:'), disp(x1)  
disp('Solution using backslash operator:'), disp(x2)  
