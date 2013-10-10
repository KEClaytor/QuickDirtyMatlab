% Custom Exponential fit.
x = linspace(0,10);
r = .3*(rand(size(x))*2 -1); % centered about zero, excursion max = .3
y = 2*exp(-x/2.2)+r;

figure; hold on;
% Plot the data
plot(x,y,'ko','MarkerSize',5,'MarkerFaceColor','k');

% Configure our custom fit
% Set up the fits
sez = fittype('a*exp(-x/t1)+b',...
    'coefficients',{'a','b','t1'});
% Constraits to the fit
mx = max(x);    my = max(y);
fo = fitoptions('Method','NonlinearLeastSquares',...
    'Lower',[0,0,0],...
    'Upper',[1.5*my,1.5*my,Inf],...
    'StartPoint',[my,0,mx/2]);

% Fit the data - output will appear in the command window
myfit = fit(x',y',sez,fo)

% Plot the fit
lh = plot(myfit);
set(lh,'Color','r');
fitlegend = sprintf('Fit, time constant = %2.2f',myfit.t1);
legend('Data',fitlegend);
title('Curve Fit Demo');
