%% Get user inputs
% Input gets input off of the screen
x = input('Give me a number: ')
% You can pop-up a display box
y = inputdlg('Give me a name:','Name',1)
% or even a menu
choice = menu('So many choices!','Choice A','Choice B','Choice C')

%% Read in a file
% Read in a comma separated text file.
% Operate on it and save the new results

% Build a filepath based on the current directory
fname = fullfile(pwd,'ch05_spydr.csv');

% Open with dlmread
% Load only the data and skip the header row and date column
dlmdata_data = dlmread(fname,',',2,2);

% Loading with high-lever, IO
filedata = importdata(fname);
importdata_data = filedata.data;
importdata_titles = filedata.textdata(1,:);
importdata_times = filedata.textdata(2:end,:);

%% Saving data
% Make some fake data to save;
matrix_titles = {'Column A','Col B','Col C','Col 4'};
matrix_data = rand(4);
out_name = 'ch05_output';

% Saving data using dlmwrite
dlmwrite(out_name,matrix_data);

% Saving Data as Excel
% (because someone asks for it in excel...)
xlswrite(out_name,matrix_titles,'Sheet1','A1');
xlswrite(out_name,matrix_data,'Sheet1','A2');
