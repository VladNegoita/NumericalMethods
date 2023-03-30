function [x, cnt_iter] = jacobi (A, b, x0, tol=1e-5, max_iter=100)
	[n, ~] = size(A);
	x = x0;
	new_x = x0;
	
	cnt_iter = 0;
	while cnt_iter < max_iter
		
		for i = 1:n
			new_x(i) = (b(i) - A(i, :) * x) / A(i, i) +  x(i);
		endfor
		
		cnt_iter += 1;
		
		disp(new_x);
		disp("\n\n");

		if norm(new_x - x) < tol
			break;
		endif
		
		x = new_x;
		
	endwhile
	
endfunction
