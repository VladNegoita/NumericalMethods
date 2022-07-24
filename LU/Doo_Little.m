function [L, U] = Doo_Little (A)
  % L = lower triangular matrix
  % U = upper triangular matrix, with ones on diag
  
  [n, ~] = size(A);
  
  L = eye(n);
  U = zeros(n, n);
  
  for p = 1:n
    s = L(p, 1:p-1) * U(1:p-1, p);
    U(p, p) = A(p, p) - s;
    
    for i = p+1:n
      ss = L(p, 1:p-1) * U(1:p-1, i);
      U(p, i) = A(p, i) - ss;
      
      sss = L(i, 1:p-1) * U(1:p-1, p);
      L(i, p) = (A(i, p) - sss) / U(p, p);
    endfor
  endfor
endfunction
