function [L, U] = Doo_Little (A)
  % A = square matrix
	% L = lower triangular matrix, with ones on diagonal
	% U = upper triangular matrix
  %   such that A = L * U

	[n, ~] = size(A);

	L = eye(n);
	U = zeros(n, n);

	for i = 1:n
    for j =1:n
      % A(i, j) = L(i, 1:p) * U (1:p, j)
      % where p = min(i, j)
      if i <= j
        U(i, j) = A(i, j) - L(i, 1 : (i - 1)) * U(1 : (i - 1), j);
      else
        L(i, j) = (A(i, j) - L(i, 1 : (j - 1)) * U(1 : (j - 1), j)) / U(j, j);
      endif
    endfor
	endfor
endfunction

