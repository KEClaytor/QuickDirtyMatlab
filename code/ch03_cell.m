% Usage of cells in scripts

tmax = 10; % Try highlighting this line and press F9
samprate = 1/100;    % Sampling rate -> 1000 samples per second
sinefreq = 10;    % sine frequency in Hz

% The following is split into cells.
% Ctrl-Enter to run
% Shift-Ctrl-Enter to run and advance to the next cell

%% Set up problem
time = 0:samprate:tmax;
y = sin(2*pi*sinefreq*time);
% add some noise - A DC offset comes along with this
y = y + 0.5*rand(size(time));

%% Take the fourier transform
FFT = fftshift(fft(y));
freq = 1/(2*samprate)*linspace(-1,1,length(time));

%% Plot
plot(freq,real(FFT));
xlabel('Frequency (Hz)');
ylabel('Intensity');
title('FFT of noisey sine wave.');
