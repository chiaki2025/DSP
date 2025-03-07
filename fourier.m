clc, clearvars, close all
t = linspace(-10, 10, 10000);
x = sin(t)./t;
x(t==0) = 1;
subplot(3, 1, 1)
plot(t, x, 'LineWidth', 2)
title('Signal in time domain')
N = 512;
L = length(x);
X = fft(x, N);
w = linspace(-2 * pi, 2 * pi, N);
subplot(3, 1, 2)
mag_X = abs(X)/L;
plot(w, mag_X, 'LineWidth', 2)
title('Magnitude of signal')
subplot(3, 1, 3)
phase_X = angle(X) * 180/pi;
plot(w, phase_X, 'LineWidth', 2, 'r')
title('Phase of signal')
pause
