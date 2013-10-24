% We'll need the vectors from last time.
x = [1 2 3 4]
y = [1,2,4,8]
z = [2;2;2;2]

% We can make matricies by hand using;
%  commas or spaces to separate columns in a row
%  and a semi-colon to separate rows
A = [1,2,3,4;5,6,7,8;9,10,11,12;13,14,15,16]
B = [1,2,3;4,5,6]

% There are built-in commands for generating useful matricies
I = eye(4);         % A single digit makes a square matrix
E = ones(2,4);      % Otherwise it specifies # rows, # cols, etc.
Z = zeros(3,3,3);   % Supports >2 dimension matricies (tensors)

% Transpose works with matricies in the same way
A'
% Again size matters when doing vector-matrix multiplication
A*z     % works
A*x     % doesn't work
% Solve a linear algebra system
A\z
A*pinv(z)

% Concatanation can make the vectors longer
[A,z]
[A;x]
% or turn vectors into matricies
[x;y]

% When extracting elements you must specify the dimension
A(2,3)
A(1:2,3)
%  A colon accesses the entire dimension
A(1,:)      % First row all columns
A(:,end)    % last column, all rows
A(1:2:end,:)% Extract odd rows with a subvector
A(:)        % Only a colon flattens the matrix
% This is useful for max/min operations
max(A(:))   % Max of all elements
max(A)      % Max of rows
%  Or even mathematical expressions
%  (This is called 'logcal' indexing)
A( A>3 )    % Note this also flattens A
