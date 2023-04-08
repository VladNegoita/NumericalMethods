function [solution, iterations_no] = bisection (f, a, b, maximum_iteration_no = 100, tol = 1e-15)
	iterations_no = 0;
	
	f_a = f(a);
	f_b = f(b);
	while b - a >= tol && iterations_no <= maximum_iteration_no
		
		middle = (a + b) / 2;
		f_middle = f(middle);
		
		if f_middle * f_a < 0
			b = middle;
			f_b = f_middle;
		elseif f_middle * f_b < 0
			a = middle;
			f_a = f_middle;
		else
			a = middle;
			b = middle;
			break;
		endif
		
		++iterations_no;
	endwhile
	
	solution = (a + b) / 2;
endfunction
