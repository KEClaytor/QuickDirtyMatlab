% Switch handles mutliple cases
% switch variable
%     case comparison
%         code
%     otherwise
%         if no match
% end

x = 2;
switch x
    case 1
        disp('x==1');
    case 2
        disp('x==2');
    case 3
        disp('x==3');
    case 4
        disp('x==4');
    otherwise
        disp('no match for x!');
end

% I often use it for strings
%  but watch the capitaliztion case
x = 'FOO';
switch x
    case 'bar'
        disp('bar');
    case 'foo'
        disp('foo');
        disp('we passed this');
    case 'FOO'
        disp('FOO');
        disp('we found this');
    otherwise
        disp('no match for x!');
end

