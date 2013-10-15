% Define a vector
% x = row, y = row, z = column
x = [1 2 3 4]
y = [1,2,4,8]
z = [2;2;2;2]

% A single quote transposes
x'

% We can generate vectors with a colon
% The syntax is start:increment:end
q = 1:10        %  increment = 1 if excluded
r = 1:2:10
p = 10:-1:1

% linspace generates linearly spaced points
li = linspace(1,100,10);  % 10 evenly spaced points
% logspace generates logrithmically spaced points
lo = logspace(0,2,10);    % 10 between 10^0 and 10^2

% Dimensions matter
x + y % works 
x + z % does not

% Multiplication
x*z     % the inner product

% Multiplication can also be done element-wise
% prepended a '.' to the operator
x.*y
x.*z'   % dimensions still need to match

% what about powers?
x.^3 % again elementwise
x^x  % doesn't work
x.^x % works

% We can extract subsets of the vectors with another vector
%  that tells us which elements to take out
x(1:2)      % indexing starts with one
x(2:end)    % and the keyword end will take you to the end