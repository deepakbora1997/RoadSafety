function varargout = intruder(varargin)
% INTRUDER MATLAB code for intruder.fig
%      INTRUDER, by itself, creates a new INTRUDER or raises the existing
%      singleton*.
%
%      H = INTRUDER returns the handle to a new INTRUDER or the handle to
%      the existing singleton*.
%
%      INTRUDER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTRUDER.M with the given input arguments.
%
%      INTRUDER('Property','Value',...) creates a new INTRUDER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before intruder_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to intruder_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help intruder

% Last Modified by GUIDE v2.5 07-Sep-2017 20:46:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @intruder_OpeningFcn, ...
                   'gui_OutputFcn',  @intruder_OutputFcn, ...
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


% --- Executes just before intruder is made visible.
function intruder_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to intruder (see VARARGIN)

% Choose default command line output for intruder
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes intruder wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = intruder_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in srt.
function srt_Callback(hObject, eventdata, handles)
% hObject    handle to srt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in ref.
function ref_Callback(hObject, eventdata, handles)
% hObject    handle to ref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
a=get(handles.slider1,'Value');
set(handles.edit1,'String',a);

% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


