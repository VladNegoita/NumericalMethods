function A = Gen_Cholesky(n)
	% generates a matrix with integer values Cholesky decomposition
	% A must be symetric and positive definite

	for i = 1:n
		L(i+1:n, i) = randi([-5, 5], n - i, 1);
		L(i, i) = randi([1, 10]);
	endfor

	A = L * L';
endfunction  