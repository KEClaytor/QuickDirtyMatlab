%% Create an RGB image and save it, clear, and reload it.
res = 128;
% Size and offsets of blobs
xr = .5; yr = .5; sr = .4;
xg = .4; yg = .4; sg = .2;
xb = .6; yb = .6; sb = .1;

ml = linspace(0,1,res);
[x,y] = meshgrid(ml,ml);
% Make three gausian blobs
R = exp(-((x-xr).^2 + (y-yr).^2)/sr^2);
G = exp(-((x-xg).^2 + (y-yg).^2)/sg^2);
B = exp(-((x-xb).^2 + (y-yb).^2)/sb^2);

% Stack the layers into the RGB structure
RGB = zeros(res,res,3);
RGB(:,:,1) = R;
RGB(:,:,2) = G;
RGB(:,:,3) = B;

%% Save the file.
imwrite(RGB,'RGBTest.png');

%% Read in the image
I = imread('RGBTest.png');
% Data types are not always double when we read in images
% Frequently they are signed or unsigned x-bit integers
whos('I','RGB');
% Note also that the scaling has changed
fprintf('Max of RGB: %6.4f\nMax of I:   %d\n',max(RGB(:)),max(I(:)));
