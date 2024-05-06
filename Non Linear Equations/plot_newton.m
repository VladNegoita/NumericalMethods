function errs = plot_newton(cnt_iter, F, J, x0)
  errs = [];
  x = x0;
  for i = 0 : cnt_iter
    errs = [errs; norm(F(x))];
    x = newton(F, J, x, 1);
  endfor
  errs = [errs; norm(F(x))];
  plot(0 : cnt_iter + 1, errs);
  errs
endfunction

% test example parameters for newton
% F = @(x) [2 * x(1) + x(2) ^ 3 - 20; x(1) ^ 5 + e ^ x(2) - 1000];
% J = @(x) [2, 3 * x(2) ^ 2; 5 * x(1) ^ 4, e ^ x(2)];
% [x, cnt_iter] = newton(F, J, ones(2, 1));
% plot_newton(cnt_iter, F, J, ones(2, 1));

