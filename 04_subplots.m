% Subplots allow one to display multiple axes per figure
% basic syntax is subplot(#rows,#cols,currentplot)

t = linspace(0,4);
s = sin(2*pi*t);
c = cos(2*pi*t);
hc = cosh(2*pi*t);

figure;
subplot(2,1,1);
plot(t,s);
subplot(2,1,2);
plot(t,c);

%% The last active axes is updated
plot(t,hc);

%% Hold applies on a per-axis basis
subplot(2,1,1);
hold on;
plot(t,c);

%% You can also specify subplots based on fractional coordinates
figure;
subplot([.2,.6,.5,.3]);
plot(t,s);
subplot([.5,.1,.4,.3]);
plot(t,c);

%% If you specify a new axis that overlaps, the overlapped axes are deleted
subplot([.3,.3,.5,.5]);
plot(t,hc);

