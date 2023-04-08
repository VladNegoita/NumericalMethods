function [Q, R] = Gram_Schmidt(A)
  	% A -> matrix (viewed as a list o column vectors)
	% Q -> ortogonalised vector list (and normalised)
	% R -> upper triangular matrix -> helps to reconstitute the A matrix:
	%	-> A = Q * R

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
