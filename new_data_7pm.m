function varargout = new_data_7pm(varargin)
% NEW_DATA_7PM MATLAB code for new_data_7pm.fig
%      NEW_DATA_7PM, by itself, creates a new NEW_DATA_7PM or raises the existing
%      singleton*.
%
%      H = NEW_DATA_7PM returns the handle to a new NEW_DATA_7PM or the handle to
%      the existing singleton*.
%
%      NEW_DATA_7PM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEW_DATA_7PM.M with the given input arguments.
%
%      NEW_DATA_7PM('Property','Value',...) creates a new NEW_DATA_7PM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before new_data_7pm_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to new_data_7pm_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help new_data_7pm

% Last Modified by GUIDE v2.5 17-Oct-2021 17:03:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @new_data_7pm_OpeningFcn, ...
                   'gui_OutputFcn',  @new_data_7pm_OutputFcn, ...
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


% --- Executes just before new_data_7pm is made visible.
function new_data_7pm_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to new_data_7pm (see VARARGIN)

% Choose default command line output for new_data_7pm
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes new_data_7pm wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = new_data_7pm_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Type_Callback(hObject, eventdata, handles)
% hObject    handle to Type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Type as text
%        str2double(get(hObject,'String')) returns contents of Type as a double
global Type
Type = str2double(get(hObject, 'String'));
if isnan(Type)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new value
handles.metricdata.Type = Type;
guidata(hObject,handles)
disp(handles.metricdata.Type)
Typp = 1;
global Typp

% --- Executes during object creation, after setting all properties.
function Type_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Type (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Brand_Callback(hObject, eventdata, handles)
% hObject    handle to Brand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Brand as text
%        str2double(get(hObject,'String')) returns contents of Brand as a double
global Brand
Brand = string(get(hObject, 'String'));
% % % if isnan(Brand)
% % %     set(hObject, 'String', 0);
% % %     errordlg('Input must be a number','Error');
% % % end

% Save the new value
handles.metricdata.Brand = Brand;
guidata(hObject,handles)
disp(handles.metricdata.Brand)

% --- Executes during object creation, after setting all properties.
function Brand_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Brand (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Power_Callback(hObject, eventdata, handles)
% hObject    handle to Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Power as text
%        str2double(get(hObject,'String')) returns contents of Power as a double
global Power
Power = str2double(get(hObject, 'String'));
if isnan(Power)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new value
handles.metricdata.Power = Power;
guidata(hObject,handles)
disp(handles.metricdata.Power)

% --- Executes during object creation, after setting all properties.
function Power_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Power (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Weight_Callback(hObject, eventdata, handles)
% hObject    handle to Weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Weight as text
%        str2double(get(hObject,'String')) returns contents of Weight as a double
global Weight
Weight = str2double(get(hObject, 'String'));
if isnan(Weight)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new value
handles.metricdata.Weight = Weight;
guidata(hObject,handles)
disp(handles.metricdata.Weight)


% --- Executes during object creation, after setting all properties.
function Weight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function No_Doors_Callback(hObject, eventdata, handles)
% hObject    handle to No_Doors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of No_Doors as text
%        str2double(get(hObject,'String')) returns contents of No_Doors as a double
global No_Doors
No_Doors = str2double(get(hObject, 'String'));
if isnan(No_Doors)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new value
handles.metricdata.No_Doors = No_Doors;
guidata(hObject,handles)
disp(handles.metricdata.No_Doors)

% --- Executes during object creation, after setting all properties.
function No_Doors_CreateFcn(hObject, eventdata, handles)
% hObject    handle to No_Doors (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CC_Callback(hObject, eventdata, handles)
% hObject    handle to CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CC as text
%        str2double(get(hObject,'String')) returns contents of CC as a double
global CC
CC = str2double(get(hObject, 'String'));
if isnan(CC)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new value
handles.metricdata.CC = CC;
guidata(hObject,handles)
disp(handles.metricdata.CC)

% --- Executes during object creation, after setting all properties.
function CC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Add.
function Add_Callback(hObject, eventdata, handles)
% hObject    handle to Add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% % % global car_type car_brand car_power car_weight car_no_doors car_cc
% % % global truck_type truck_brand truck_power truck_weight truck_truck_class
% % % global mcycle_type mcycle_brand mcycle_power mcycle_weight mcycle_cucapacity
global CC No_Doors Power Weight Brand Type Typp
listBoxString = get(handles.listbox1,'String');
ListBoxValue = get(handles.listbox1,'String');
dd = string(ListBoxValue)
save dd
dd(1)

contents_2 = get(handles.popupmenu2,'String'); 
popupmenu1value_2 = contents_2{get(handles.popupmenu2,'Value')};
popupmenu1value_2


contents_4 = get(handles.popupmenu4,'String'); 
popupmenu1value_4 = contents_4{get(handles.popupmenu4,'Value')};
popupmenu1value_4
string(popupmenu1value_4)
whos
if Typp==1
    Typp=Typp+1
end
if dd(1) == string(popupmenu1value_4) %%"Cars"
    io = 1;
    car_cc=0;
    car_type = string(popupmenu1value_4);
    car_brand = Brand;
    car_power = Power;
    car_weight=Weight;
    car_no_doors=No_Doors;
    car_cc=0;
    cc = Cars(car_type,car_brand,car_power,car_weight,car_no_doors,car_cc)
    car_data_nn = [ car_weight car_power];
    car_data_nn1 = [car_brand car_weight car_power car_no_doors car_cc];
    
    gg= cellstr(car_data_nn1)
    A= readmatrix('Car_Data.xlsx','Sheet',1);
    A = [A ; string(car_data_nn1)];  
    writematrix(A,'Car_Data.xlsx','Sheet',1)
    assignin('base','car_data',car_data_nn);
    assignin('base','car_data_new',car_data_nn1);

  disp('Working1');
  % % plott
%   T=readmatrix('Vehicle_Data.xlsx','sheet',1)
set(handles.uitable1,'Data',cellstr(A),'ColumnName',{'Brand','Weight','Power','No_Doors','CC'});
 

elseif dd(2) ==  string(popupmenu1value_4)%% "Motorcycles"
  disp('Working2');
      mcycle_type = string(popupmenu1value_4);
    mcycle_brand = Brand;
    mcycle_power = Power;
    mcycle_weight=Weight;
    mcycle_no_doors=0;
    mcycle_cucapacity=CC;
    
    mm = Motorcycle(mcycle_type,mcycle_brand,mcycle_power,mcycle_weight,mcycle_no_doors,mcycle_cucapacity)
    mcycle_data_nn = [ mcycle_weight mcycle_power];
    mcycle_data_nn1 = [mcycle_brand mcycle_weight mcycle_power mcycle_no_doors mcycle_cucapacity];
    
    gg1= cellstr(mcycle_data_nn1)
    A1= readmatrix('Mcycle_Data.xlsx','Sheet',1);
    A1 = [A1 ; string(mcycle_data_nn1)];  
    writematrix(A1,'Mcycle_Data.xlsx','Sheet',1)
    assignin('base','car_data',mcycle_data_nn);
    assignin('base','car_data_new',mcycle_data_nn1);

  disp('Working2');
  % % plott
%   T=readmatrix('Vehicle_Data.xlsx','sheet',2)
  set(handles.uitable1,'Data',cellstr(A1),'ColumnName',{'Brand','Weight','Power','No_Doors','CC'});
 

  
elseif dd(3) ==  string(popupmenu1value_4) %% "Trucks"
  disp('Working3');
   truck_type = string(popupmenu1value_4);
    truck_brand = Brand;
    truck_power = Power;
    truck_weight=Weight;
    truck_no_doors=0;
    truck_cc_level=CC;
    truck_truck_class=string(popupmenu1value_2);
   tt = Trucks(truck_type,truck_brand,truck_power,truck_weight,truck_no_doors,truck_truck_class,truck_cc_level)

   truck_data_nn = [ truck_weight truck_power];
   truck_data_nn1 = [truck_brand truck_truck_class truck_weight truck_power  truck_no_doors truck_cc_level];
    
    gg2= cellstr(truck_data_nn1)
    A2= readmatrix('Truck_Data.xlsx','Sheet',1);
    A2 = [A2 ; string(truck_data_nn1)];  
    writematrix(A2,'Truck_Data.xlsx','Sheet',1)
    assignin('base','truck_data',truck_data_nn);
    assignin('base','truck_data_new',truck_data_nn1);

  disp('Working2');
  % % plott
%   T=readmatrix('Vehicle_Data.xlsx','sheet',2)
  set(handles.uitable1,'Data',cellstr(A2),'ColumnName',{'Brand','VehicleType','Weight','Power','No_Doors','CC'});

  
  
end

choice1  = questdlg('Do you want to Display the Charts ?', ...
                'User Menu',...
                'Yep', 'Nope','Nope');
                choice1
  switch choice1
  case 'Yep'     
      T1=readmatrix('Car_Data.xlsx','sheet',1)
 axes(handles.axes1),
    plot(T1(:,2) ,T1(:,3) , 'bx',...
        'MarkerSize',15, 'LineWidth',3) 
    xlabel('Weight (Kg)')
    ylabel('Power (kW)')
    legend('Cars')
    hold on 
    T2=readmatrix('Mcycle_Data.xlsx','sheet',1)
    axes(handles.axes1),
    plot(T2(:,2) ,T2(:,3) , 'rx',...
        'MarkerSize',12, 'LineWidth',2.5) 
    xlabel('Weight (Kg)')
    ylabel('Power (kW)')
    legend('Cars','Motorcycles')
    hold on
    T3=readmatrix('Truck_Data.xlsx','sheet',1)
    axes(handles.axes1),
    plot(T3(:,3) ,T3(:,4) , 'yx',...
        'MarkerSize',10, 'LineWidth',2.3) 
    xlabel('Weight (Kg)')
    ylabel('Power (kW)')
    legend('Cars','Motorcycles','Trucks')
    hold off
    %% 
    axes(handles.axes2)
    T1_avg = mean(T1(:,2));
    T2_avg = mean(T2(:,2));
    T3_avg =mean( T3(:,3));
    T_avg = [ T1_avg ;T2_avg; T3_avg]
    Xcat1 = categorical({'Cars'});
    Xcat2 = categorical({'Motorcycles'});
    Xcat3 = categorical({'Trucks'});
     Xcat = categorical({'Cars','Motorcycles','Trucks'});
 bar(Xcat1,T1_avg,'FaceColor','blue')
 legend('Cars')
 hold on
bar(Xcat2,T2_avg,'FaceColor','red')
legend('Cars','Motorcycles')
  hold on
bar(Xcat3,T3_avg,'FaceColor','yellow')
    legend('Cars','Motorcycles','Trucks')
hold off




  case 'Nope'
      msgbox("Try Again")
  end
    
    
% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu4.
function popupmenu4_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu4


% --- Executes during object creation, after setting all properties.
function popupmenu4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function uitable1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% % % @(hObject,eventdata)new_data_7pm('uitable1_CreateFcn',hObject,eventdata,guidata(hObject))
