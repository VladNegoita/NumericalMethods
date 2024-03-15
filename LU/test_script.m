n = 500;
iterations = 10;
eps = 1e-7;
ok = true;
for i = 1 : iterations

  % Generate random matrix for testing
  A = (rand(n, n) - 0.5) * 100;

  % Compute the factorisations
  [DooL, DooU] = Doo_Little(A);
  [CroutL, CroutU] = Crout(A);
  CholeskyL = Cholesky(A * A');

  if norm(diag(DooL) - ones(n, 1)) >= eps || norm(DooL - tril(DooL)) >= eps || norm(DooU - triu(DooU)) >= eps || norm(DooL * DooU - A) >= eps
    disp("Wrong DooLittle factorisation!");
    ok = false;
    break;
  endif

  if norm(diag(CroutU) - ones(n, 1)) >= eps || norm(CroutL - tril(CroutL)) >= eps || norm(CroutU - triu(CroutU)) >= eps || norm(CroutL * CroutU - A) >= eps
    disp("Wrong Crout factorisation!");
    ok = false;
    break;
  endif

  if norm(CholeskyL - tril(CholeskyL)) >= eps || norm(CholeskyL * CholeskyL' - A * A') >= eps
    disp("Wrong Cholesky factorisation!");
    ok = false;
    break;
  endif

  printf("Iteration %d: Ok!\n", i);
endfor

if ok
  printf("Perfect!\n")
endif

