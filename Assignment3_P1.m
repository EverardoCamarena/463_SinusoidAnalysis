% Define the signal x(t)
t = linspace(-0.02, 0.02, 10000); % time vector from -0.02 to 0.02 seconds
x = 5 + 15*cos(2*pi*40*t+70.55);

% Compute the DFT of the signal
X = fftshift(fft(x));
 
% Define the frequency vector
Fs = 1/(t(2)-t(1)); % sampling frequency
df = Fs/length(t); % frequency resolution
f = -Fs/2:df:Fs/2-df; % frequency vector
 
% Plot the magnitude of the spectrum
figure;
plot(f, abs(X)/length(t));
xlabel('Frequency (Hz)');
ylabel('Magnitude');
title('Two-Sided Spectrum of x(t)');
 
% Label the complex amplitudes for each positive and negative frequency component
fprintf('Complex amplitude at f = -40 Hz: %.2f\n', X(length(t)/2-200));
fprintf('Complex amplitude at f = 40 Hz: %.2f\n', X(length(t)/2+200));