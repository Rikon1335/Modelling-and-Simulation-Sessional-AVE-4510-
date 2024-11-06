%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Smith Predictor Design 
G = tf([1], [1 3 3 1], 'InputDelay', 1); % Plant with time delay 
G_nom = tf([1], [1 3 3 1]); % Nominal plant 
Kp = 1; % Proportional gain 
C = pid(Kp); % Controller 
smith_predictor = feedback(C*G_nom, 1); % Smith predictor 
sys_cl = feedback(smith_predictor, G); 
step(sys_cl); 
title('Smith Predictor Design'); 
xlabel('Time (s)'); 
ylabel('Output');