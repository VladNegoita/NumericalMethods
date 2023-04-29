function A = QR_shift1 (A, max_iter = 10000)
	[n, ~] = size(A);
	for i = 1:max_iter
        shift = A(n, n) * eye(n);
		[Q, R] = qr(A - shift);
		A = R * Q + shift;
	endfor
endfunction
