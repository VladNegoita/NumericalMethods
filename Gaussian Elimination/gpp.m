function x = gpp (A, b)

	[n, ~] = size(A);
	for i = 1 : (n - 1)

		max_index = i;
		max_value = A(i, i);
		for j = (i + 1) : n
			if  abs(A(j, i)) > max_value
				max_index = j;
				max_value = abs(A(j, i));
			endif
		endfor

		if max_index != i
			A([i, max_index], i : n) = A([max_index, i], i : n);
			b([i, max_index]) = b([max_index, i]);
		endif

		for j = (i + 1) : n
			b(j) = b(j) - (A(j, i) / A(i, i)) * b(i);
			A(j, i : n) = A(j, i : n) - (A(j, i) / A(i, i)) * A(i, i : n);
		endfor

	endfor

	x = SST(A, b);
endfunction
