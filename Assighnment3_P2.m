T0 = 2*pi; % period of the signal
 
% Define the time vector
t = linspace(-T0, T0, 1000);
 
% Define the signal
x = zeros(size(t));
x(t < 0) = -t(t < 0);
x(t >= 0 & t < T0/2) = t(t >= 0 & t < T0/2);
 
% Plot the signal
plot(t, x);
xlabel('t');
ylabel('x(t)');
title('Half-wave Symmetric Signal');