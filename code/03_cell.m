% Usage of cells in scripts

tmax = 3; % Try highlighting this line and press F9
npts = 100;
sf = 10;    % sine frequency in Hz

% The following is split into cells.
% Ctrl-Enter to run
% Shift-Ctrl-Enter to run and advance to the next cell

%% Set up problem
time = linspace(1,tmax,npts);
y = sin(2*pi* 
% add some noise
y = y + 0.5*rand(size(time));

%% Take the fourier transform
FFT = fftshift(fft(y));
freq = linspace(-2*pi*tmax/npts,2*pi*tmax/npts,npts)

%% Plot
plot(freq,real(FFT));
xlabel('Frequency (Hz)');
ylabel('Intensity');
title('FFT of noisey sine wave.');
