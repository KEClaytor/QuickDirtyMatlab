% Usage of cells in scripts

tmax = 10; % Try highlighting this line and press F9
npts = 100;
samprate = 1/(npts*tmax);    % Sampling rate
sinefreq = 5;    % sine frequency in Hz

% The following is split into cells.
% Ctrl-Enter to run
% Shift-Ctrl-Enter to run and advance to the next cell

%% Set up problem
time = linspace(1,tmax,npts);
y = sin(2*pi*sinefreq*time);
% add some noise - A DC offset comes along with this
y = y + 0.5*rand(size(time));

%% Take the fourier transform
FFT = fftshift(fft(y));
freq = 1/(2*samprate)*linspace(-1,1,npts);

%% Plot
plot(freq,real(FFT));
xlabel('Frequency (Hz)');
ylabel('Intensity');
title('FFT of noisey sine wave.');
