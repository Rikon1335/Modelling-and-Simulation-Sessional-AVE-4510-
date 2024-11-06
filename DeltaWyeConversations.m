%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Delta-Wye Transformation 
Zab = 50; % Impedance between points A and B 
Zbc = 50; % Impedance between points B and C 
Zca = 50; % Impedance between points C and A 
Z1 = Zab * Zbc / (Zab + Zbc + Zca); 
Z2 = Zbc * Zca / (Zab + Zbc + Zca); 
Z3 = Zca * Zab / (Zab + Zbc + Zca); 
disp(['Z1: ', num2str(Z1), ' Ohms']); 
disp(['Z2: ', num2str(Z2), ' Ohms']); 