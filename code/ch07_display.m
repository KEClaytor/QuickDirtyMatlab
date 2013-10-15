% There are a few different ways of displaying data

% Load the old image
I = imread('RGBTest.png');
% Make some data.
range = linspace(-10,10,256);
[X,Y] = meshgrid(range,range);
Z = X.^2 - Y.^2;

fprintf('Z Max: %2.2f Min: %2.2f\n',max(Z(:)),min(Z(:)));

%% imshow
% The built-in image display GUI
figure; imshow(Z); title('imshow');
figure; imshow(I); title('imshow');

%% image
% Works best for data between 0 and 1
figure; image(Z); title('image');
figure; image(I); title('image');

%% imagesc
% Scaled data, watch out for large values
figure; imagesc(Z); title('imagesc');
figure; imagesc(I); title('imagesc');
