function [L, U] = Crout (A)
	% L = lower triangular matrix
	% U = upper triangular matrix, with ones on diag

	[n, ~] = size(A);

	L = zeros(n, n);
	U = eye(n);

	for p = 1:n
		s = L(p, 1:p-1) * U(1:p-1, p);
		L(p, p) = A(p, p) - s;

	for i = p+1:n
		ss = L(i, 1:p-1) * U(1:p-1, p);
		L(i, p) = A(i, p) - ss;
	  
		sss = L(p, 1:p-1) * U(1:p-1, i);
		U(p, i) = (A(p, i) - sss) / L(p, p);
		endfor
	endfor
endfunction
