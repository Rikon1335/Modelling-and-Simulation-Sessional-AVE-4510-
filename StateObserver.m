figure;
subplot(2,1,1);
plot(t, x(:, 1), 'b', t, x_hat(:, 1), 'r--'); 
legend('True State (x_1)', 'Estimated State (\hat{x}_1)');
title('State Observer Design - State x_1');
xlabel('Time (s)'); 
ylabel('State x_1');
grid on;

subplot(2,1,2);
plot(t, x(:, 2), 'b', t, x_hat(:, 2), 'r--'); 
legend('True State (x_2)', 'Estimated State (\hat{x}_2)');
title('State Observer Design - State x_2');
xlabel('Time (s)'); 
ylabel('State x_2');
grid on;
