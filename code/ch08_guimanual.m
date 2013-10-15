% Produce a very similar GUI to ch08_GUI, but do it programmatically.

function varargout = ch08_guimanual(varargin)
% Create our figure
fh = figure;
set(fh,'Position',[520,417,518,383]);

%% Create the objects in the figure
% Main axes
axes1 = axes('Position',[0.5,0.25,0.45,0.65]);
% Title editbox
edit_title = uicontrol(fh,'Style','edit',...
    'String','Graph Title',...
    'Position',[50,311,151,22]);
% Some labels
label_wave = uicontrol(fh,'Style','text','String','Wave Type',...
    'Position',[51,265,70,14]);
label_freq = uicontrol(fh,'Style','text','String','Frequency',...
    'Position',[249,52,52,14]);
% The wave type 
popup_type = uicontrol(fh,'Style','popupmenu',...
    'String',{'Sine','Cosine'},...
    'Position',[50,233,101,25]);
% Box for the radiobuttons
panel_radio = uibuttongroup('Parent',fh,'Title','Color',...
            'Position',[0.1,0.38,0.2,0.18],'units','normalized');
% The radiobuttons need the panel as their parent
radio_red = uicontrol(panel_radio,'Style','radiobutton',...
    'String','Red','Position',[13,26,87,23]);
radio_blue = uicontrol(panel_radio,'Style','radiobutton',...
    'String','Red','Position',[12,5,87,23]);
% The frequency slider
slider_freq = uicontrol(fh,'Style','slider',...
    'Max',1.0,'Min',0.0,'Value',0,'SliderStep',[0.01,0.1],...
    'Position',[249,33,251,18]);
% Finally the update button.
push_run = uicontrol(fh,'Style','pushbutton','String','Update Plot!',...
    'Position',[50,83,101,33]);

%% Create handles
% Create our handles structure and populate it
handles.axes1 = axes1;
handles.edit_title = edit_title;
handles.popup_type = popup_type;
handles.radio_red = radio_red;
handles.radio_blue = radio_blue;
handles.slider_freq = slider_freq;
handles.push_run = push_run;
% Initalize our plot
axes(handles.axes1);
time = linspace(0,2*pi);
linehandle = plot(time,sin(0*time),'r');
handles.mydata.time = time;
handles.mydata.line = linehandle;
xlim([0,2*pi]);
ylim([-1,1]*1.1);
% Attach handles to our graph
guidata(fh, handles);
guidata(push_run, handles);
guidata(slider_freq, handles);

%% Setup the callbacks
set(push_run,'Callback',@ch08_updatePlot);
set(slider_freq,'Callback',@ch08_updatePlot);

end