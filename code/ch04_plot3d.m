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

figure; surf(Z);
figure; mesh(Z);
