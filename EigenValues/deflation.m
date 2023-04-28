function [eigenvalues] = deflation (A)
	[n, ~] = size(A);
	eigenvalues = zeros(n, 1);

	for i = 1:n
		[lambda, x, ~] = power_method(A, rand(n, 1));
		eigenvalues(i) = lambda;
		
		y = rand(n, 1);
		y /= x' * y;
		A = (eye(n) - x * y') * A;
	endfor

endfunction
