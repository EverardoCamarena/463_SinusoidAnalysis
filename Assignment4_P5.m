w = -pi:0.01:pi; % frequency vector
H = (sin(2*w)./sin(w/2)).^2 .* exp(-j*3*w); % frequency response
plot(w, abs(H)); % plot magnitude
xlabel('Frequency (rad/sample)');
ylabel('Magnitude');
title('Magnitude Response of Cascade System');