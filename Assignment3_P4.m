% Define the signal
t = linspace(-10, 10, 1000);
x = 7*ones(size(t));
x(t > 5 & t < 8) = 3;
 
% Plot the signal
plot(t, x);
xlabel('t');
ylabel('x(t)');
title('Periodic Signal x(t)');