% We will use tic and toc to time code.
% Generate two vectors and do an operation on them
npoints = 10000;
x = linspace(1,100,npoints);
y = linspace(-10,10,npoints);
z = zeros(size(x));

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

% Thigs also speed up when we pre-allocate memory
z = zeros(size(x));
tic;
z = x.^3 + y.^(-1/2);
toc

% Similar to vectorization are repmat and meshgrid
%  for generating repeated vectors
% Repmat repeats an N-dimensional matrix
A = [1,2;3,4]
B = repmat(A,2,3)

% Meshgrid is great for generating
%  2D (or higher) (x,y,z,...) coordinates
[x,y] = meshgrid([1:10],[1:20])
z = x.^2 + y.^2
surf(x,y,z) % visualize it (skipping ahead a bit)
