%Md. Roknuzzaman Rikon
%ID: 22024014
% Frequency Response of a System 
sys = tf([1], [1 3 3 1]); 
bode(sys); 
title('Frequency Response'); 