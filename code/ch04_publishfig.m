%figDemo
% Jesse Wilson (2012) syrex314@gmail.com

% Demonstration of making publication-quality figures with MATLAB.

% gather data
load('clown');

% process the data
X = X.^2;
x = 1:80^2;
p = hist(X(:),x);

% make figure
fig = figure(1);
figSize = [3,3.5];

% set print size
set( fig, 'PaperUnits', 'inches',...
            'PaperSize', figSize,...
            'PaperPosition', [0, 0, figSize] );

% set screen size to match
set( fig, 'Units', 'inches' );
figPos = get( fig, 'Position' );
% leave the lower-left coordinates the same (figPos(1:2)),
% replace width and height with desired figure size
figPos(3:4) = figSize;
set(fig,'Position',figPos);


% display it
subplot(211);
imagesc(X);
colorbar;
axis image;
set(gca,'FontName','Times New Roman','FontSize', 10);
subplot(212);
plot(p);
set(gca,'FontName','Times New Roman','FontSize', 10);

% render a file
print -dtiff -r300 'figDemo.tif'