% [term] = fibsubfunc(n)
% find the nth term in the vibbonacci sequence
%  uses a sub-function
% Modified to be incorrect. Use debugging to fix.

function [out] = ch06_debug(n)

n1 = 0;
n2 = 1;
for ii = 1:n-1
    [n2,n1] = nextterm(n2,n1);
end
out = n2;

end

% Calculate the next two terms in the sequence
function [n2,n1] = nextterm(n2,n1)
n1 = n2;
n2 = n1 + n2;   % Place a debug point on this line
end
