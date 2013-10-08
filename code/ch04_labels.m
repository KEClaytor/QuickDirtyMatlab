% Plot handles are a great way of getting to components of a plot.
%  You can then update specific components of a plot independently.
%  This is really useful if you want to update plots during a loop.

maxt = 4;
t = linspace(0,maxt);
s = sin(2*pi*t);
c = cos(2*pi*t);

figure; hold on;
sh = plot(t,s,'b');
ch = plot(t,c,'r');

% Basic labeling
xlabel('Time (s)');
ylabel('Amplitude');
title('Sine and Cosine Waves');

%% Change the text properties
title('Sine and Cosine Waves','FontSize',16,'FontWeight','Bold');
% We can always combine these with spritnf
units = 's';
xlabel(sprintf('Time up to %d %s',maxt,units));

%% Removing labeling
% If we have stacked plots it is useful to turn off some labeling
% Case 1 will use gca, the current axes handle
% And case 2 will use handles more transparently
h = figure;
% Upper subplot, this shouldn't have the x tick labels
%  (they overlap with the lower axes)
ax1 = subplot('position',[.2,.5,.6,.4]);
plot(t,s);
set(gca,'XTickLabel',{});
% Lower subplot, I'll take off the y tick labels
ax2 = subplot('position',[.2,.1,.6,.4]);
plot(t,c);
set(ax2,'YTickLabel',{});
% We can also set properties of the figure
% Note that if you save the figure, the name is not saved
set(h,'Name','Sine and Cosine');

