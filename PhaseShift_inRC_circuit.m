R = 1e3; % Resistance in ohms (1 kΩ)
C = 1e-6; % Capacitance in farads (1 µF)
f = 1000; % Frequency in Hz (1 kHz)
omega = 2*pi*f; % Angular frequency (omega = 2 * pi * frequency)
phi = atan(1/(omega*R*C)); % Phase shift (phi = atan(1/(omega * R * C)))
disp(['Phase Shift: ', num2str(rad2deg(phi)), ' degrees']); % Display phase shift in degrees
