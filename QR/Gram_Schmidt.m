function [Q, R] = Gram_Schmidt(A)
	% A = square matrix
	% A = Q * R such that
  %   Q = orthogonal
  %   R = upper triangular

	[n, m] = size(A);
	R = zeros(n, m);

	for j = 1:m

		sum = zeros(n, 1);
		for i = 1:j-1
	  		R(i, j) = A(:, i)' * A(:, j);
	  		sum += A(:, i) * R(i, j);
		endfor

		A(:, j) = A(:, j) - sum;
		R(j, j) = norm(A(:, j));
		A(:, j) = A(:, j) / R(j, j);
	endfor

	Q = A;

endfunction
