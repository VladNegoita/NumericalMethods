% we want an approximation for pi

% we consider the following set: [-1, 1] x [-1, 1]
% 	and the unit circle inside of this

% what is the probability of a random point (x, y)
% 	with x and y in [-1, 1] to be in the circle?

ns = [5, 10, 50, 100, 250, 500, 1000, 2000, 5000, 10000, 50000, 100000, 250000, 1000000, 2500000, 5000000];
pi_aprox = [];

for n=ns
	
	x = 2 * rand(n, 1) - 1;
	y = 2 * rand(n, 1) - 1;
	mask = (x .^ 2 + y .^ 2) <= 1;
	
	curr_aprox = (4 * sum(mask)) / n;
	pi_aprox = [pi_aprox; (4 * sum(mask)) / n];
	pi_aprox;
	
endfor

pi_aprox
semilogx(ns, abs(pi - pi_aprox) / pi);