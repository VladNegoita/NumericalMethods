clc; close all; clear;

% the language is interpreted ---> runtime checks

% ~~~~~~~~~~~~~~~~~~ IF ~~~~~~~~~~~~~~~~~~~~~~~~~

a = round(rand() * 100)

if mod(a, 2) == 0
	disp("even");
else
	disp("odd");
endif

disp("\n");

% ---> don't need brackets: you have endif
% ---> simple syntax, somewhat similar to C

% ~~~~~~~~~~~~~~~~~ FOR ~~~~~~~~~~~~~~~~~~~~~~~~~

for i=1:5
	disp(i);
endfor

disp("\n");

for j=6:-1:2
	disp(j);
endfor

disp("\n");

for k=[3, 5, 7]
	disp(k);
endfor

disp("\n");

% ~~~~~~~~~~~~~~~~~ WHILE ~~~~~~~~~~~~~~~~~~~~~~~~

i = 3;
while i >= 0
	i--;
	disp(i);
endwhile
