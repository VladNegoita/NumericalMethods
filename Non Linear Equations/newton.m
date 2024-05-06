function [x, cnt_iter] = newton(F, J, x0, max_iter = 100, tol = 1e-15)
  x = x0;
  for cnt_iter = 1 : max_iter
    new_x = x - J(x) \ F(x);

    if norm(x - new_x) < tol
      x = new_x;
      return;
    endif

    x = new_x;
  endfor
endfunction
