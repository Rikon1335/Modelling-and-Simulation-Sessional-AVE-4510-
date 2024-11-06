%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Motor Speed Control Using PID 
J = 0.01; % Moment of inertia of the rotor 
b = 0.1; % Damping ratio 
K = 0.01; % Motor constant 
R = 1; % Electrical resistance 
L = 0.5; % Electrical inductance 
% Transfer function of the DC motor 
s = tf('s'); 
P_motor = K / (J*L*s^2 + (J*R + L*b)*s + (b*R + K^2)); 
% PID controller design 
Kp = 100; 
Ki = 200; 
Kd = 10; 
C = pid(Kp, Ki, Kd); 
% Closed-loop transfer function 
sys_cl = feedback(C*P_motor, 1); 
% Simulation 
t = 0:0.01:2; 
step(sys_cl, t); 
title('DC Motor Speed Control Using PID'); 
xlabel('Time (seconds)'); 
ylabel('Speed (rad/s)');