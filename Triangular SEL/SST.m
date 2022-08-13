function x = SST (A, b)
	% A is considered upper triangular
	% x is the solution of the equation Ax = b

	[n, ~] = size(A);
	x = zeros(n, 1);

	for i = n:-1:1
		x(i) = (b(i) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
	endfor
endfunction
