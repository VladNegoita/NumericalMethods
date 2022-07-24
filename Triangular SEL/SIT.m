function x = SIT (A, b)
  % A is considered lower triangular
  % x is the solution of the equation Ax = b
  
  [n, ~] = size(A);
  x = zeros(n, 1);
  
  for i = 1:n
    x(i) = (b(i) - A(i, 1:i-1) * x(1:i-1)) / A(i, i);
  endfor
endfunction
