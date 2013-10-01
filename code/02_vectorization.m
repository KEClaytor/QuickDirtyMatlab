% We will use tic and toc to time code.
% Generate two vectors
npoints = 10000;
x = linspace(1,100,npoints);
y = linspace(-10,10,npoints);

% Using a for loop
tic;
for ii = 1:npoints
    z(ii) = x(ii)^3 + y(ii)^(-1/2);
end
toc

% Re-writing the problem to use the vector nature
tic;
z = x.^3 + y.^(-1/2);
toc

% Thigs also speed up when when pre-allocate
z = zeros(size(x));
tic;
z = x.^3 + y.^(-1/2);
toc

% Repmat (repeat matrix) is also useful
A = [1,2;3,4]
B = repmat(A,2,3)

% As is meshgrid for generating
%  2D (or higher) (x,y,z,...) coordinates
[x,y] = meshgrid([1:10],[1:20])
z = x.^2 + y.^2
surf(x,y,z) % visualize it (skipping ahead a bit)
