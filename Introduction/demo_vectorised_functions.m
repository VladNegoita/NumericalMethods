clc; close all; clear;

% we will compare vectorised and normal operations by measuring their execution 
% times:

n = 5e5;
v = rand(n, 1);

% ~~~~~~~~~~~~~~~~~~~~~~~~ Vectorised ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

tic;
ans1 = sin(v);
time1 = toc();


% ~~~~~~~~~~~~~~~~~~~~~~~~ Normal ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

tic;
ans2 = zeros(n, 1);
for i = 1:n
	ans2(i) = sin(v(i));
endfor
time2 = toc();

% ~~~~~~~~~~~~~~~~~~~~~~~~ Conclusions ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

time1
time2

norm(ans1 - ans2)
