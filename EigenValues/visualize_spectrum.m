function visualize_spectrum(A, cnt = 100)
  [n, ~] = size(A);

  if n == 2
    thetas = 0 : (2 * pi / cnt) : 2 * pi;
    transformed = [cos(thetas); sin(thetas)];
    transformed = A * transformed;

    xs = transformed(1, :);
    ys = transformed(2, :);
    compass(xs, ys);
  endif

  if n == 3
    % TODO
  endif
endfunction
