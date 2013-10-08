% Variable types
% Generally everything's a double
p = 4;   whos p;    % looks like int, but is a double
q = 4.5; whos q;    % default is floating point double
r = p*q; whos r;    % conversion defaults to double

% But you can treat ints like ints
disp(p == 4)

% Complex
c = 4 + 5*1i;    whos c;

% We also have string types
s = 'hello world';  whos s;

% The cell type is like a matrix
%  but anything can go in the cell
% Access elements with curly braces
mc = cell(2,3);     whos mc;
mc{2,1} = 4.3;
mc{1,2} = 'A string';
mc{2,3} = [1,2;3,4];
mc

% Structures have named subfields
%  that can contain anything
st = struct('cint',5,'next',pi,'name','foo');
whos st;
st.cint         % Get an element
st.cint = 6     % Change an element
st              % Print all subfields
st.new = cell(4)% Make a new subfield

% Whos by itself gives us all the variables
whos
