%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Three-Phase Power Calculation 
V_phase = 230; % Phase voltage in volts 
I_phase = 10; % Phase current in amperes 
pf = 0.8; % Power factor 
P = 3 * V_phase * I_phase * pf; % Total real power 
Q = 3 * V_phase * I_phase * sqrt(1 - pf^2); % Total reactive power 
disp(['Total Real Power: ', num2str(P), ' W']); 
disp(['Total Reactive Power: ', num2str(Q), ' VAR']);