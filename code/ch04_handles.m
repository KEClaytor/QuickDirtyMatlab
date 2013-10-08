% Plot handles are a great way of getting to components of a plot.
%  You can then update specific components of a plot independently.
%  This is really useful if you want to update plots during a loop.

t = linspace(0,4);
phi = 0;
s = sin(2*pi*t - phi);
c = cos(2*pi*t);

figure; hold on;
% Plot returns a handle to the line plotted
sinehandle = plot(t,s,'b');
c = plot(t,c,'r');
% What are these properties?
get(sinehandle)

%% Change the phase of the sine wave
while (1)
    phi = phi + pi/20;
    s = sin(2*pi*t - phi);
    set(sinehandle,'YData',s)
    pause(.1);  % Give the user time to process
end

