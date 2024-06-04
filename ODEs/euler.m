function y = euler(f, x0, y0, xn, n = 10)
  h = (xn - x0) / n;

  y = y0;
  x = x0;
  for i = 1 : n
    y = y + h * f(x, y);
    x = x + h;
  endfor
endfunction
