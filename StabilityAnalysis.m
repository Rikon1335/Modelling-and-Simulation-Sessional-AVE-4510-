%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Stability Analysis Using Routh-Hurwitz Criterion 
coefficients = [1 3 3 1]; % Coefficients of the characteristic equation 
Routh_table = routh(coefficients); % Routh array 
disp('Routh Table:'); 
disp(Routh_table);