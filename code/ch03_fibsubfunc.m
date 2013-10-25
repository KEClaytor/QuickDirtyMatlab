% [term] = fibsubfunc(n)
% find the nth term in the vibbonacci sequence
%  uses a sub-function

function [out] = ch03_fibsubfunc(n)
    
    n1 = 0;
    n2 = 1;
    for ii = 1:n-1
        [n2,n1] = nextterm(n2,n1);
    end
    out = n2;
    
end

% The subfunction
function [n2,n1] = nextterm(n2,n1)
    nnext = n2 + n1;
    n1 = n2;
    n2 = nnext;
end

