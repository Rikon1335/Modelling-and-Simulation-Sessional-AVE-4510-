%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% PID Controller Design 
Kp = 1; % Proportional gain 
Ki = 1; % Integral gain 
Kd = 0.1; % Derivative gain 
sys = tf([1], [1 3 3 1]); % Plant transfer function 
pid_controller = pid(Kp, Ki, Kd); 
closed_loop_system = feedback(pid_controller * sys, 1); 
step(closed_loop_system); 
title('PID Controller Step Response'); 