% A basic fit to exponential
x = linspace(0,10);
r = .3*(rand(size(x))*2 -1); % centered about zero, excursion max = .3
y = 2*exp(-x/2.2)+r;

figure; hold on;
% Plot the data
plot(x,y,'ko','MarkerSize',5,'MarkerFaceColor','k');

% Fit the data - output will appear in the command window
myfit = fit(x',y','exp1')

% Plot the fit
lh = plot(myfit);
set(lh,'Color','r');
legend('Data','Fit');
title('Curve Fit Demo');
