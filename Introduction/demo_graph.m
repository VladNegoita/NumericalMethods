x = sort(rand(1000, 1) * sqrt(50));
y = sin(x);
z = sin(3 * x);

scatter(x, y);
hold on;
scatter(x, z);
legend ("sin(x)", "sin(3x)");