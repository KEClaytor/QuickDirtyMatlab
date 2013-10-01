% A basic for loop
% for iterator = vector
%     code
% end
for ii = 1:10
    disp(ii)
end

% It is UNWISE to change the iterator during the loop
for ii = 1:10
    disp(ii)
    ii = 3;    % BAD BAD
    disp(ii)
end

% Since the iterator goes through a vector
%  the commands we use to generate vectors
%  work in the for loop in the same way
for ii = 1:2:10
    disp(ii)
end

for ii = 10:-2:-2
    disp(ii)
end

x = 1:3:10
for ii = x
    disp(ii)
end
