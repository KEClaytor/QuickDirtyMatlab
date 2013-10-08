% Example script file
%  calculate a few elements of the fibonacci sequence

n1 = 0;
n2 = 1;
disp(n2)
for ii = 1:10
    nnext = n2 + n1;
    n1 = n2;
    n2 = nnext;
    disp(n2)
end
