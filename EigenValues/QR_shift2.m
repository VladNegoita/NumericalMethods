function A = QR_shift2 (A, max_iter = 10000, tol = 1e-5)
	[n, ~] = size(A);
	
	if n == 1
		return
	endif

	for i = 1:max_iter
		
		% we find the eigenvalues of the 2x2 bottom-right corner of A (usually by brute force, but here we will use eig)

		eigenvalues = eig(A(n-1:n, n-1:n));
		coef = eigenvalues(1);
		if abs(eigenvalues(1) - A(n, n)) > abs(eigenvalues(2) - A(n, n))
			coef = eigenvalues(2);
		endif

        shift = coef * eye(n);
		[Q, R] = qr(A - shift);

		new_A = R * Q + shift;
		if (norm(A - new_A) < tol)
			break;
		endif

		A = new_A;
	endfor
endfunction
