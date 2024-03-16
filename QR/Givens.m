function [Q, R] = Givens (A, err = 1e-15)
	% A = square matrix
	% A = Q * R such that
  %   Q = orthogonal
  %   R = upper triangular

	[n, ~] = size(A);
	Q = eye(n);

	for i = 1:n-1
		for j = i+1:n

			if A(j, i) == 0
				continue
			endif

			r = norm([A(i, i), A(j, i)], 2);
			c = A(i, i) / r;
			s = A(j, i) / r;

			A([i, j], :) = [c, s; -s, c] * A([i, j], :);
			Q(:, [i, j]) = Q(:, [i, j]) * [c, -s; s, c];

		endfor
	endfor

	R = A;
	R(abs(R) < err) = 0; % for a better view of the result ~ triangular matrix

endfunction
