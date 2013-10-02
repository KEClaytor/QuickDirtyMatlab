% Example script file
%  calculate a few digits of the fibonacci sequence

n1 = 0;
n2 = 1;
for ii = 1:10
    nnext = n2 + n1;
    disp(nnext)
    n1 = n2;
    n2 = nnext;
end

