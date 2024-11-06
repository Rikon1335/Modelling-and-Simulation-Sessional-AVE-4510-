%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Stepper Motor Control 
steps = 100; % Number of steps 
step_angle = 1.8; % Step angle in degrees 
angle = 0; % Initial angle 
angles = zeros(1, steps); 
for i = 1:steps 
angle = angle + step_angle; 
angles(i) = angle; 
end 
plot(1:steps, angles); 
title('Stepper Motor Control');
xlabel('Step'); 
ylabel('Angle (degrees)'); 