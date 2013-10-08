% Read in a comma separated text file.
% Operate on it and save the new results

% Build a filepath based on the current directory
fname = fullfile(pwd,'ch05_spydr.csv');

%% Loading with basic fscanf
% This section is currently a total mess
fid = fopen(fname);
ncol = 7;
titles = cell(1,ncol);
for ii = 1:ncol
    titles{ii} = fscanf(fid,'%s,');
end
A = fscanf(fid,['%s',repmat('%f',[1,7])]);
fclose(fid)

%% Loading with higher-leve, IO
% This took me a fraction of the time to write
filedata = importdata(fname);
A = filedata.data;
titles = filedata.textdata(1,:);
times = filedata.textdata(2:end,:);

%% Saving the data

% Because someone asks for it in excel...

