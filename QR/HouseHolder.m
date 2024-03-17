function [Q, R] = HouseHolder(A, tol = 1e-15)
  % A = square matrix
	% A = Q * R such that
  %   Q = orthogonal
  %   R = upper triangular

  [n, ~] = size(A);
  Q = eye(n, n);

  for i = 1 : (n - 1)
    ui = reflection_dir(A(i : n, i));
    u = [zeros(i - 1, 1); ui];
    H = reflector(u);

    Q = Q * H;
    A = H * A;
  endfor

  R = A;
  R(abs(R) < tol) = 0;
endfunction

function H = reflector(u)
  [n, ~] = size(u);
  H = eye(n) - 2 * u * u' / (u' * u);
endfunction

function u = reflection_dir(x)
  [n, ~] = size(x);
  u = x + [sign(x(1)) * norm(x); zeros(n - 1, 1)];
endfunction

