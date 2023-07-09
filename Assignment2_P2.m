Fs= 100;% samples
dt = 1/Fs;% seconds per sample
tt = (0:dt:2)';
N = size(tt,1);
xx = cos(15*pi*tt).*cos(2*pi*tt);
plot(tt,xx);
title('Signal xx(tt)');
xlabel('Time(s)');
ylabel('Amplitude');
%%Fourier
X = fftshift(fft(xx));
%%Frequency specifications:
dF = Fs/N;
f = -Fs/2:dF:Fs/2-dF;
%%Plot the spectrum:
figure;
plot(f,abs(X)/N);
xlabel('Frequency (hertz)');
title('Magnitude')