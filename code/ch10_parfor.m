% Use parfor to speed up a loop

% Start a 'pool' of matlab workers
% (if we don't have one going already)
s = matlabpool('size');
if s == 1
    matlabpool;
end

% Compare parfor to the normal for
nmat = 10;
msize = 1000;   % Size of random matrix
myeigs = zeros(nmat,msize);
% For
tic;
for ii = 1:nmat
    % Find the eigen-values of a large matrix
    myeigs(ii,:) = eig(rand(msize));
end
nft = toc;
% Parfor
tic;
parfor ii = 1:nmat
    myeigs(ii,:) = eig(rand(msize));
end
pft = toc;

fprintf('Normal for took: %f s\nParfor took: %f s\nSpeedup: %f\n',...
    nft,pft,nft/pft);