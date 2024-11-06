%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% MOSFET Characteristics Plot 
Vds = linspace(0, 10, 100); % Drain-source voltage range 
Vgs = [2, 4, 6]; % Gate-source voltages 
for Vg = Vgs 
Id = (Vg > 1) .* ((Vg - 1) .* (Vds < Vg - 1) + (Vg - 1)^2/2 .* (Vds >= Vg - 1)); 
plot(Vds, Id); 
hold on; 
end 
hold off; 
title('MOSFET I-V Characteristics'); 
xlabel('V_{DS} (V)'); 
ylabel('I_{D} (A)'); 
legend('V_{GS} = 2V', 'V_{GS} = 4V', 'V_{GS} = 6V');