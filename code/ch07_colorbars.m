%% Colorbars. Best run a cell at a time.

% Make some data.
range = linspace(-10,10,256);
[X,Y] = meshgrid(range,range);
Z = X.^2 - Y.^2;

%% make our figure and add a colorbar to it
h = figure;
imagesc(Z);
colorbar;
title('Colorbar');

%% Change to a different colormap
colormap('copper');
title('A different colormap');

%% Make a new colormap and apply this
mynewmap = zeros(255,3);
mynewmap(1:128,3) = linspace(1,0,128);
mynewmap(128:255,1) = linspace(0,1,128);
colormap(mynewmap);
title('Custom Colormap');

%% Change the limits so we only see the center of our data
caxis([-10,10]);
title('Adusted limits');

%% Colormaps can also be applied to other plot types such as surf
surf(Z); shading flat;
colormap(mynewmap);
