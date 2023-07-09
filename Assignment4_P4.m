% Define the zeros and poles
zeros = [1, -1, 0.8*exp(1i*pi/4), 0.8*exp(-1i*pi/4)];
poles = [0, j, -j];
 
% Plot the zeros and poles
figure;
plot(real(zeros), imag(zeros), 'o', 'MarkerSize', 10, 'LineWidth', 1.5);
hold on;
plot(real(poles), imag(poles), 'x', 'MarkerSize', 10, 'LineWidth', 1.5);
grid on;
axis equal;
xlabel('Real Part');
ylabel('Imaginary Part');
legend('Zeros', 'Poles');
title('Pole-Zero Plot of H(z)');