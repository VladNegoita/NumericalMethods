function A = QR_shift1 (A, max_iter = 10000, tol = 1e-5)
	
	[n, ~] = size(A);
	for i = 1:max_iter
        shift = A(n, n) * eye(n);
		[Q, R] = qr(A - shift);

		new_A = R * Q + shift;
		if (norm(A - new_A) < tol)
			break;
		endif
		
		disp(i);
		
		A = new_A;
	endfor
endfunction
