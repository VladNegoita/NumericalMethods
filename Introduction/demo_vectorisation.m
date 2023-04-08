clc; close all; clear;

% we will compare vectorised and normal operations by measuring their execution 
% times:

n = 5e5;
u = rand(n, 1);
v = rand(n, 1);

% ~~~~~~~~~~~~~~~~~~~~~~~~ Vectorised ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

tic;
ans1 = v' * u;
time1 = toc();


% ~~~~~~~~~~~~~~~~~~~~~~~~ Normal ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

tic;
ans2 = 0;
for i = 1:n
	ans2 += u(i) * v(i);
endfor
time2 = toc();

% ~~~~~~~~~~~~~~~~~~~~~~~~ Conclusions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

time1
time2

ans1
ans2
