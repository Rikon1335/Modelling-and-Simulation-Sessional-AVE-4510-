%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Signal Correlation 
x = [1 2 3 4]; 
y = [4 3 2 1]; 
correlation = xcorr(x, y); 
stem(correlation); 
title('Signal Correlation'); 
xlabel('Lag'); 
ylabel('Amplitude');