%% The plot update function for ch08_gui

%% The main loop
function ch08_updatePlot(handles)
% Get properties from handles
time = handles.mydata.time;

%% Get properties from the panel settings
% Plot color - the button box forces it to be one or the other
radio_red = get(handles.radio_red,'Value');
if radio_red
    plotcolor = 'r';
else
    plotcolor = 'b';
end
% Plot title
mytitle = get(handles.edit_title,'String');
% Frequency
freq = get(handles.slider_freq,'Value');

% Wave type
wt = get(handles.popup_type,'Value');
% index 1 = sine
% index 2 = cosine
switch wt
    case 1
        wave = sin(2*pi*freq*time);
    case 2
        wave = cos(2*pi*freq*time);
end

%% Update the plot
set(handles.mydata.line,'Ydata',wave);
set(handles.mydata.line,'color',plotcolor);
set(get(handles.axes1,'Title'),'String',mytitle);
