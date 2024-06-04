function y = rk2(f, x0, y0, xn, n = 10)
  h = (xn - x0) / n;

  x = x0;
  y = y0;
  for i = 1 : n
    k1 = h * f(x, y);
    k2 = h * f(x + h, y + k1);
    y = y + (k1 + k2) / 2;
    x = x + h;
  endfor
endfunction
