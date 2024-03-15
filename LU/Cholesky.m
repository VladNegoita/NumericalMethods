function L = Cholesky (A)
	% A = square symetric and positive definite matrix
	% L = lower triangular matrix such that A = L * L'

	[n, ~] = size(A);
	L = zeros(n, n);

  for i = 1:n
    % A(i, i) = L(i, 1:i) * L'(1:i, i)
    L(i, i) = sqrt(A(i, i) - sum(L(i, 1 : (i - 1)) .^ 2));
    for j = (i + 1) : n
      % A(i, j) = L(i, 1:i) * L(j, 1:i)'
      L(j, i) = (A(i, j) - L(i, 1 : (i - 1)) * L(j, 1 : (i - 1))') / L(i, i);
    endfor
  endfor
endfunction

