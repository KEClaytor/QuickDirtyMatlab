% Define a vector
% x = row, y = row, z = column
x = [1 2 3 4]
y = [1,2,4,8]
z = [2;2;2;2]
% A single quote transposes
x
x'
% We can generate vectors with a colon
q = 1:10
% The syntax is start:increment:end
r = 1:2:10
p = 10:-1:1
% linspace generates linearly spaced points
li = linspace(1,100,10);  % 10 evenly spaced points
% and logspace generates logrithmically spaced points
lo = logspace(0,2,10);    % 10 between 10^0 and 10^2

% Dimensions matter
x + y % works 
x + z % does not

% Multiplication
% inner product:
x*z

% Element-wise operators have a . prepended to them
% element wise:
x.*y
x.*z'   % dimensions still need to match

% what about powers?
x.^3 % again elementwise
x^x  % doesn't
x.^x % works

% Matricies
A = [1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16]
B = [1,2,3;4,5,6]

% Transpose works with matricies in the same way
A'
% Again size matters when doing vector-matrix multiplication
A*z     % works
A*x     % doesn't work
B*z     % doesn't work
% Solve a linear algebra system
A\z

% Concatanation can make the vectors longer
[A,z]
[A;x]

% And we can index specific elements out of the vectors
%  The index starts with 1
%  'end' will access the last element of that dimension
x(1:end)
x(2:3)
A(2,3)
A(1:2,3)
%  A colon accesses the entire dimension
A(1,:)
A(:,end)
%  Using only a colon flattens the matrix
A(:)
%  We can access using subvectors
A(1:2:end,:)    % Extract odd rows
%  Or even mathematical expressions
%  (This is called 'logcal' indexing)
A( A>3 )    % Note this flattens A
