function varargout = project_gui(varargin)
% PROJECT_GUI MATLAB code for project_gui.fig
%      PROJECT_GUI, by itself, creates a new PROJECT_GUI or raises the existing
%      singleton*.
%
%      H = PROJECT_GUI returns the handle to a new PROJECT_GUI or the handle to
%      the existing singleton*.
%
%      PROJECT_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT_GUI.M with the given input arguments.
%
%      PROJECT_GUI('Property','Value',...) creates a new PROJECT_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before project_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to project_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help project_gui

% Last Modified by GUIDE v2.5 23-Feb-2019 09:20:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @project_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @project_gui_OutputFcn, ...
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


% --- Executes just before project_gui is made visible.
function project_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to project_gui (see VARARGIN)

% Choose default command line output for project_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%pie initialization
pie(handles.sex_distribution_graph, 1);
pie(handles.language_distribution_graph, 1);

% file loading
dataset = load('datasetdef.mat');
assignin('base', 'dataset', dataset);

% UIWAIT makes project_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = project_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in list_educ_min.
function list_educ_min_Callback(hObject, eventdata, handles)
% hObject    handle to list_educ_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns list_educ_min contents as cell array
%        contents{get(hObject,'Value')} returns selected item from list_educ_min


% --- Executes during object creation, after setting all properties.
function list_educ_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to list_educ_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in list_educ_max.
function list_educ_max_Callback(hObject, eventdata, handles)
% hObject    handle to list_educ_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns list_educ_max contents as cell array
%        contents{get(hObject,'Value')} returns selected item from list_educ_max





% --- Executes during object creation, after setting all properties.
function list_educ_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to list_educ_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sex_listbox.
function sex_listbox_Callback(hObject, eventdata, handles)
% hObject    handle to sex_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns sex_listbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from sex_listbox



% --- Executes during object creation, after setting all properties.
function sex_listbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sex_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in language_listbox.
function language_listbox_Callback(hObject, eventdata, handles)
% hObject    handle to language_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns language_listbox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from language_listbox



% --- Executes during object creation, after setting all properties.
function language_listbox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to language_listbox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in list_age_min.
function list_age_min_Callback(hObject, eventdata, handles)
% hObject    handle to list_age_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns list_age_min contents as cell array
%        contents{get(hObject,'Value')} returns selected item from list_age_min




% --- Executes during object creation, after setting all properties.
function list_age_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to list_age_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in list_age_max.
function list_age_max_Callback(hObject, eventdata, handles)
% hObject    handle to list_age_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns list_age_max contents as cell array
%        contents{get(hObject,'Value')} returns selected item from list_age_max




% --- Executes during object creation, after setting all properties.
function list_age_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to list_age_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wages_mean_Callback(hObject, eventdata, handles)
% hObject    handle to wages_mean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wages_mean as text
%        str2double(get(hObject,'String')) returns contents of wages_mean as a double


% --- Executes during object creation, after setting all properties.
function wages_mean_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wages_mean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wages_min_Callback(hObject, eventdata, handles)
% hObject    handle to wages_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wages_min as text
%        str2double(get(hObject,'String')) returns contents of wages_min as a double


% --- Executes during object creation, after setting all properties.
function wages_min_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wages_min (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wages_max_Callback(hObject, eventdata, handles)
% hObject    handle to wages_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wages_max as text
%        str2double(get(hObject,'String')) returns contents of wages_max as a double


% --- Executes during object creation, after setting all properties.
function wages_max_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wages_max (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function num_rec_Callback(hObject, eventdata, handles)
% hObject    handle to num_rec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of num_rec as text
%        str2double(get(hObject,'String')) returns contents of num_rec as a double


% --- Executes during object creation, after setting all properties.
function num_rec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to num_rec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in btn_execute.
function btn_execute_Callback(hObject, eventdata, handles)
% hObject    handle to btn_execute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


%take age_min from GUI
age_min_index_selected = get(handles.list_age_min, 'Value');
age_min_list = str2double(get(handles.list_age_min, 'String'));
age_min_selected = age_min_list(age_min_index_selected);

%take age_max from GUI
age_max_index_selected = get(handles.list_age_max, 'Value');
age_max_list = str2double(get(handles.list_age_max, 'String'));
age_max_selected = age_max_list(age_max_index_selected);
   
%take educ_min from GUI
educ_min_index_selected = get(handles.list_educ_min, 'Value');
educ_min_list = str2double(get(handles.list_educ_min, 'String'));
educ_min_selected = educ_min_list(educ_min_index_selected);

%take educ_max from GUI
educ_max_index_selected = get(handles.list_educ_max, 'Value');
educ_max_list = str2double(get(handles.list_educ_max, 'String'));
educ_max_selected = educ_max_list(educ_max_index_selected);

%take sex from GUI
sex_index_selected = get(handles.sex_listbox, 'Value');
sex_list = get(handles.sex_listbox, 'String');
sex_selected = sex_list(sex_index_selected);

%take language from GUI
language_index_selected = get(handles.language_listbox, 'Value');
language_list = get(handles.language_listbox, 'String');
language_selected = language_list(language_index_selected);

% control of errors from user input
if(age_min_selected>age_max_selected || educ_min_selected>educ_max_selected)
    set(handles.label_error, 'string', 'Error in input, try again');
else    
    set(handles.label_error, 'string', ' ');
    
    %access workspace elements
    dataset = evalin('base', 'dataset');
    dataset = dataset.datasetdef;
    
    % if user leaves empty all fields
    % 'sex' field and 'language' field are set to 'All'
    if (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<30;
        rows_to_use = find(res);
        
    % if user set all the fields
    % and 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected;
        rows_to_use = find(res);     
        
    % if user set all the fields, 'language' is not 'All'
    % and 'sex' field is set to 'All'
     elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);       
   
    % if user set all the fields, 'sex' is not 'All'
    % and 'language' field is set to 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);  
      

        
        
    % if user leaves 'age' field and 'educ' fields empty 
    % 'sex' field and 'language' field are set to 'All'        
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<30;
        rows_to_use = find(res);

    % if user leaves 'age' field and 'educ' fields empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age' field and 'educ' fields empty 
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);
    
    % if user leaves 'age' field and 'educ' fields empty 
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);    
                 
        
        
    % if user leaves 'age' field empty 
    % 'sex' field and 'language' field are set to 'All'     
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected;
        rows_to_use = find(res);
     
    % if user leaves 'age' field empty     
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age' field empty      
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age' field empty   
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res); 
    
          
        
    % if user leaves 'educ' field empty 
    %sex e language sono 'All'        
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30;
        rows_to_use = find(res);
        
    % if user leaves 'educ' field empty     
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'educ' field empty         
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);

    % if user leaves 'educ' field empty    
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);    
    
       
    
    % if user leaves 'age_min' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected;
        rows_to_use = find(res);
     
    % if user leaves 'age_min' field empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age_min' field empty         
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);
    
    % if user leaves 'age_min' field empty          
    % 'sex' field and 'language' field are not 'All'
     elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);   
            
    
        
    % if user leaves 'age_max' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age_max' field empty    
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age_max' field empty        
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);
            
    % if user leaves 'age_max' field empty 
    % 'sex' field and 'language' field are not 'All'
     elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);   
    
    
    
    
    % if user leaves 'educ_min' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected;
        rows_to_use = find(res);
    
    % if user leaves 'educ_min' field empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);
      
    % if user leaves 'educ_min' field empty 
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);
      
    % if user leaves 'educ_min' field empty 
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);              
        
        
    
    % if user leaves 'educ_max' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30;
        rows_to_use = find(res);
    
    % if user leaves 'educ_max' field empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
      
    % if user leaves 'educ_max' field empty 
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);
         
    % if user leaves 'educ_max' field empty 
    % 'sex' field and 'language' field are not 'All'
     elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);     
       
    
    
    % if user leaves 'educ_min' field and 'age_min' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected;
        rows_to_use = find(res);
       
    % if user leaves 'educ_min' field and 'age_min' field empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);
          
    % if user leaves 'educ_min' field and 'age_min' field empty   
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);
       
    % if user leaves 'educ_min' field and 'age_min' field empty 
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);    
       
    

    % if user leaves 'educ_min' field and 'age_max' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected;
        rows_to_use = find(res);   
     
    % if user leaves 'educ_min' field and 'age_max' field empty      
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);
          
    % if user leaves 'educ_min' field and 'age_max' field empty   
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);
       
    % if user leaves 'educ_min' field and 'age_max' field empty 
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);  
    
    
    
    
    % if user leaves 'educ_max' field and 'age_min' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30;
        rows_to_use = find(res);    
        
    % if user leaves 'educ_max' field and 'age_min' field empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
     
    % if user leaves 'educ_max' field and 'age_min' field empty 
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);
        
    % if user leaves 'educ_max' field and 'age_min' field empty 
    % 'sex' field and 'language' field are not 'All'
     elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);   
    
     
    
    % if user leaves 'educ_max' field and 'age_max' field empty 
    % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30;
        rows_to_use = find(res);
        
    % if user leaves 'educ_max' field and 'age_max' field empty        
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'educ_max' field and 'age_max' field empty         
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);

    % if user leaves 'educ_max' field and 'age_max' field empty 
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);       
        
        
    
   % if user leaves 'educ_min' field, 'age_min' field and 'age_max' field empty 
   % 'sex' field and 'language' field are set to 'All'
   elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected;
        rows_to_use = find(res);
 
    % if user leaves 'educ_min' field, 'age_min' field and 'age_max' field empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'educ_min' field, 'age_min' field and 'age_max' field empty         
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected;
        rows_to_use = find(res);
      
    % if user leaves 'educ_min' field, 'age_min' field and 'age_max' field empty 
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected ~= 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>0 & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);
        
         
    
   % if user leaves 'educ_max' field, 'age_min' field and 'age_max' field empty 
   % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30;
        rows_to_use = find(res);

    % if user leaves 'educ_max' field, 'age_min' field and 'age_max' field empty 
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'educ_max' field, 'age_min' field and 'age_max' field empty         
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);
        
    % if user leaves 'educ_max' field, 'age_min' field and 'age_max' field empty        
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected == 1 && educ_min_index_selected ~= 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<100 & dataset.education>educ_min_selected & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);   
      
    
   
   % if user leaves 'age_min' field, 'educ_min' field and 'educ_max' field empty        
   % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30;
        rows_to_use = find(res);
        
    % if user leaves 'age_min' field, 'educ_min' field and 'educ_max' field empty        
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age_min' field, 'educ_min' field and 'educ_max' field empty                
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);
 
    % if user leaves 'age_min' field, 'educ_min' field and 'educ_max' field empty        
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected == 1 && age_max_index_selected ~= 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>15 & dataset.age<age_max_selected & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);    
    
     
    
   % if user leaves 'age_max' field, 'educ_min' field and 'educ_max' field empty            
   % 'sex' field and 'language' field are set to 'All'
    elseif (sex_index_selected == 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<30;
        rows_to_use = find(res);

    % if user leaves 'age_max' field, 'educ_min' field and 'educ_max' field empty            
    % 'sex' field is set to 'All' and 'language' field is not 'All'
    elseif (sex_index_selected == 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<30 & dataset.language == language_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age_max' field, 'educ_min' field and 'educ_max' field empty                 
    % 'language' field is set to 'All' and 'sex' field is not 'All'   
    elseif (sex_index_selected ~= 1 && language_index_selected == 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected;
        rows_to_use = find(res);
        
    % if user leaves 'age_max' field, 'educ_min' field and 'educ_max' field empty                      
    % 'sex' field and 'language' field are not 'All'
    elseif (sex_index_selected ~= 1 && language_index_selected ~= 1 && age_min_index_selected ~= 1 && age_max_index_selected == 1 && educ_min_index_selected == 1 && educ_max_index_selected == 1)
        res = dataset.age>age_min_selected & dataset.age<100 & dataset.education>0 & dataset.education<30 & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res); 
            
    else
        res = dataset.age>age_min_selected & dataset.age<age_max_selected & dataset.education>educ_min_selected & dataset.education<educ_max_selected & dataset.sex == sex_selected & dataset.language == language_selected;
        rows_to_use = find(res);

    end


    % creation of table to elaborate the selected rows
    vars = {'wages','education', 'age', 'sex', 'language'};
    T = dataset(rows_to_use, vars);

    % the requested values are stored in local variables
    wages_mean = nanmean(T.wages);
    wages_min = nanmin(T.wages);
    wages_max = nanmax(T.wages);
    number_of_records = height(T);

    if(number_of_records == 0)
        set(handles.label_error, 'string', 'Records not found, try with other filters');
    end
    
    % the GUI labels are set to show the requested values
    set(handles.wages_mean, 'string', wages_mean);
    set(handles.wages_min, 'string', wages_min);
    set(handles.wages_max, 'string', wages_max);
    set(handles.num_rec, 'string', number_of_records);

    % the GUI pies graphs are set to show the distribution of 'sex' and 'language'
    pie(handles.sex_distribution_graph,T.sex);
    pie(handles.language_distribution_graph,T.language);
     
end     




% --- Executes during object creation, after setting all properties.
function sex_distribution_graph_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sex_distribution_graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate sex_distribution_graph


% --- Executes during object creation, after setting all properties.
function language_distribution_graph_CreateFcn(hObject, eventdata, handles)
% hObject    handle to language_distribution_graph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate language_distribution_graph
