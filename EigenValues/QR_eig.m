function A = QR_eig (A, max_iter = 10000)
	
	for i = 1:max_iter
		[Q, R] = qr(A);
		A = R * Q;
	endfor
endfunction
