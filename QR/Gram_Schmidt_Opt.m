function [Q, R] = Gram_Schmidt_Opt(A)
	% A -> matrix (viewed as a list o column vectors)
	% Q -> ortogonalised vector list (and normalised)
	% R -> upper triangular matrix -> helps to reconstitute the A matrix:
	%	-> A = Q * R
	
	[n, m] = size(A);
	R = zeros(n, m);

	for i = 1:m
		R(i, i) = norm(A(:, i));
		A(:, i) = A(:, i) / R(i, i);

		for j = i+1:m
			R(j, i) = A(:, j)' * A(:, i);
			A(:, j) -= A(:, i) * R(j, i);
		endfor
	endfor
	
	Q = A
	
endfunction
