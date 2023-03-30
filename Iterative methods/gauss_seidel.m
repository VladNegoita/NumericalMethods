function [x, cnt_iter] = gauss_seidel (A, b, x0, tol=1e-5, max_iter=100)
	[n, ~] = size(A);
	x = x0;
	new_x = x0;
	
	cnt_iter = 0;
	while cnt_iter < max_iter
		
		for i = 1:n
			new_x(i) = (b(i) - A(i, 1:i-1) * new_x(1:i-1) - A(i, i+1:n) * x(i+1:n)) / A(i, i);
		endfor
		
		cnt_iter += 1;

		if norm(new_x - x) < tol
			break;
		endif
		
		x = new_x;
	endwhile	
endfunction
