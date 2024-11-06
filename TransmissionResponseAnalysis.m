%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Transient Response Analysis 
wn = 5; % Natural frequency 
zeta = 0.5; % Damping ratio 
sys = tf([wn^2], [1 2*zeta*wn wn^2]); 
step(sys); 
title('Transient Response Analysis'); 