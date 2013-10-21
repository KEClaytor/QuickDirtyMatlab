% Use anonymous functions

function ch03_anonfunc()
% Create an anonymous function, or function handle
% You can define your own
sq = @(x) x.^2;
sq(4)
% And also use pre-defined functions
sn2 = @sin;
sn2(pi/4)

% We can use them in defintions of others
sq3 = @(x) sq(x) + 3;
sq3(4)

% We can send function handles to other functions for evaluation
eval_from_2_to_3(sq);
eval_from_2_to_3(@(x) x + 3);

% They can have vector inputs
% Find the euclidian distance between two points
dist = @(pt1,pt2) sqrt((pt1(1) - pt2(1))^2 + (pt1(2) - pt2(2))^2);
dist([0,0],[1,1])

% Or even structures
dist2 = @(pt1,pt2) sqrt((pt1.x - pt2.x)^2 + (pt1.y - pt2.y)^2);
a.x = 0; a.y = 0;
b.x = 1; b.y = 1;
dist2(a,b)

return

% This function takes a function as it's argument
%  and evaluates it at 2, 2.25, 2.5, 2.75, and 3
function [val] = eval_from_2_to_3(myfunc)
myfunc([2:0.25:3])
return
