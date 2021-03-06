% This is a comment
% Comment lines help organize and explain your code

% Print some text:
disp('Hello World')

% sprintf and fprintf make formatted strings
%  the string and format appears first, followed by the arguments
fprintf('%d  %f  %2.2f  %e %s\n',3,3.1415926,pi,12340000,'pi');
% fprintf (file-print-formated) can write to a file
% It prints to the screen without a file identifier
% This is how we're using it for now.
% See file IO for more information on writing to files

% sprintf (string-print-formatted) returns a string
x = sprintf('%d  %f  %2.2f  %e\n',3,pi,pi,12340000);
x
fprintf(x)
fprintf('%s',x)

% Printing matricies
A = [1,2;3,4];  % A matrix
fprintf('%d %d\n',A);   % Prints by row
