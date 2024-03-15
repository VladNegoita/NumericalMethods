function average_case_error_testing(norm_p = 2)
  ns = [3, 5, 10, 25, 50, 100, 125, 250];
  iterations = 3;

  gpp_err = [];
  gpps_err = [];
  gpt_err = [];
  best_err = [];

  for n = ns
    curr_gpp = 0;
    curr_gpps = 0;
    curr_gpt = 0;
    curr_best = 0;

    for i = 1 : iterations
      A = 100 * (rand(n, n) - 0.5);
      b = 100 * (rand(n, 1) - 0.5);

      x_gpp = gpp(A, b);
      x_gpps = gpps(A, b);
      x_gpt = gpt(A, b);
      x_best = A \ b;

      curr_gpp += norm(b - A * x_gpp, norm_p);
      curr_gpps += norm(b - A * x_gpps, norm_p);
      curr_gpt += norm(b - A * x_gpt, norm_p);
      curr_best += norm(b - A * x_best, norm_p);
    endfor

    gpp_err(end + 1) = curr_gpp / iterations;
    gpps_err(end + 1) = curr_gpps / iterations;
    gpt_err(end + 1) = curr_gpt / iterations;
    best_err(end + 1) = curr_best / iterations;
  endfor

  semilogx(ns, gpp_err, ns, gpps_err, ns, gpt_err, ns, best_err);
  legend("GPP", "GPPS", "GPT", "Best");
  title("Average Error Analysis")

endfunction
