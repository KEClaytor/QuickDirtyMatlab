% A function that uses a subfunction

% fib(n) return the nth fibonacci sequence
function [out] = fibfunc(n)

n1 = 0;
n2 = 1;
for ii = 1:n
    nnext = n2 + n1;
    n1 = n2;
    n2 = nnext;
end
out = n2;

end

