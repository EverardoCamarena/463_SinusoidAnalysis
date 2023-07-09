syms f kf t;
w0 = 2*pi/3;
Xf = symsum((2+j*kf)*sinc(f-kf/3)/pi,kf,-3,3);
 
x_t = sin(7*t)*symsum((2+j*kf)*exp(j*kf*w0*t),kf,-3,3);
 
% Plotting time domain signal
t = linspace(-pi,pi,200);
x_t = eval(x_t);
figure;
subplot(2,1,1);
plot(t, x_t);
xlabel('Time (s)');
ylabel('Amplitude');
title('Time Domain Signal');
 
% Plotting frequency domain signal
f = linspace(-3,3,200);
Xf = eval(Xf);
subplot(2,1,2);
plot(f, abs(Xf));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Frequency Domain Signal');
 
% Verify conjugate symmetry
Xf_diff = Xf - conj(fliplr(Xf));
tol = 1e-10;
if max(abs(Xf_diff)) < tol
    disp('The spectrum is conjugate symmetric.');
else
    disp('The spectrum is NOT conjugate symmetric.');
end