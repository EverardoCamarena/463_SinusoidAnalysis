% Define the sampling frequency
fs = 1000;
 
% Define the frequency range for the frequency response
w = 0:pi/100:pi;
 
% Define the filter coefficients
b = [1, -3.3175, 4.7111, -3.3175, 1];
 
% Calculate the frequency response of the filter
H = freqz(b, 1, w);
 
% Calculate the magnitude of the frequency response
H_mag = abs(H);
 
% Define the frequency range in Hz
f = w*fs/(2*pi);
 
% Plot the magnitude response against the normalized frequency
subplot(2,1,1);
plot(w/pi, H_mag, 'linewidth', 2);
grid;
xlabel('Normalized Frequency (\times \pi (rad/sample))');
ylabel('|H(e^{j\omega})|');
title('Magnitude Response');
 
% Plot the magnitude response against the actual frequency in Hz
subplot(2,1,2);
plot(f, H_mag, 'linewidth', 2);
grid;
xlabel('Frequency (Hz)');
ylabel('|H(f)|');
title('Magnitude Response');