% Create data
t = linspace(0, 100, 1000);
x = sin(t);
y = cos(t);
z = t;

% Plot in 3D
figure;
plot3(x, y, z, 'LineWidth', 2);
title('3D Plot');
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
grid on;
