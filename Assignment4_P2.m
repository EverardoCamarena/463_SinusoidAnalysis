num = [1 2 3 3 2 1]; % numerator coefficients
den = [1 0 0 0 0 0]; % denominator coefficients
 
zeros = [0 0 0 0 0]'; % transpose to make it a row vector
poles = roots(den)'; % transpose to make it a row vector
 
figure; zplane(den, num); % plot zeros and poles