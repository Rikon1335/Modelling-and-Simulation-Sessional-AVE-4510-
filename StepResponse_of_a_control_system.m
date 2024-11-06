%Name: Md. Roknuzzaman Rikon
%Id: 22024014
% Step Response of a Control System 
sys = tf([1], [1 3 3 1]); 
step(sys); 
title('Step Response of a Control System'); 