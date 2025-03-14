clc, clearvars, close all
f = 1000, T = 1/f;
t = 0 : T/100 : 2*T;
subplot(3, 2, 1)
x = sin(2*pi*f*t)-4*cos(6*pi*f*t);
plot(t, x, 'LineWidth', 2)
grid on
title('Original signal')
subplot(3, 2, 3)
t1 = 0 : T/10 : 2*T;
x1 = sin(2*pi*f*t1)-4*cos(6*pi*f*t1);
plot(t1, x1, 'LineWidth', 2, 'r')
hold on
stem(t1, x1, 'LineWidth', 2, '.', 'Markersize', 20)
title('Sampling and reconstructed signal')
legend('Reconstructed signal', 'Sampling points')
grid on
subplot(3, 2, 5)
N = 2048;
X = fft(x, N);
L = length(x);
mag_X = abs(X)/L;
w = linspace(0, 2*pi, N);
plot(w, mag_X, 'LineWidth', 2)
hold on
X1 = fft(x1, N);
L1 = length(x1);
mag_X1 = abs(X1)/L1;
plot(w, mag_X1, 'LineWidth', 2, 'r')
title('Spectrum of original signal')
legend('Original signal', 'Sampled signal')
grid on
subplot(3, 2, 2)
x = sin(2*pi*f*t)-4*cos(6*pi*f*t)+2*randn(size(t));
plot(t, x, 'LineWidth', 2)
grid on
title('Noised signal')
subplot(3, 2, 4)
x1 = sin(2*pi*f*t1)-4*cos(6*pi*f*t1)+2*randn(size(t1));
plot(t1, x1, 'LineWidth', 2, 'r');
hold on
stem(t1, x1, 'LineWidth', 2,'.', 'Markersize', 20)
title('Sampling and reconstructed noise signal')
legend('Reconstructed signal', 'Sampling points')
grid on
subplot(3, 2, 6)
N = 1024;
X = fft(x, N)
L = length(x);
Mag_X = abs(X)/L;
w = linspace(0, 2*pi, N);
plot(w, Mag_X, 'LineWidth', 2)
grid on
hold on
title('Spectrum of noise signal')
X1 = fft(x1, N)
L = length(x1);
Mag_X1 = abs(X1)/L;
plot(w, Mag_X1, 'LineWidth', 2, 'r')
legend('Original signal', 'Sampled signal')
pause
