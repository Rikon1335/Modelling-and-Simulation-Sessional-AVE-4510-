%Name: Md. Roknuzzaman Rikon
%ID: 22024014
% Kalman Filter Implementation 
A = [1 1; 0 1]; % State transition matrix 
B = [0.5; 1]; % Control input matrix 
C = [1 0]; % Measurement matrix 
Q = [1 0; 0 1]; % Process noise covariance 
R = 1; % Measurement noise covariance 
x = [0; 0]; % Initial state 
P = eye(2); % Initial state covariance 
x_est = x; % Initial state estimate 
% Simulation 
t = 0:0.1:10; 
u = sin(t); 
y = zeros(size(t)); 
x_true = zeros(2, length(t)); 
x_estimated = zeros(2, length(t)); 
for k = 1:length(t) 
% True state and measurement 
x = A*x + B*u(k) + sqrt(Q)*randn(2, 1); 
y(k) = C*x + sqrt(R)*randn; 
x_true(:, k) = x; 
% Kalman filter update 
x_pred = A*x_est + B*u(k); 
P_pred = A*P*A' + Q; 
K = P_pred*C' / (C*P_pred*C' + R); 
x_est = x_pred + K * (y(k) - C*x_pred); 
P = (eye(2) - K*C) * P_pred; 
x_estimated(:, k) = x_est; 
end 
plot(t, x_true(1, :), 'b', t, x_estimated(1, :), 'r--'); 
legend('True State', 'Estimated State'); 
title('Kalman Filter Implementation'); 
xlabel('Time (s)'); 
ylabel('State'); 
