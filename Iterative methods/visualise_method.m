function visualise_method(A, b, x0, method, iters = 10)
  [n, ~] = size(A);
  solution = zeros(n, iters + 1);
  solution(:, 1) = x0;

  for i = 2 : iters + 1
    solution(:, i) = method(A, b, solution(:, i - 1), 1e-10, 1);
  endfor

  for i = 1 : n
    plot(1 : iters + 1, solution(i, :));
    hold on;
  endfor
endfunction
