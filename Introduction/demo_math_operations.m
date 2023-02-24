clc; close all; clear;

m = 5
n = 2
p = 3


% in octave, we work with matrices and vectors a lot:

v = [1, 2, 3]

% ---> row vector

w = [4; 5; 6]

% ---> column vector

mat = [7, 8, 9; 10, 11, 12]

% ---> got it?


A = zeros(n, m)

% ---> zero full matrix


I = eye(n)

% ---> identity matrix

B = ones(m, n)

% ---> one full matrix


A = magic(p)


D = diag(v)

% diagonal matrix with the specified elements on its main diagonal


subA = A([1, 3], [2, 3])


% ---> submatrix using the specified rows and columns


R = rand(p, p);


% ---> matrix of the specified shape in [0, 1]

% operations such as:
%	* ---> product of 2 matrices
%	+ ---> sum of 2 matrices

S = A + A


P = A * D

% --> matrix product


% Hadamart operators:

X = [1, 2; 3, 4]
Y = [0, 1; -1, 0;]

Z = X * Y

ZZ = X .* Y

% git it?