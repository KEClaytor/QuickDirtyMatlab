% Define a vector
% x = row, y = row, z = column
x = [1 2 3 4]
y = [1,2,4,8]
z = [2;2;2;2]

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

% And we can index specific elements out of the vectors

