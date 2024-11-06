%Name:Md. Roknuzzaman Rikon
%ID: 22024014
% Root Mean Square (RMS) Calculation 
t = linspace(0, 2*pi, 1000); 
x = sin(t); 
RMS = sqrt(mean(x.^2)); 
disp(['RMS Value: ', num2str(RMS)]);