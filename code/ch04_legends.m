%% Basic Labeling
t = linspace(0,4);
s = sin(2*pi*t);
c = cos(2*pi*t);

figure; hold on;
sh = plot(t,s,'b');
ch = plot(t,c,'r');

xlabel('Time (s)');
ylabel('Amplitude');
title('Sine and Cosine Waves');
legend('Sine','Cosine');

%% Programatically Generated Legends
nlines = 8;
lc = lines(nlines);
phi = linspace(0,pi,nlines);
my_legend = cell(size(phi));
figure; hold on;
for ii = 1:length(phi)
    sp = sin(2*pi*t - phi(ii));
    plot(t,sp,'color',lc(ii,:));
    my_legend{ii} = sprintf('Phase %1.2f',phi(ii));
end
legend(my_legend);

%% Turn off specific Legend entries
figure; hold on
snh = plot(t,s + (.1)*(2*rand(size(s))-1),'ko','MarkerSize',4,'MarkerFaceColor','k');
cnh = plot(t,c + (.1)*(2*rand(size(s))-1),'ko','MarkerSize',4,'MarkerFaceColor','k');
sh = plot(t,s,'r-');
ch = plot(t,c,'b-');

% A basic label doesn't work
legend('Noisy Data','Sine Model','Cosine Model')

% But by turning off options with the handles we can get it to work
set(get(get(cnh,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
legend('Noisy Data','Sine Model','Cosine Model')
