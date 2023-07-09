Ts = 0.01; % units are seconds
Duration = 0.3;
tt = 0:Ts:Duration;
Fo = 380; % units are Hz
xn = 2*cos(2*pi*Fo*tt + 0.6*pi);
stem(0:length(xn)-1, xn);