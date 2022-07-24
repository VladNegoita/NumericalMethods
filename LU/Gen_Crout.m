function A = Gen_Crout(n)
  % generates a matrix with integer values Crout decomposition
  
  L = zeros(n, n);
  U = eye(n);
  
  for i = 1:n
    L(i+1:n, i) = randi([-5, 5], n - i, 1);
    L(i, i) = randi([1, 10]);
    U(1:i-1, i) = randi([-5, 5], i - 1, 1);
  endfor
  
  A = L * U;
endfunction  