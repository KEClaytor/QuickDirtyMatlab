% 3D plotting is much the same

% A parametric style plot
t = linspace(0,2);
x = sin(3*pi*t);
y = cos(2*pi*t);
z = t;

figure;
plot3(x,y,z);

% We can also make surface
%  (mesh, etc.) type plots
[X,Y] = meshgrid([-10:.5:10],[-10:.5:10]);
Z = peaks(X,Y);

figure;
subplot(2,2,1); surf(X,Y,Z);    title('Surf');
subplot(2,2,2); mesh(Z);        title('Mesh');
subplot(2,2,3); contour(Z);     title('Contour');
subplot(2,2,4); imagesc(Z);     title('Image');
% Note that the imagesc command follows the 'matrix'
%  display style (with (0,0) in the upper left
axis xy    % displays imagesc with (0,0) in the lower left.
