function [Q, R] = Gram_Schmidt_Opt(A)
	% A = square matrix
	% A = Q * R such that
  %   Q = orthogonal
  %   R = upper triangular

	[n, m] = size(A);
	R = zeros(n, m);

	for i = 1:m
		R(i, i) = norm(A(:, i));
		A(:, i) = A(:, i) / R(i, i);

		for j = i+1:m
			R(i, j) = A(:, j)' * A(:, i);
			A(:, j) -= A(:, i) * R(i, j);
		endfor
	endfor

	Q = A;

endfunction
