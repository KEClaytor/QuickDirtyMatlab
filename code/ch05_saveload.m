% Come up with some basic data
ch01_vartypes

%% Save the data
disp('Saving p, mc, and st to MyData.mat...')
save('MyData.mat','p','mc','st')

%% Clear variables from the workspace
clear;
disp('Workspace cleared, current variables:')
whos

%% Load the data
disp('Loading MyData.mat:')
load('MyData.mat');
whos
