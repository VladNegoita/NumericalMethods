function x = gpt (A, b)

	[n, ~] = size(A);
	perm = 1:n;

	for i = 1:n-1
		
		max_line = i;
		max_column = i;
		
		for j = i:n
			for k = j:n
				if A(j, k) > A(max_line, max_column)
					max_line = j;
					max_column = k;
				endif
			endfor
		endfor
		
		A([i, max_line], i:n) = A([max_line, i], i:n);
		b([i, max_line]) = b([max_line, i]);
		perm([i, max_column]) = perm([max_column, i]);
		
		for j = i+1:n
			b(j) = b(j) - (A(j, i) / A(i, i)) * b(i);
			A(j, i:n) = A(j, i:n) - (A(j, i) / A(i, i)) * A(i, i:n);
		endfor
		
	endfor
	
	x = SST(A, b);
	
endfunction
