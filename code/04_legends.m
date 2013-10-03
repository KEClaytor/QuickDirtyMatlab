% Basic legend

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
legend('Sine','Cosine');

%% We can programatically generate legends
markerspec = {'r-','b-','g-','c-','m-','k-','r--','b-.'};
phi = linspace(0,pi,8);
my_legend = cell(size(phi));
figure; hold on;
for ii = 1:length(phi)
    sp = sine(2*pi*t - phi(ii));
    plot(t,sp,markerspec{ii});
    my_legend{ii} = sprintf('Phase %1.2f',phi(ii));
end
legend(my_legend);

%% You may want to turn labels off.
% Noisy sine waves
sn = s + .2*rand(size(s));
cn = c + .2*rand(size(c));
figure; hold on
snh = plot(t,sn,'ko','MarkerSize',4,'MarkerFaceColor','k');
sh = plot(t,s,'r-');
cnh = plot(t,cn,'ko','MarkerSize',4,'MarkerFaceColor','k');
ch = plot(t,s,'r-');

% A basic label doesn't work
legend('Noisy Data','Sine Model','Cosine Model')

% But by turning off options with the handles we can get it to work
set(cnh,........);
legend('Noisy Data','Sine Model','Cosine Model')
