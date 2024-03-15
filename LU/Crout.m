function [L, U] = Crout (A)
  % A = square matrix
	% L = lower triangular matrix
	% U = upper triangular matrix, with ones on diag
  %   such that A = L * U

	[n, ~] = size(A);

	L = zeros(n, n);
	U = eye(n);

  for j = 1:n
    for i = 1:n
      % A(i, j) = L(i, 1:p) * U (1:p, j)
      % where p = min(i, j)
      if j <= i
        L(i, j) = A(i, j) - L(i, 1 : (j - 1)) * U(1 : (j - 1), j);
      else
        U(i, j) = (A(i, j) - L(i, 1 : (i - 1)) * U(1 : (i - 1), j)) / L(i, i);
      endif
    endfor
  endfor
endfunction

