clc; close all; clear;


% simple assignment
x = 5;
% ---> you don't need to specify the type at declaration


% vector declaration
v = [1, 2, 3, 2]
% without ';', the declared object is printed


% function call
[a, b] = demo_function(v);


disp(a);
disp(v);

% ---> we can have multiple parameters and multiple return values
% ---> the parameters are passed by value
