t = linspace(-1e-3, 1e-3, 10001);
x = cos(4000*pi*t).*cos(8000*pi*t);
Fs = 1/(t(2)-t(1));
N = length(x);
f = linspace(-Fs/2, Fs/2, N);
 
X = fftshift(fft(x))/N;
 
plot(f, abs(X));
xlabel('f (Hz)');
ylabel('|X(f)|');
title('Magnitude Spectrum of x(t)');