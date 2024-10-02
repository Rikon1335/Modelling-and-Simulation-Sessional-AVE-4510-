% Bandpass Filter Design

Fs = 1000; % Sampling frequency in Hz

Fpass1 = 100; % First passband frequency in Hz

Fpass2 = 200; % Second passband frequency in Hz

N = 50; % Filter order (number of taps in the filter)


% Design a bandpass FIR filter using the specified parameters

bpFilt = designfilt('bandpassfir', 'FilterOrder', N, ... 
                     'CutoffFrequency1', Fpass1, 'CutoffFrequency2', Fpass2, ... 
                     'SampleRate', Fs);

% Visualize the filter characteristics using fvtool

fvtool(bpFilt); % Filter visualization tool for analyzing filter response

title('Bandpass Filter Design'); % Title for the filter design plot
grid on;
