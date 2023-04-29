function A = QR_simple (A, max_iter = 10000, tol = 1e-5)

	for i = 1:max_iter
		[Q, R] = qr(A);
		
		new_A = R * Q;
		
		if (norm(A - new_A) < tol)
			break;
		endif
		
		disp(i);

		A = new_A;
	endfor

endfunction
