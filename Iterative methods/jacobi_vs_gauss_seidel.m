function jacobi_vs_gauss_seidel(A, b, x0, iters = 10)
  [n, ~] = size(A);

  x_jacobi = x0;
  x_gauss_seidel = x0;

  error_jacobi = zeros(iters, 1);
  error_gauss_seidel = zeros(iters, 1);

  solution = A \ b;

  for i = 1 : iters
    [x_jacobi, ~] = jacobi(A, b, x_jacobi, 1e-10, 1);
    [x_gauss_seidel, ~] = gauss_seidel(A, b, x_gauss_seidel, 1e-10, 1);

    error_jacobi(i) = norm(solution - x_jacobi);
    error_gauss_seidel(i) = norm(solution - x_gauss_seidel);
  endfor

  plot(1 : iters, error_jacobi);
  hold on;
  plot(1 : iters, error_gauss_seidel);

endfunction
