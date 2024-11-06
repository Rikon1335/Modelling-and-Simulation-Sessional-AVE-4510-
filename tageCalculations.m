%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% AC Voltage Regulation 
V_no_load = 230; % No-load voltage in volts 
V_full_load = 220; % Full-load voltage in volts 
regulation = ((V_no_load - V_full_load) / V_full_load) * 100; 
disp(['Voltage Regulation: ', num2str(regulation), '%']); 