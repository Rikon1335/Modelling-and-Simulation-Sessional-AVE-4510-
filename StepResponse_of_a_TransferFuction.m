%Name:Md. Roknuzzaman Rikon
%ID: 22024014
% Step Response of a Transfer Function 
sys = tf([1], [1 2 1]); 
step(sys); 
title('Step Response');