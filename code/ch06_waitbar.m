% Do a long computation and show the progress with waitbar

wh = waitbar(0,'Please wait...');
duration = 60;
for ii=1:duration
    waitbar(ii/duration,wh);
    pause(1);
end
close(wh);
