% Some basic 2D plots

x = linspace(1,4*pi);
sx = sin(x);
cx = cos(x);

% Plot options
%  Try to see how the options are used below
help plot

% We want each plot in a separate figure
figure;
plot(x,sx);

% Variants on the line
figure; plot(x,sx);
figure; plot(x,sx,'.');
figure; plot(x,sx,'ro');
figure; plot(x,sx,'ro','MarkerSize',4);
figure; plot(x,sx,'ro','MarkerSize',4,'MarkerFaceColor','k');
figure; plot(x,sx,'ro-.','MarkerSize',4,'MarkerFaceColor','k','LineWidth',4);

% We can use hold to plot multiple lines at once
figure; hold on;
plot(x,sx,'r');
plot(x,cx,'b');

