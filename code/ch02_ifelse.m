% The if statement is used as a switch
% if (condition)
%     code when condition = True (not 0)
% end
x = 5;
if (x > 3)
    disp('x > 3');
end

% Else can be added for the false case
x = 3;
if (x > 3)
    disp('x > 3');
else
    disp('x <= 3');
end

% if you have multiple conditions you can add elseif
x = 4;
if (x > 5)
    disp('x > 5');
elseif (x > 3)
    disp('5 >= x > 3');
else
    disp('3 >= x');
end

