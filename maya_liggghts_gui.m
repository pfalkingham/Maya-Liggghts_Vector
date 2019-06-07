function varargout = maya_liggghts_gui(varargin)
% MAYA_LIGGGHTS_GUI MATLAB code for maya_liggghts_gui.fig
%      MAYA_LIGGGHTS_GUI, by itself, creates a new MAYA_LIGGGHTS_GUI or raises the existing
%      singleton*.
%
%      H = MAYA_LIGGGHTS_GUI returns the handle to a new MAYA_LIGGGHTS_GUI or the handle to
%      the existing singleton*.
%
%      MAYA_LIGGGHTS_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAYA_LIGGGHTS_GUI.M with the given input arguments.
%
%      MAYA_LIGGGHTS_GUI('Property','Value',...) creates a new MAYA_LIGGGHTS_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before maya_liggghts_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to maya_liggghts_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help maya_liggghts_gui

% Last Modified by GUIDE v2.5 04-Jun-2015 08:42:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @maya_liggghts_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @maya_liggghts_gui_OutputFcn, ...
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

% --- Executes just before maya_liggghts_gui is made visible.
function maya_liggghts_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to maya_liggghts_gui (see VARARGIN)

% Choose default command line output for maya_liggghts_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes maya_liggghts_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = maya_liggghts_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on selection change in listbox2.
function listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox2
i = get(handles.listbox2,'Value');
%set length
set(handles.length,'String',num2str(handles.bonesTXT{i,5}));
set(handles.lenP,'String',num2str(handles.bonesTXT{i,7}));
set(handles.lenM,'String',num2str(handles.bonesTXT{i,6}));
set(handles.radius,'String',num2str(handles.bonesTXT{i,4}));


% --- Executes during object creation, after setting all properties.
function listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in ProxMenu.
function ProxMenu_Callback(hObject, eventdata, handles)
% hObject    handle to ProxMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns ProxMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from ProxMenu

% --- Executes during object creation, after setting all properties.
function ProxMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ProxMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function bnameInput_Callback(hObject, eventdata, handles)
% hObject    handle to bnameInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of bnameInput as text
%        str2double(get(hObject,'String')) returns contents of bnameInput as a double


% --- Executes during object creation, after setting all properties.
function bnameInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bnameInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in DistMenu.
function DistMenu_Callback(hObject, eventdata, handles)
% hObject    handle to DistMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns DistMenu contents as cell array
%        contents{get(hObject,'Value')} returns selected item from DistMenu


% --- Executes during object creation, after setting all properties.
function DistMenu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to DistMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function radiusInput_Callback(hObject, eventdata, handles)
% hObject    handle to radiusInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radiusInput as text
%        str2double(get(hObject,'String')) returns contents of radiusInput as a double


% --- Executes during object creation, after setting all properties.
function radiusInput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radiusInput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in addBone.
function addBone_Callback(hObject, eventdata, handles)
% hObject    handle to addBone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%get the bone name
bName = get(handles.bnameInput,'string');

%get the prox joint
proxJointVal = get(handles.ProxMenu, 'Value');
proxJointString = get(handles.ProxMenu,'string');


%get the dist. joint
distJointVal = get(handles.DistMenu, 'Value');
distJointString = get(handles.DistMenu,'string');


%get the radius
radius = str2num(get(handles.radiusInput,'string'));

%%Calculate the length over the whole time frame (avg/max/min)
for i=1:handles.nFrames
    boneLength(i) = sqrt(((handles.rData(i,distJointVal*6-5)-handles.rData(i,proxJointVal*6-5))^2) + ((handles.rData(i,distJointVal*6-4)-handles.rData(i,proxJointVal*6-4))^2) + ((handles.rData(i,distJointVal*6-3)-handles.rData(i,proxJointVal*6-3))^2));
end
length = mean(boneLength(:))
lengthMin = min(boneLength(:))
lengthMax = max(boneLength(:))

%add the things to the workspace variable

handles.nBones = handles.nBones+1;
handles.bonesTXT{handles.nBones,1} = bName;         %Bone Name
handles.bonesTXT{handles.nBones,2} = proxJointVal;  %No. in list of prox joint
handles.bonesTXT{handles.nBones,3} = distJointVal;  % and for distal
handles.bonesTXT{handles.nBones,4} = radius;        %Radius of bone
handles.bonesTXT{handles.nBones,5} = length;        %length of the bone (calculate above)
handles.bonesTXT{handles.nBones,6} = lengthMin;     %minimum value of that length over time
handles.bonesTXT{handles.nBones,7} = lengthMax;     %max value.  These two for error checking

%show that in the listbox as csv
handles.boneString{handles.nBones} = strcat(bName,', ',proxJointString{proxJointVal},', ',distJointString{distJointVal});
set(handles.listbox2,'String',handles.boneString);
set(handles.listbox2,'value',handles.nBones);
%update visual bone number and length/radius indicators:
set(handles.nbones,'String',num2str(handles.nBones));
set(handles.length,'String',num2str(handles.bonesTXT{handles.nBones,5}));
set(handles.lenP,'String',num2str(handles.bonesTXT{handles.nBones,7}));
set(handles.lenM,'String',num2str(handles.bonesTXT{handles.nBones,6}));
set(handles.radius,'String',num2str(handles.bonesTXT{handles.nBones,4}));

%plot on all 3 graphs

%save my data
guidata(hObject,handles);



% --- Executes on button press in delBone.
function delBone_Callback(hObject, eventdata, handles)
% hObject    handle to delBone (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%get the selected list no.
index = get(handles.listbox2,'value');

%remove that line from bonesTXT
for i=index:handles.nBones-1
    handles.bonesTXT{i,1} = handles.bonesTXT{i+1,1};
    handles.bonesTXT{i,2} = handles.bonesTXT{i+1,2};
    handles.bonesTXT{i,3} = handles.bonesTXT{i+1,3};
end

handles.bonesTXT(handles.nBones,:) = [];

%remove from list view
handles.boneString(index) = []
set(handles.listbox2,'String',handles.boneString);



%save my data
handles.nBones = handles.nBones - 1;
set(handles.nbones,'String',num2str(handles.nBones));
set(handles.listbox2,'value',handles.nBones);

guidata(hObject,handles);


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in loadData.  This loads the data
function loadData_Callback(hObject, eventdata, handles)
% hObject    handle to loadData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
infilename = uigetfile('*.csv');

set(handles.filename,'String',infilename);

rawdata = importdata(infilename);
cols = size(rawdata.textdata);
%
jointNames = rawdata.textdata;
%no of frames imported
frames = size(rawdata.data);
noFrames = frames(1);
%set slider to cover frame range
set(handles.slider2,'Max',noFrames);
%setup coordinate variable/dataset

j = 1;
for i = 2:6:cols(2)
    joints{j} = jointNames{i};
    j = j+1;
end

data = rawdata.data;
data(:,1) = [];

set(handles.ProxMenu,'string',joints);
set(handles.DistMenu,'string',joints);

handles.rData = data;
handles.nBones = 0;
handles.nFrames = noFrames;
handles.stopF = 1;
%handles.jNames = joints;
guidata(hObject,handles);

% --- Executes on key press with focus on ProxMenu and none of its controls.
function ProxMenu_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to ProxMenu (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in saveData.
function saveData_Callback(hObject, eventdata, handles)
% hObject    handle to saveData (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% -- Get the additional variables needed
[outfilename,outPathName] = uiputfile('*.*');
 
mkdir(outfilename);
save_out(outPathName, handles);

% -- Create the folder structure

% -- Generate input files by calling save_out

% -- Generate stl files by calling stl_out
stl_out(handles);
movefile('*.stl',outfilename);
movefile('part*',outfilename);


% --- Executes on button press in gUpdate.
function gUpdate_Callback(hObject, eventdata, handles)
% hObject    handle to gUpdate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%get the frame number from the slider
frame = round(get(handles.slider2,'Value'));

%clear the graph and turn on hold.
cla;
hold on;
axis equal;

%for each bone
for i=1:handles.nBones
    %get xyz1, xyz2
    x = [handles.rData(frame,(handles.bonesTXT{i,2})*6-5),handles.rData(frame,(handles.bonesTXT{i,3})*6-5),]
    y = [handles.rData(frame,(handles.bonesTXT{i,2})*6-4),handles.rData(frame,(handles.bonesTXT{i,3})*6-4),]
    z = [handles.rData(frame,(handles.bonesTXT{i,2})*6-3),handles.rData(frame,(handles.bonesTXT{i,3})*6-3),]
  
    plot3(x,y,z);
    
end

%draw the box

xmin = str2num(get(handles.xmin,'String'));
xmax = str2num(get(handles.xmax,'String'));
ymin = str2num(get(handles.ymin,'String'));
ymax = str2num(get(handles.ymax,'String'));
zmin = str2num(get(handles.zmin,'String'));
zmax = str2num(get(handles.zmax,'String'));
boxVerts = [xmin,ymin,zmin; xmin, ymin, zmax; xmin, ymax, zmin; xmin, ymax, zmax; xmax, ymin, zmin; xmax, ymin, zmax; xmax, ymax, zmin; xmax, ymax, zmax];
[k,v] = convhull(boxVerts(:,1),boxVerts(:,2),boxVerts(:,3));
trisurf(k,boxVerts(:,1),boxVerts(:,2),boxVerts(:,3),2,'edgecolor','none');
camlight left;
lighting phong;
alpha(0.3);

% --- Executes on button press in playbutton.
function playbutton_Callback(hObject, eventdata, handles)
% hObject    handle to playbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%draw box
    xmin = str2num(get(handles.xmin,'String'));
    xmax = str2num(get(handles.xmax,'String'));
    ymin = str2num(get(handles.ymin,'String'));
    ymax = str2num(get(handles.ymax,'String'));
    zmin = str2num(get(handles.zmin,'String'));
    zmax = str2num(get(handles.zmax,'String'));
    boxVerts = [xmin,ymin,zmin; xmin, ymin, zmax; xmin, ymax, zmin; xmin, ymax, zmax; xmax, ymin, zmin; xmax, ymin, zmax; xmax, ymax, zmin; xmax, ymax, zmax];
    [k,v] = convhull(boxVerts(:,1),boxVerts(:,2),boxVerts(:,3));
    trisurf(k,boxVerts(:,1),boxVerts(:,2),boxVerts(:,3),2,'edgecolor','none');
    camlight left;
    lighting phong;
    alpha(0.3);


for frame=1:2:handles.nFrames
    pause(0.005);
    if(~get(handles.persistBox,'Value'))
    cla;
    %draw box
    xmin = str2num(get(handles.xmin,'String'));
    xmax = str2num(get(handles.xmax,'String'));
    ymin = str2num(get(handles.ymin,'String'));
    ymax = str2num(get(handles.ymax,'String'));
    zmin = str2num(get(handles.zmin,'String'));
    zmax = str2num(get(handles.zmax,'String'));
    boxVerts = [xmin,ymin,zmin; xmin, ymin, zmax; xmin, ymax, zmin; xmin, ymax, zmax; xmax, ymin, zmin; xmax, ymin, zmax; xmax, ymax, zmin; xmax, ymax, zmax];
    [k,v] = convhull(boxVerts(:,1),boxVerts(:,2),boxVerts(:,3));
    trisurf(k,boxVerts(:,1),boxVerts(:,2),boxVerts(:,3),2,'edgecolor','none');
    camlight left;
    lighting phong;
    alpha(0.3);
    end
    for i=1:handles.nBones
        %get xyz1, xyz2
        hold on;

        x = [handles.rData(frame,(handles.bonesTXT{i,2})*6-5),handles.rData(frame,(handles.bonesTXT{i,3})*6-5),];
        y = [handles.rData(frame,(handles.bonesTXT{i,2})*6-4),handles.rData(frame,(handles.bonesTXT{i,3})*6-4),];
        z = [handles.rData(frame,(handles.bonesTXT{i,2})*6-3),handles.rData(frame,(handles.bonesTXT{i,3})*6-3),];

        plot3(x,y,z);
    end

end






function xmax_Callback(hObject, eventdata, handles)
% hObject    handle to xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xmax as text
%        str2double(get(hObject,'String')) returns contents of xmax as a double


% --- Executes during object creation, after setting all properties.
function xmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xmin_Callback(hObject, eventdata, handles)
% hObject    handle to xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xmin as text
%        str2double(get(hObject,'String')) returns contents of xmin as a double


% --- Executes during object creation, after setting all properties.
function xmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ymax_Callback(hObject, eventdata, handles)
% hObject    handle to ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ymax as text
%        str2double(get(hObject,'String')) returns contents of ymax as a double


% --- Executes during object creation, after setting all properties.
function ymax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ymax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ymin_Callback(hObject, eventdata, handles)
% hObject    handle to ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ymin as text
%        str2double(get(hObject,'String')) returns contents of ymin as a double


% --- Executes during object creation, after setting all properties.
function ymin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ymin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zmax_Callback(hObject, eventdata, handles)
% hObject    handle to zmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zmax as text
%        str2double(get(hObject,'String')) returns contents of zmax as a double


% --- Executes during object creation, after setting all properties.
function zmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zmin_Callback(hObject, eventdata, handles)
% hObject    handle to zmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zmin as text
%        str2double(get(hObject,'String')) returns contents of zmin as a double


% --- Executes during object creation, after setting all properties.
function zmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in persistBox.
function persistBox_Callback(hObject, eventdata, handles)
% hObject    handle to persistBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of persistBox


% --- This function is called when the save button is pressed.
% It will write out the input files for LIGGGHTS (I think) %%
function save_out(outName, handles)
% outName       Name to use for folder/files
% handles        Data for the whoe GUI
% ----------- other variables that may be required

%eventually get these from GUI
framerate = 250;                    %framerate of data
timestep = 0.00001;                 %timestep of simulation
frame_ts = (1/framerate) / timestep;%timesteps per frame


%move rData to AllJointsm and divide xyz position columns by 100 to get m
%POTENTIAL SOURCE OF ERROR - DELETE WHEN WORKING
AllJointsm = handles.rData;
cols = size(AllJointsm);
assignin('base','AllJointsm1',AllJointsm);
for i=1:6:cols(2)
    AllJointsm(:,i) = AllJointsm(:,i)/100;
end
for i=2:6:cols(2)
    AllJointsm(:,i) = AllJointsm(:,i)/100;
end
for i=3:6:cols(2)
    AllJointsm(:,i) = AllJointsm(:,i)/100;
end
assignin('base','AllJointsm2',AllJointsm)

%convert box measurements cm to m
xmax = str2num(get(handles.xmax,'String'))/100;
xmin = str2num(get(handles.xmin,'String'))/100;
ymax = str2num(get(handles.ymax,'String'))/100;
ymin = str2num(get(handles.ymin,'String'))/100;
zmax = str2num(get(handles.zmax,'String'))/100;
zmin = str2num(get(handles.zmin,'String'))/100;

% Set zero position
% I'm not sure what's going on here***************************************
% As the next step moves them from the origin.
for j=1:handles.nBones
    %currentLocation[frame, x/y/z, bone]
    currentLocation(1,1,j) = AllJointsm(1,handles.bonesTXT{j,2}*6-5);  %x starting location
    currentLocation(1,2,j) = AllJointsm(1,handles.bonesTXT{j,2}*6-4);  %y starting location
    currentLocation(1,3,j) = AllJointsm(1,handles.bonesTXT{j,2}*6-3);  %z starting location
    

    %translations[frame, x/y/z, bone]
    translations(1,1,j) = 0;  %x
    translations(1,2,j) = 0;  %y
    translations(1,3,j) = 0;  %z
end


% Calculate the initial translation/rotation 
%  to put the models where they should start (i.e. move from origin)
%  Also calculate length of each bone
for j=1:handles.nBones
 
    initialTranslation(1,j) = AllJointsm(1,handles.bonesTXT{j,2}*6-5);
    initialTranslation(2,j) = AllJointsm(1,handles.bonesTXT{j,2}*6-4);
    initialTranslation(3,j) = AllJointsm(1,handles.bonesTXT{j,2}*6-3);

    vectorNow(1) = 1;
    vectorNow(2) = 0;
    vectorNow(3) = 0;
    
    vectorNext(1) = AllJointsm(1,handles.bonesTXT{j,3}*6-5) - AllJointsm(1,handles.bonesTXT{j,2}*6-5);
    vectorNext(2) = AllJointsm(1,handles.bonesTXT{j,3}*6-4) - AllJointsm(1,handles.bonesTXT{j,2}*6-4);
    vectorNext(3) = AllJointsm(1,handles.bonesTXT{j,3}*6-3) - AllJointsm(1,handles.bonesTXT{j,2}*6-3);
    
    vectorTrans(1) = (AllJointsm(1,handles.bonesTXT{j,3}*6-5) - initialTranslation(1,j)) - (AllJointsm(1,handles.bonesTXT{j,2}*6-5) - initialTranslation(1,j));
    vectorTrans(2) = (AllJointsm(1,handles.bonesTXT{j,3}*6-4) - initialTranslation(2,j)) - (AllJointsm(1,handles.bonesTXT{j,2}*6-4) - initialTranslation(2,j));
    vectorTrans(3) = (AllJointsm(1,handles.bonesTXT{j,3}*6-3) - initialTranslation(3,j)) - (AllJointsm(1,handles.bonesTXT{j,2}*6-3) - initialTranslation(3,j));  
    
    top = ((vectorNow(1)*vectorTrans(1))+(vectorNow(2)*vectorTrans(2))+(vectorNow(3)*vectorTrans(3)));
    bottom1 = ((vectorNow(1)*vectorNow(1))+(vectorNow(2)*vectorNow(2))+(vectorNow(3)*vectorNow(3)));
    bottom2 = ((vectorTrans(1)*vectorTrans(1))+(vectorTrans(2)*vectorTrans(2))+(vectorTrans(3)*vectorTrans(3)));

    if(bottom1*bottom2 ~= 0)
        if((top/(sqrt(bottom1)*sqrt(bottom2))) < 1 & (top/(sqrt(bottom1)*sqrt(bottom2))) > -1);
            initialRotationData(1,j) = acos(top/(sqrt(bottom1)*sqrt(bottom2)));
        else
            initialRotationData(1,j) = 0;
        end
    else
        initialRotationData(1,j) = 0;
    end

    if(initialRotationData(1,j) ~= 0)
        initialRotationData(2,j) = (vectorNow(2)*vectorTrans(3)) - (vectorNow(3)*vectorTrans(2));  % VectorTrans(3) - 0
        initialRotationData(3,j) = (vectorNow(3)*vectorTrans(1)) - (vectorNow(1)*vectorTrans(3));  % 0 - 0
        initialRotationData(4,j) = (vectorNow(1)*vectorTrans(2)) - (vectorNow(2)*vectorTrans(1));  % 0-VectorTrans(1)
    else
        initialRotationData(2,j) = 0;
        initialRotationData(3,j) = 0;
        initialRotationData(4,j) = 0;
    end    
    

end
% Calculate Translation Data for each frame
for i=2:handles.nFrames
    for j=1:handles.nBones
        %translations(frame, x/y/z, bone)
        translations(i,1,j) = AllJointsm(i,handles.bonesTXT{j,2}*6-5) - AllJointsm(i-1,handles.bonesTXT{j,2}*6-5);
        translations(i,2,j) = AllJointsm(i,handles.bonesTXT{j,2}*6-4) - AllJointsm(i-1,handles.bonesTXT{j,2}*6-4);
        translations(i,3,j) = AllJointsm(i,handles.bonesTXT{j,2}*6-3) - AllJointsm(i-1,handles.bonesTXT{j,2}*6-3);
        
        currentLocation(i,1,j) = currentLocation(i-1,1,j) + translations(i,1,j);
        currentLocation(i,2,j) = currentLocation(i-1,2,j) + translations(i,2,j);
        currentLocation(i,3,j) = currentLocation(i-1,3,j) + translations(i,3,j);
    end

end

% Calculate Rotation data for each frame
for i=2:handles.nFrames
    for j=1:handles.nBones
        vectorNow(1) = AllJointsm(i-1,handles.bonesTXT{j,3}*6-5) - AllJointsm(i-1,handles.bonesTXT{j,2}*6-5);
        vectorNow(2) = AllJointsm(i-1,handles.bonesTXT{j,3}*6-4) - AllJointsm(i-1,handles.bonesTXT{j,2}*6-4);
        vectorNow(3) = AllJointsm(i-1,handles.bonesTXT{j,3}*6-3) - AllJointsm(i-1,handles.bonesTXT{j,2}*6-3);

        vectorNext(1) = AllJointsm(i,handles.bonesTXT{j,3}*6-5) - AllJointsm(i,handles.bonesTXT{j,2}*6-5);
        vectorNext(2) = AllJointsm(i,handles.bonesTXT{j,3}*6-4) - AllJointsm(i,handles.bonesTXT{j,2}*6-4);
        vectorNext(3) = AllJointsm(i,handles.bonesTXT{j,3}*6-3) - AllJointsm(i,handles.bonesTXT{j,2}*6-3);
        
        vectorTrans(1) = (AllJointsm(i,handles.bonesTXT{j,3}*6-5) - translations(i,1,j)) - (AllJointsm(i,handles.bonesTXT{j,2}*6-5) - translations(i,1,j));
        vectorTrans(2) = (AllJointsm(i,handles.bonesTXT{j,3}*6-4) - translations(i,2,j)) - (AllJointsm(i,handles.bonesTXT{j,2}*6-4) - translations(i,2,j));
        vectorTrans(3) = (AllJointsm(i,handles.bonesTXT{j,3}*6-3) - translations(i,3,j)) - (AllJointsm(i,handles.bonesTXT{j,2}*6-3) - translations(i,3,j));

        
        %calculate angle VectorNow X VectorTrans
        
        top = ((vectorNow(1)*vectorTrans(1))+(vectorNow(2)*vectorTrans(2))+(vectorNow(3)*vectorTrans(3)));
        bottom1 = ((vectorNow(1)*vectorNow(1))+(vectorNow(2)*vectorNow(2))+(vectorNow(3)*vectorNow(3)));
        bottom2 = ((vectorTrans(1)*vectorTrans(1))+(vectorTrans(2)*vectorTrans(2))+(vectorTrans(3)*vectorTrans(3)));
        
        if(bottom1*bottom2 ~= 0)
            if((top/(sqrt(bottom1)*sqrt(bottom2))) < 1 & (top/(sqrt(bottom1)*sqrt(bottom2))) > -1);
                outputRotationData(i,1,j) = acos(top/(sqrt(bottom1)*sqrt(bottom2)));
            else
                outputRotationData(i,1,j) = 0;
            end
        else
            outputRotationData(i,1,j) = 0;
        end
            
        if(outputRotationData(i,1,j) ~= 0)
            outputRotationData(i,2,j) = (vectorNow(2)*vectorTrans(3)) - (vectorNow(3)*vectorTrans(2));
            outputRotationData(i,3,j) = (vectorNow(3)*vectorTrans(1)) - (vectorNow(1)*vectorTrans(3));
            outputRotationData(i,4,j) = (vectorNow(1)*vectorTrans(2)) - (vectorNow(2)*vectorTrans(1));
        else
            outputRotationData(i,2,j) = 0;
            outputRotationData(i,3,j) = 0;
            outputRotationData(i,4,j) = 0;
        end
     
    end
end

%% output _Part.0 - intro stuff
fileIDp1 = fopen('part.0','a');

fprintf(fileIDp1,'#This LIGGGHTS input file was autoGenerated on %s using the Matlab Program written by Peter Falkingham\n\n',datestr(datetime('now')));
fprintf(fileIDp1,'#----------SET UP FOLDER FOR OUTPUT----------#\n\nshell mkdir post\n\n#processors 1 1 1\n\n');
fprintf(fileIDp1,'#----------SYSTEM VARIABLES----------#\n\n#These are variables used later that get frequently altered\n\n');
fprintf(fileIDp1,'variable	r equal 0.01		# RADIUS of the particles (metres)\n');
fprintf(fileIDp1,'variable	E equal 5.0e6		# Young''s modulus of particles (MPa)\n');
fprintf(fileIDp1,'variable	f equal 0.9		    # Coefficient of Friction (?)\n');
fprintf(fileIDp1,'variable	c equal 75000		# Cohesion energy density (?)\n');
fprintf(fileIDp1,'variable	d equal 1200		# Density of particles (Kg/m3)\n');
fprintf(fileIDp1,'variable	v equal 0.4		    # Poisson ratio\n\n');
fprintf(fileIDp1,'variable	s equal 0.00001		# time step size (seconds)\n');
fprintf(fileIDp1,'variable	t equal 1			# simultion time (seconds)\n');
fprintf(fileIDp1,'variable	n equal round($t/$s)	# number of steps to run\n\n\n');


fprintf(fileIDp1,'#----------SIMULATION SETTINGS----------#\n# These are required for the simulation\n\n');
fprintf(fileIDp1,'units 		si				# units are set to SI\n');
fprintf(fileIDp1,'atom_style 	granular		# standard for DEM - NOTE THAT SPHERE ALSO WORKS\n');
fprintf(fileIDp1,'boundary	m m m			    # Boundary s = non-periodic, shrinkwrapped\n');
fprintf(fileIDp1,'newton 		off				# Turns newtons 3rd law on/off: on = slight computational savings, but 2x more communication\n');
fprintf(fileIDp1,'communicate	single vel yes	# standard processor communication settings\n\n');
fprintf(fileIDp1,'neighbor	$r bin			    #nearest neighbor course contact detection\n');
fprintf(fileIDp1,'neigh_modify	every 1 delay 0 check yes	#rebuild list every step, if checked.\n\n');

fprintf(fileIDp1,'region		reg block %d %d %d %d %d %d units box	# Sim domain\n', xmin*1.5, xmax*1.5, ymin*1.5, ymax*1.5,zmin*1.1,1);
fprintf(fileIDp1,'create_box	1 reg 			# creates that domain\n\n');

fprintf(fileIDp1,'#----------MATERIAL PROPERTIES----------#\n');
fprintf(fileIDp1,'# These determine the behaviour of the simulation\n');

fprintf(fileIDp1,'fix	m1 all property/global youngsModulus peratomtype $E\n');
fprintf(fileIDp1,'fix	m2 all property/global poissonsRatio peratomtype $v\n');
fprintf(fileIDp1,'fix	m3 all property/global coefficientRestitution peratomtypepair 1 0.9\n');
fprintf(fileIDp1,'fix 	m4 all property/global coefficientFriction peratomtypepair 1 $f\n');	
fprintf(fileIDp1,'fix 	m5 all property/global characteristicVelocity scalar 1.0\n');  		
fprintf(fileIDp1,'fix 	m6 all property/global cohesionEnergyDensity peratomtypepair 1 $c\n\n\n');

fprintf(fileIDp1,'#----------FORCE MODEL----------#\n');
fprintf(fileIDp1,'# Takes the given material properties and applies them to all particles\n\n');
fprintf(fileIDp1,'pair_style	gran model hertz tangential history cohesion sjkr #:pre # hertzian with cohesion\n');
fprintf(fileIDp1,'pair_coeff	* * 			# applies this interaction to all particle pairs\n\n');

fprintf(fileIDp1,'#----------ADDITIONAL SETTINGS----------#\n\n');
fprintf(fileIDp1,'fix 		nsph all nve/sphere			# Initialises time integration\n');
fprintf(fileIDp1,'fix         gravi all gravity 9.81 vector 0.0 0.0 -1.0	#Gravity\n');
fprintf(fileIDp1,'timestep	$s\n\n\n');

fprintf(fileIDp1,'#----------WALLS----------#\n');
fprintf(fileIDp1,'#Sets up the physical walls\n\n');
fprintf(fileIDp1,'fix 	boxwalls_x1 all wall/gran model hertz tangential history  primitive type 1 xplane %d #:pre\n',xmax);
fprintf(fileIDp1,'fix 	boxwalls_y1 all wall/gran model hertz tangential history  primitive type 1 yplane %d #:pre\n',ymax);
fprintf(fileIDp1,'fix 	boxwalls_z1 all wall/gran model hertz tangential history  primitive type 1 zplane %d #:pre\n',zmin);
fprintf(fileIDp1,'fix 	boxwalls_x2 all wall/gran model hertz tangential history  primitive type 1 xplane %d  #:pre\n',xmin);
fprintf(fileIDp1,'fix 	boxwalls_y2 all wall/gran model hertz tangential history  primitive type 1 yplane %d  #:pre\n\n\n',ymin);

fprintf(fileIDp1,'#----------PARTICLE INSERTION----------#\n\n');

fprintf(fileIDp1,'region 	tray block %d %d %d %d %d %d units box\n', xmin, xmax, ymin, ymax, zmin, (abs(zmax-zmin)*2)+zmin );
fprintf(fileIDp1,'group		nve_group region reg\n\n');

fprintf(fileIDp1,'fix	pts1 all particletemplate/sphere 115 atom_type 1 density constant $d radius constant $r\n');
fprintf(fileIDp1,'fix	pdd1 all particledistribution/discrete 5331  1 pts1 1.0\n');
fprintf(fileIDp1,'fix	ins nve_group insert/pack seed 546 distributiontemplate pdd1 maxattempt 500 insert_every 1 overlapcheck yes all_in yes region tray volumefraction_region 0.65 ntry_mc 5000\n');	


fprintf(fileIDp1,'#----------COMPUTATION----------#\n');
fprintf(fileIDp1,'# sets up what will be computed\n\n');

fprintf(fileIDp1,'compute		rke all erotate/sphere\n');
fprintf(fileIDp1,'compute 	mudisp all displace/atom\n\n');

fprintf(fileIDp1,'#----------RUN SPECIFICS----------#\n\n');

fprintf(fileIDp1,'run 1			#take 1 timestep to insert particles\n');
fprintf(fileIDp1,'unfix ins		#stop inserting particles\n');
fprintf(fileIDp1,'run $n upto		#now run and let particles settle\n');
fprintf(fileIDp1,'fix myorig all store/state 0 x y z	#store resting height (coordZ)\n');
fprintf(fileIDp1,'#output a file for debugging.\n');
fprintf(fileIDp1,'dump		dmp all custom 1 post/dump*.bin id type x y z vx vy vz fx fy fz radius f_myorig[3]\n');
fprintf(fileIDp1,'run 1\n');
fprintf(fileIDp1,'write_restart restart.res\n');
fclose(fileIDp1);


%% output _Part.1 - intro stuff
fileIDp1 = fopen('part2','a');

fprintf(fileIDp1,'#This LIGGGHTS input file was autoGenerated on %s using the Matlab Program written by Peter Falkingham\n\n',datestr(datetime('now')));
fprintf(fileIDp1,'#----------SET UP FOLDER FOR OUTPUT----------#\n\nshell mkdir post\n\n#processors 1 1 1\n\n');
fprintf(fileIDp1,'#----------SYSTEM VARIABLES----------#\n\n#These are variables used later that get frequently altered\n\n');
fprintf(fileIDp1,'variable	r equal 0.01		# RADIUS of the particles (metres)\n');
fprintf(fileIDp1,'variable	E equal 5.0e6		# Young''s modulus of particles (MPa)\n');
fprintf(fileIDp1,'variable	f equal 0.9		    # Coefficient of Friction (?)\n');
fprintf(fileIDp1,'variable	c equal 75000		# Cohesion energy density (?)\n');
fprintf(fileIDp1,'variable	d equal 1200		# Density of particles (Kg/m3)\n');
fprintf(fileIDp1,'variable	v equal 0.4		    # Poisson ratio\n\n');
fprintf(fileIDp1,'variable	s equal 0.00001		# time step size (seconds)\n');
fprintf(fileIDp1,'variable	e equal 400		    # dump every\n\n\n');

fprintf(fileIDp1,'#----------SIMULATION SETTINGS----------#\n# These are required for the simulation\n\n');
fprintf(fileIDp1,'units 		si				# units are set to SI\n');
fprintf(fileIDp1,'atom_style 	granular		# standard for DEM - NOTE THAT SPHERE ALSO WORKS\n');
fprintf(fileIDp1,'boundary	m m m			    # Boundary s = non-periodic, shrinkwrapped\n');
fprintf(fileIDp1,'newton 		off				# Turns newtons 3rd law on/off: on = slight computational savings, but 2x more communication\n');
fprintf(fileIDp1,'communicate	single vel yes	# standard processor communication settings\n\n');
fprintf(fileIDp1,'neighbor	$r bin			    #nearest neighbor course contact detection\n');
fprintf(fileIDp1,'neigh_modify	every 1 delay 0 check yes	#rebuild list every step, if checked.\n\n\n');

fprintf(fileIDp1,'#----------READ THE RESTART FILE----------#\n');
fprintf(fileIDp1,'read_restart restart.res			# Reads the restart file\n\n\n');

fprintf(fileIDp1,'#----------MATERIAL PROPERTIES----------#\n');
fprintf(fileIDp1,'# These determine the behaviour of the simulation\n');

fprintf(fileIDp1,'fix	m1 all property/global youngsModulus peratomtype $E\n');
fprintf(fileIDp1,'fix	m2 all property/global poissonsRatio peratomtype $v\n');
fprintf(fileIDp1,'fix	m3 all property/global coefficientRestitution peratomtypepair 1 0.9\n');
fprintf(fileIDp1,'fix 	m4 all property/global coefficientFriction peratomtypepair 1 $f\n');	
fprintf(fileIDp1,'fix 	m5 all property/global characteristicVelocity scalar 1.0\n');  		
fprintf(fileIDp1,'fix 	m6 all property/global cohesionEnergyDensity peratomtypepair 1 $c\n\n\n');

fprintf(fileIDp1,'#----------FORCE MODEL----------#\n');
fprintf(fileIDp1,'# Takes the given material properties and applies them to all particles\n\n');
fprintf(fileIDp1,'pair_style	gran model hertz tangential history cohesion sjkr #:pre # hertzian with cohesion\n');
fprintf(fileIDp1,'pair_coeff	* * 			# applies this interaction to all particle pairs\n\n');

fprintf(fileIDp1,'#----------ADDITIONAL SETTINGS----------#\n\n');
fprintf(fileIDp1,'fix 		nsph all nve/sphere			# Initialises time integration\n');
fprintf(fileIDp1,'fix         gravi all gravity 9.81 vector 0.0 0.0 -1.0	#Gravity\n');
fprintf(fileIDp1,'timestep	$s\n\n\n');


fprintf(fileIDp1,'#----------WALLS----------#\n');
fprintf(fileIDp1,'#Sets up the physical walls\n\n');
fprintf(fileIDp1,'fix 	boxwalls_x1 all wall/gran model hertz tangential history  primitive type 1 xplane %d #:pre\n',xmax);
fprintf(fileIDp1,'fix 	boxwalls_y1 all wall/gran model hertz tangential history  primitive type 1 yplane %d #:pre\n',ymax);
fprintf(fileIDp1,'fix 	boxwalls_z1 all wall/gran model hertz tangential history  primitive type 1 zplane %d #:pre\n',zmin);
fprintf(fileIDp1,'fix 	boxwalls_x2 all wall/gran model hertz tangential history  primitive type 1 xplane %d  #:pre\n',xmin);
fprintf(fileIDp1,'fix 	boxwalls_y2 all wall/gran model hertz tangential history  primitive type 1 yplane %d  #:pre\n\n\n',ymin);

fprintf(fileIDp1,'#----------Cut the atoms above the poppyseed level--------------#\n\n');
fprintf(fileIDp1,'region   	cut block %d %d %d %d %d %d units box\n', xmin, xmax, ymin, ymax, zmax, 1);
fprintf(fileIDp1,'delete_atoms 	region cut\n\n');

fprintf(fileIDp1,'#---------RECORD INITIAL HEIGHT-------#\n\n');
fprintf(fileIDp1,'fix 		myorig all store/state 0 x y z	#store resting height (coordZ)\n\n');


fprintf(fileIDp1,'#---------INSERT DATA FROM INITIALIZATION FILE HERE------------#\n\n');

fclose(fileIDp1);

%% output _Part.2 - the initial setupdata
fileIDo2 = fopen('part2', 'a');

for j=1:handles.nBones
    normalisation = 1/sqrt(((initialRotationData(2,j)^2+ initialRotationData(3,j)^2+ initialRotationData(4,j)^2)));
    fprintf(fileIDo2, 'fix    %s all mesh/surface file %s.stl type 1', handles.bonesTXT{j,1}, handles.bonesTXT{j,1});
    if(initialRotationData(1,j) ~= 0 && initialRotationData(2,j)+initialRotationData(1,j)+initialRotationData(3,j) ~= 0) %%DOUBLE CHECK THIS, * SHOULD BE + I THINK.
        fprintf(fileIDo2, ' rotate axis %e %e %e angle %f', initialRotationData(2,j)*normalisation, initialRotationData(3,j)*normalisation, initialRotationData(4,j)*normalisation, initialRotationData(1,j)*(180/pi)); %% ANGLE NEEDS TO BE DEGREES
        
    end
    fprintf(fileIDo2, ' move %f %f %f\n', initialTranslation(1,j), initialTranslation(2,j), initialTranslation(3,j));
end

fprintf(fileIDo2, '\n\nfix cont1 all wall/gran model hertz tangential history mesh n_meshes %d meshes ', handles.nBones);
for j=1:handles.nBones
	fprintf(fileIDo2, '%s ',  handles.bonesTXT{j,1});
end

%% output _Part.3 - middle bit
fileIDo3 = fopen('part2','a');
fprintf(fileIDo3, '#----------COMPUTATION----------#\n');
fprintf(fileIDo3, '# sets up what will be computed\n\n');

fprintf(fileIDo3, 'compute		rke all erotate/sphere\n');
fprintf(fileIDo3, 'compute 	mudisp all displace/atom\n');
fprintf(fileIDo3, 'compute		fc all wall/gran/local id pos force\n');

fprintf(fileIDo3, '#----------DUMP FILES----------#\n\n');

fprintf(fileIDo3, 'dump		dmp all custom $e post/dump*.bin id type x y z vx vy vz fx fy fz radius f_myorig[3]\n');

fprintf(fileIDo3, 'dump 	dumpstl1 all mesh/vtk $e post/footcomp2_*.vtk id ');
for k=1:handles.nBones
    fprintf(fileIDo2, '%s ',  handles.bonesTXT{k,1});
end
fprintf(fileIDo3, '\n');
fprintf(fileIDo3, 'dump 		forcedump all local $e post/dump*.forcedata  c_fc[1] c_fc[2] c_fc[3] c_fc[4] c_fc[5] c_fc[6] c_fc[7] c_fc[8] c_fc[9] c_fc[10] c_fc[11] c_fc[12]\n\n');

fprintf(fileIDo3, 'run 4000 #Lets particles settle before motion\n\n');

fprintf(fileIDo3, '###############################################################\n\n');
fprintf(fileIDo3, '##motion\n\n');
fprintf(fileIDo3, '###############################################################\n\n');

fclose(fileIDo3);



%% output _part.4 (formerly transrotdata)
fileIDoutput = fopen('part2', 'a');

for i=2:handles.nFrames
    for j = 1:handles.nBones
        fprintf(fileIDoutput, 'fix move%s%i all move/mesh mesh %s linear %e %e %e\n', handles.bonesTXT{j,1}, i, handles.bonesTXT{j,1}, translations(i,1,j)*framerate, translations(i,2,j)*framerate, translations(i,3,j)*framerate);
    end
    
    for j=1:handles.nBones
        if(outputRotationData(i,1,j) ~= 0 )  %%DOUBLE CHECK THIS, * SHOULD BE + I THINK.
            fprintf(fileIDoutput, 'fix rotate%s%i all move/mesh mesh %s rotate origin %e %e %e axis %e %e %e period %f\n', handles.bonesTXT{j,1}, i, handles.bonesTXT{j,1}, currentLocation(i-1,1,j), currentLocation(i-1,2,j), currentLocation(i-1,3,j), outputRotationData(i,2,j), outputRotationData(i,3,j), outputRotationData(i,4,j), ((2*pi/(outputRotationData(i,1,j)))*(1/framerate)));
        else
            %may need dummy line
        end
    end
        fprintf(fileIDoutput,'run %i\n', frame_ts);
    for j = 1:handles.nBones


        if(outputRotationData(i,1,j) ~= 0 ) %%DOUBLE CHECK THIS, * SHOULD BE + I THINK.
            fprintf(fileIDoutput, 'unfix rotate%s%i\n', handles.bonesTXT{j,1}, i);
        end

    end
    for j = 1:handles.nBones
        fprintf(fileIDoutput, 'unfix move%s%i\n', handles.bonesTXT{j,1}, i);
    end

end


fclose(fileIDoutput);
fclose(fileIDo2);




%% --- This generates stl files for each bone based on length and radius
%MAY OR MAY NOT WORK - CHECK!
function stl_out(handles)
% handles    empty - handles not created until after all CreateFcns called

noBones = handles.nBones;
for j=1:noBones
    
    Length = handles.bonesTXT{j,5}/100; %(length is in cm)
    %Length = length(j);

    radius = handles.bonesTXT{j,4}/1000;  %radius is in mm
    %radius = length(j)/3;
    
    %create 2 spheres for the end-caps
    [X,Y,Z] = sphere(20);

    X = X*radius;
    Y = Y*radius;
    Z = Z*radius;

    X2 = X;
    Y2 = Y;   
    Z2 = Z + Length; % (may be to X or Z instead)
 
    %next 6 lines remove half the spheres.
    X2 = X2(11:end,:);
    Y2 = Y2(11:end,:);
    Z2 = Z2(11:end,:);

    X = X(1:10,:);
    Y = Y(1:10,:);
    Z = Z(1:10,:);

    %make spheres into a single array
    A = cat(1,X,X2);
    B = cat(1,Y,Y2);
    C = cat(1,Z,Z2);

    x = A(:);
    y = B(:);
    z = C(:);
     
    coords(:,1) = z;
    coords(:,2) = y;
    coords(:,3) = x;

    %convexhull that array
    k = convhull(coords);

    %write the stl  
    stlwrite(strcat(handles.bonesTXT{j,1},'.stl'),k,coords(:,:), 'mode', 'ascii');

end   



% Everything that follows is taken from STLWRITE
% File available from here: http://www.mathworks.com/matlabcentral/fileexchange/20922-stlwrite-filename--varargin-
function stlwrite(filename, varargin)
%STLWRITE   Write STL file from patch or surface data.
%
%   STLWRITE(FILE, FV) writes a stereolithography (STL) file to FILE for a
%   triangulated patch defined by FV (a structure with fields 'vertices'
%   and 'faces').
%
%   STLWRITE(FILE, FACES, VERTICES) takes faces and vertices separately,
%   rather than in an FV struct
%
%   STLWRITE(FILE, X, Y, Z) creates an STL file from surface data in X, Y,
%   and Z. STLWRITE triangulates this gridded data into a triangulated
%   surface using triangulation options specified below. X, Y and Z can be
%   two-dimensional arrays with the same size. If X and Y are vectors with
%   length equal to SIZE(Z,2) and SIZE(Z,1), respectively, they are passed
%   through MESHGRID to create gridded data. If X or Y are scalar values,
%   they are used to specify the X and Y spacing between grid points.
%
%   STLWRITE(...,'PropertyName',VALUE,'PropertyName',VALUE,...) writes an
%   STL file using the following property values:
%
%   MODE          - File is written using 'binary' (default) or 'ascii'.
%
%   TITLE         - Header text (max 80 chars) written to the STL file.
%
%   TRIANGULATION - When used with gridded data, TRIANGULATION is either:
%                       'delaunay'  - (default) Delaunay triangulation of X, Y
%                       'f'         - Forward slash division of grid quads
%                       'b'         - Back slash division of quadrilaterals
%                       'x'         - Cross division of quadrilaterals
%                   Note that 'f', 'b', or 't' triangulations now use an
%                   inbuilt version of FEX entry 28327, "mesh2tri".
%
%   FACECOLOR     - Single colour (1-by-3) or one-colour-per-face (N-by-3) 
%                   vector of RGB colours, for face/vertex input. RGB range
%                   is 5 bits (0:31), stored in VisCAM/SolidView format
%                   (http://en.wikipedia.org/wiki/STL_(file_format)#Color_in_binary_STL)
%
%   Example 1:
%     % Write binary STL from face/vertex data
%     tmpvol = false(20,20,20);      % Empty voxel volume
%     tmpvol(8:12,8:12,5:15) = 1;    % Turn some voxels on
%     fv = isosurface(~tmpvol, 0.5); % Make patch w. faces "out"
%     stlwrite('test.stl',fv)        % Save to binary .stl
%
%   Example 2:
%     % Write ascii STL from gridded data
%     [X,Y] = deal(1:40);             % Create grid reference
%     Z = peaks(40);                  % Create grid height
%     stlwrite('test.stl',X,Y,Z,'mode','ascii')
%
%   Example 3:
%     % Write binary STL with coloured faces
%     cVals = fv.vertices(fv.faces(:,1),3); % Colour by Z height.
%     cLims = [min(cVals) max(cVals)];      % Transform height values
%     nCols = 255;  cMap = jet(nCols);      % onto an 8-bit colour map
%     fColsDbl = interp1(linspace(cLims(1),cLims(2),nCols),cMap,cVals); 
%     fCols8bit = fColsDbl*255; % Pass cols in 8bit (0-255) RGB triplets
%     stlwrite('testCol.stl',fv,'FaceColor',fCols8bit) 

%   Original idea adapted from surf2stl by Bill McDonald. Huge speed
%   improvements implemented by Oliver Woodford. Non-Delaunay triangulation
%   of quadrilateral surface courtesy of Kevin Moerman. FaceColor
%   implementation by Grant Lohsen.
%
%   Author: Sven Holcombe, 11-24-11


% Check valid filename path
path = fileparts(filename);
if ~isempty(path) && ~exist(path,'dir')
    error('Directory "%s" does not exist.',path);
end

% Get faces, vertices, and user-defined options for writing
[faces, vertices, options] = parseInputs(varargin{:});
asciiMode = strcmp( options.mode ,'ascii');

% Create the facets
facets = single(vertices');
facets = reshape(facets(:,faces'), 3, 3, []);

% Compute their normals
V1 = squeeze(facets(:,2,:) - facets(:,1,:));
V2 = squeeze(facets(:,3,:) - facets(:,1,:));
normals = V1([2 3 1],:) .* V2([3 1 2],:) - V2([2 3 1],:) .* V1([3 1 2],:);
clear V1 V2
normals = bsxfun(@times, normals, 1 ./ sqrt(sum(normals .* normals, 1)));
facets = cat(2, reshape(normals, 3, 1, []), facets);
clear normals

% Open the file for writing
permissions = {'w','wb+'};
fid = fopen(filename, permissions{asciiMode+1});
if (fid == -1)
    error('stlwrite:cannotWriteFile', 'Unable to write to %s', filename);
end

% Write the file contents
if asciiMode
    % Write HEADER
    fprintf(fid,'solid %s\r\n',options.title);
    % Write DATA
    fprintf(fid,[...
        'facet normal %.7E %.7E %.7E\r\n' ...
        'outer loop\r\n' ...
        'vertex %.7E %.7E %.7E\r\n' ...
        'vertex %.7E %.7E %.7E\r\n' ...
        'vertex %.7E %.7E %.7E\r\n' ...
        'endloop\r\n' ...
        'endfacet\r\n'], facets);
    % Write FOOTER
    fprintf(fid,'endsolid %s\r\n',options.title);
    
else % BINARY
    % Write HEADER
    fprintf(fid, '%-80s', options.title);             % Title
    fwrite(fid, size(facets, 3), 'uint32');           % Number of facets
    % Write DATA
    % Add one uint16(0) to the end of each facet using a typecasting trick
    facets = reshape(typecast(facets(:), 'uint16'), 12*2, []);
    % Set the last bit to 0 (default) or supplied RGB
    facets(end+1,:) = options.facecolor;
    fwrite(fid, facets, 'uint16');
end

% Close the file
fclose(fid);
fprintf('Wrote %d facets\n',size(facets, 2));


% Input handling subfunctions
function [faces, vertices, options] = parseInputs(varargin)
% Determine input type
if isstruct(varargin{1}) % stlwrite('file', FVstruct, ...)
    if ~all(isfield(varargin{1},{'vertices','faces'}))
        error( 'Variable p must be a faces/vertices structure' );
    end
    faces = varargin{1}.faces;
    vertices = varargin{1}.vertices;
    options = parseOptions(varargin{2:end});
    
elseif isnumeric(varargin{1})
    firstNumInput = cellfun(@isnumeric,varargin);
    firstNumInput(find(~firstNumInput,1):end) = 0; % Only consider numerical input PRIOR to the first non-numeric
    numericInputCnt = nnz(firstNumInput);
    
    options = parseOptions(varargin{numericInputCnt+1:end});
    switch numericInputCnt
        case 3 % stlwrite('file', X, Y, Z, ...)
            % Extract the matrix Z
            Z = varargin{3};
            
            % Convert scalar XY to vectors
            ZsizeXY = fliplr(size(Z));
            for i = 1:2
                if isscalar(varargin{i})
                    varargin{i} = (0:ZsizeXY(i)-1) * varargin{i};
                end                    
            end
            
            % Extract X and Y
            if isequal(size(Z), size(varargin{1}), size(varargin{2}))
                % X,Y,Z were all provided as matrices
                [X,Y] = varargin{1:2};
            elseif numel(varargin{1})==ZsizeXY(1) && numel(varargin{2})==ZsizeXY(2)
                % Convert vector XY to meshgrid
                [X,Y] = meshgrid(varargin{1}, varargin{2});
            else
                error('stlwrite:badinput', 'Unable to resolve X and Y variables');
            end
            
            % Convert to faces/vertices
            if strcmp(options.triangulation,'delaunay')
                faces = delaunay(X,Y);
                vertices = [X(:) Y(:) Z(:)];
            else
                if ~exist('mesh2tri','file')
                    error('stlwrite:missing', '"mesh2tri" is required to convert X,Y,Z matrices to STL. It can be downloaded from:\n%s\n',...
                        'http://www.mathworks.com/matlabcentral/fileexchange/28327')
                end
                [faces, vertices] = mesh2tri(X, Y, Z, options.triangulation);
            end
            
        case 2 % stlwrite('file', FACES, VERTICES, ...)
            faces = varargin{1};
            vertices = varargin{2};
            
        otherwise
            error('stlwrite:badinput', 'Unable to resolve input types.');
    end
end

if ~isempty(options.facecolor) % Handle colour preparation
    facecolor = uint16(options.facecolor);
    %Set the Valid Color bit (bit 15)
    c0 = bitshift(ones(size(faces,1),1,'uint16'),15);
    %Red color (10:15), Blue color (5:9), Green color (0:4)
    c0 = bitor(bitshift(bitand(2^6-1, facecolor(:,1)),10),c0);
    c0 = bitor(bitshift(bitand(2^11-1, facecolor(:,2)),5),c0);
    c0 = bitor(bitand(2^6-1, facecolor(:,3)),c0);
    options.facecolor = c0;    
else
    options.facecolor = 0;
end

function options = parseOptions(varargin)
IP = inputParser;
IP.addParamValue('mode', 'binary', @ischar)
IP.addParamValue('title', sprintf('Created by stlwrite.m %s',datestr(now)), @ischar);
IP.addParamValue('triangulation', 'delaunay', @ischar);
IP.addParamValue('facecolor',[], @isnumeric)
IP.addParamValue('facecolour',[], @isnumeric)
IP.parse(varargin{:});
options = IP.Results;
if ~isempty(options.facecolour)
    options.facecolor = options.facecolour;
end

function [F,V]=mesh2tri(X,Y,Z,tri_type)
% function [F,V]=mesh2tri(X,Y,Z,tri_type)
% 
% Available from http://www.mathworks.com/matlabcentral/fileexchange/28327
% Included here for convenience. Many thanks to Kevin Mattheus Moerman
% kevinmoerman@hotmail.com
% 15/07/2010
%------------------------------------------------------------------------

[J,I]=meshgrid(1:1:size(X,2)-1,1:1:size(X,1)-1);

switch tri_type
    case 'f'%Forward slash
        TRI_I=[I(:),I(:)+1,I(:)+1;  I(:),I(:),I(:)+1];
        TRI_J=[J(:),J(:)+1,J(:);   J(:),J(:)+1,J(:)+1];
        F = sub2ind(size(X),TRI_I,TRI_J);
    case 'b'%Back slash
        TRI_I=[I(:),I(:)+1,I(:);  I(:)+1,I(:)+1,I(:)];
        TRI_J=[J(:)+1,J(:),J(:);   J(:)+1,J(:),J(:)+1];
        F = sub2ind(size(X),TRI_I,TRI_J);
    case 'x'%Cross
        TRI_I=[I(:)+1,I(:);  I(:)+1,I(:)+1;  I(:),I(:)+1;    I(:),I(:)];
        TRI_J=[J(:),J(:);    J(:)+1,J(:);    J(:)+1,J(:)+1;  J(:),J(:)+1];
        IND=((numel(X)+1):numel(X)+prod(size(X)-1))';
        F = sub2ind(size(X),TRI_I,TRI_J);
        F(:,3)=repmat(IND,[4,1]);
        Fe_I=[I(:),I(:)+1,I(:)+1,I(:)]; Fe_J=[J(:),J(:),J(:)+1,J(:)+1];
        Fe = sub2ind(size(X),Fe_I,Fe_J);
        Xe=mean(X(Fe),2); Ye=mean(Y(Fe),2);  Ze=mean(Z(Fe),2);
        X=[X(:);Xe(:)]; Y=[Y(:);Ye(:)]; Z=[Z(:);Ze(:)];
end

V=[X(:),Y(:),Z(:)];


% --- Executes during object creation, after setting all properties.
function axes8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes8
axis equal;
xlabel('-X-');
ylabel('-Y-');
zlabel('-Z-');
