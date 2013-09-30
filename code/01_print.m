% This is a comment
% Comment lines help organize and explain your code

% Print some text:
disp('Hello World')

% sprintf and fprintf make formatted strings
%  the string and format appears first, followed by the arguments
fprintf('%d  %f  %2.2f  %e %s\n',3,3.1415926,3.1415926,12340000,'pi');
% fprintf (file-print-formated) can write to a file
% This opens / makes a file

% sprintf (string-print-formatted) returns a string
x = sprintf('%d  %f  %2.2f  %e\n',3,3.1415926,3.1415926,12340000);
x
fprintf(x)
fprintf('%s',x)
