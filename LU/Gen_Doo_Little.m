function A = Gen_Doo_Little(n)
	% generates a matrix with integer values Doo_Little decomposition

	U = zeros(n, n);
	L = eye(n);

	for i = 1:n
		L(i+1:n, i) = randi([-5, 5], n - i, 1);
		U(1:i-1, i) = randi([-5, 5], i-1, 1);
		U(i, i) = randi([1, 10]);
	endfor

	A = L * U;
endfunction  