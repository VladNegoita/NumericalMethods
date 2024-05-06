function sor_analysis(A, b, x0, step = 0.05, w_start = 0.05, w_end = 1.95)
  iters = [];
  for w = w_start : step : w_end
    [~, iters(end + 1)] = sor(A, b, x0, w, 1e-12);
  endfor

  plot(w_start : step : w_end, iters);
endfunction
