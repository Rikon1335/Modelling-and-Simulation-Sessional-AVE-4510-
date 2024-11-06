% Op-Amp Inverting Amplifier 
Rin = 10e3; % Input resistor in ohms 
Rf = 100e3; % Feedback resistor in ohms 
Av = -Rf/Rin; % Voltage gain 
Vin = 1; % Input voltage in volts 
Vout = Av * Vin; % Output voltage 
disp(['Output Voltage: ', num2str(Vout), ' V']); 