%% Compute on the GPU to accelerate code

% Size of data arrays
smat = 1000;
data = rand(smat);  % 'data'

tic;
% Transfer data to the GPU
datag = gpuArray(data);

% Initalize some data on the GPU
myoffset = gpuArray(9.45);
noise = gpuArray.rand(smat)*10 - .5;

% Perform some computation on the GPU
% bsxfun expands the lower-dimension array
%  to the size of the larger one before running the operation
corrected = arrayfun(@sin,datag);
corrected = arrayfun(@times,corrected,noise);
corrected = bsxfun(@plus,corrected,myoffset);

% Gather the results from the GPU
final = gather(corrected);
gputime = toc;

% A comparison without the GPU
tic;
noise = rand(smat)*10 - .5;
corrected = gamma(data)*noise + 9.45;
cputime = toc;

fprintf('GPU took: %f s\nCPU took: %f s\nSpeedup: %f\n',...
    gputime,cputime,cputime/gputime);