function L = Cholesky (A)
	% A is considered to be both symetric and positive definite
	% L = lower triangular matrix

	[n, ~] = size(A);

	L = zeros(n, n);

	for p = 1:n
		s = sum(L(p, 1:p-1) .^ 2);
		L(p, p) = sqrt(A(p, p) - s);

	for i = p+1:n
		ss = L(p, 1:p-1) * (L(i, 1:p-1)');
		L(i, p) = (A(i, p) - ss) / L(p, p);
		endfor
	endfor
endfunction
