% Define a vector
% x = row, y = row, z = column
x = [1 2 3 4]
y = [1,2,4,8]
z = [2;2;2;2]
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
% element wise:
x.*z
x.*y % now works

% what about powers?
x^3 % works
x^x % doesn't
x.^x % I'm not sure

% Matricies
A = [1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16]
B = [1,2,3;4,5,6]

% Again size matters
A*x     % doesn't work
A*z     % works
B*z     % doesn't
% Solve a linear algebra system
% TODO: make sure this command works corectly
A/z

% We can transpose matricies and vectors
A*x'    % now works
A'*x

% Concatanation can make the vectors longer
%  Again, be sure to watch dimensions
[A,z]
[A;x]]

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
A( A>3 )
