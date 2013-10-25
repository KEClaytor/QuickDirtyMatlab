% [term] = fibfunc(n)
% find the nth term in the vibbonacci sequence

% fib(n) return the nth fibonacci sequence
function [out] = ch03_fibfunc(n)
    
    n1 = 0;
    n2 = 1;
    for ii = 1:n-1
        nnext = n2 + n1;
        n1 = n2;
        n2 = nnext;
    end
    out = n2;
    
end % The end is optional

