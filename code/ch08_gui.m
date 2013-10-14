function varargout = ch08_gui(varargin)
% CH08_GUI MATLAB code for ch08_gui.fig
%      A Demo GUI

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ch08_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @ch08_gui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT

% --- Executes just before ch08_gui is made visible.
function ch08_gui_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

%% Initalize our plot and store the handles to the lines in the handles structure
axes(handles.axes1);
time = linspace(0,2*pi);
linehandle = plot(time,sin(0*time),'r');
handles.mydata.time = time;
handles.mydata.line = linehandle;
xlim([0,2*pi]);
ylim([-1,1]*1.1);

%% You must update handles if you want your changes to be visible to other functions
% Update handles structure
guidata(hObject, handles);

% Output
function varargout = ch08_gui_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;

%% Update if the the button, slider, radio or popup is changed
function push_run_Callback(hObject, eventdata, handles)
ch08_updatePlot(handles);

function slider_freq_Callback(hObject, eventdata, handles)
ch08_updatePlot(handles);

%% Unused
function popup_type_Callback(hObject, eventdata, handles)
function edit_title_Callback(hObject, eventdata, handles)
function popup_type_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function slider_freq_CreateFcn(hObject, eventdata, handles)
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
function edit_title_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
