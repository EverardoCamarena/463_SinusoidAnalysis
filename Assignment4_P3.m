% Define the polynomial
p = [1 -1/2 1/2 -1];
 
% Find the roots
r = roots(p);
 
% Plot the roots in the complex plane
zplane(p)