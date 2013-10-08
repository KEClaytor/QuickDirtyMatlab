% A function that uses a subfunction

% fib(n) return the nth fibonacci sequence
function [out] = fibsubfunc(n)

n1 = 0;
n2 = 1;
for ii = 1:n
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

