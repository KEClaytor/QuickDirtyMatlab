% A basic for loop
% for iterator = vector
%     code
% end
disp('Basic for loop.')
for ii = 1:10
    disp(ii)
end

disp('Do not modify the iterator during a loop.')
% It is UNWISE to change the iterator during the loop
for ii = 1:10
    disp(ii)
    ii = 3;    % BAD BAD
    disp(ii)
end

% Since the iterator goes through a vector
%  the commands we use to generate vectors
%  work in the for loop in the same way
disp('Vector, step by two.')
for ii = 1:2:10
    disp(ii)
end

disp('Vector, step by two backwards.')
for ii = 10:-2:-2
    disp(ii)
end

disp('Step by vector in memory (step is three)')
x = 1:3:10;
for ii = x
    disp(ii)
end
