% Plotting sine wave and cosine wave in subplotwise
%Md. Roknuzzaman Rikon
x = linspace(0, 2*pi, 100); % Generate 100 points between 0 and 2*pi
y1 = sin(x); % Sine wave values
y2 = cos(x); % Cosine wave values

subplot(2,1,1); % Create the first subplot (2 rows, 1 column, 1st plot)
plot(x, y1); % Plot sine wave
xlabel('x'); % Label for x-axis
ylabel('sin x'); % Label for y-axis
title('Sine wave'); % Title for sine wave plot
grid on; % Turn on the grid

subplot(2,1,2); % Create the second subplot (2 rows, 1 column, 2nd plot)
plot(x, y2); % Plot cosine wave
xlabel('x'); % Label for x-axis
ylabel('cos x'); % Label for y-axis
title('Cosine wave'); % Title for cosine wave plot
grid on; % Turn on the grid
