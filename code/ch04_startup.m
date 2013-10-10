% startup.m
% Called at MATLAB startup.
% Sets defaults for figures (use 0 for figure handle)

% Adjust figure defaults for better font read-ability
set(0,'DefaultFigureColor',     'white',...
      'DefaultAxesColor',       'white',...
      'DefaultTextFontSize',    16,...
      'DefaultAxesFontSize',    14,...
      'DefaultTextFontWeight',  'bold',...
      'DefaultAxesFontWeight',  'bold');


% Load up my lovely custom colormap that uses black as middle value.
load('MyColormaps');
set(0,'DefaultFigureColormap',mycmap);

clear;

