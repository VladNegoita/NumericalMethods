function [solution, iterations_no] = newton_raphson (f, df, initial_sol, maximum_iteration_no = 100, tol = 1e-15)
	
	iterations_no = 0;
	x0 = initial_sol;

	while iterations_no <= maximum_iteration_no
		x1 = x0 - f(x0) / df(x0);

		if abs(x1 - x0) < tol
			solution = x1;
			break;
		endif

		++iterations_no;
		x0 = x1;
	endwhile

	solution = x0;
endfunction
