function [solution, iterations_no] = secant (f, a, b, maximum_iteration_no = 100, tol = 1e-15)
	
	iterations_no = 0;
	f_a = f(a);
	f_b = f(b);
	while b - a >= tol && iterations_no <= maximum_iteration_no
		
		intercept = (a * f_b - b * f_a) / (f_b - f_a);
		f_intercept = f(intercept);
		
		if f_intercept * f_a < 0
			b = intercept;
			f_b = f_intercept;
		elseif f_intercept * f_b < 0
			a = intercept;
			f_a = f_intercept;
		else
			a = intercept;
			b = intercept;
			break;
		endif
		
		++iterations_no;
	endwhile
	
	solution = (a + b) / 2;

endfunction
