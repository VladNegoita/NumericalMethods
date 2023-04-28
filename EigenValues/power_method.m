function [lambda, x, cnt_steps] = power_method (A, x0, tol = 1e-10, max_steps = 100)
	cnt_steps = 0;
	x = x0;
	lambda = (x' * A * x) / (x' * x);
	n = length(x0);

	while cnt_steps <= max_steps
		
		new_x  = A * x;
		new_x /= norm(new_x);
		new_lambda = (new_x' * A * new_x) / (new_x' * new_x);
		++cnt_steps;
		if (norm(x - new_x) < tol || abs(lambda - new_lambda) < tol / n)
			break;
		endif
		
		lambda = new_lambda;
		x = new_x;
	endwhile
	
endfunction
