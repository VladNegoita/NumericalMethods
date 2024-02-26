% Generate random data in [-5, 5]

x = (rand(1000, 1) - 0.5) * 10;
y = (rand(1000, 1) - 0.5) * 10;

% Compute z (paraboloid)
z = x .^ 2 + y .^ 2

% Scatter in 3D
figure;
scatter3(x, y, z);
title("Random Title");
xlabel("x");
ylabel("y");
zlabel("z");
grid on;

