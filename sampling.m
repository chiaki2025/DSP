clc, clearvars, close all
f = 1000, T = 1/f;
t = 0 : T/50 : 3*T;
x = sin(2*pi*f*t+pi/3);
subplot(4, 1, 1)
plot(t, x, 'LineWidth', 2)
grid on
title('Original signal')
t1 = 0 : T/2.5 : 3*T;
x1 = sin(2*pi*f*t1+pi/3);
subplot(4, 1, 2)
stem(t1, x1, 'LineWidth', 2, '.', 'Markersize', 20)
hold on
plot(t1, x1, 'LineWidth', 2)
grid on
title('Signal after sampling and reconstruct')
legend('Sampling signal','Reconstructed signal')
subplot(4, 1, 3)
N = 1024;
L = length(x);
X = fft(x, N);
mag_X = abs(X)/L;
w = linspace(-2*pi, 2*pi, N);
plot(w, mag_X, 'LineWidth', 2, 'r')
title('Original signal frequency domain')
subplot(4, 1, 4)
N = 1024;
L = length(x1);
X1 = fft(x1, N);
mag_X1 = abs(X1)/L;
w = linspace(-2*pi, 2*pi, N);
plot(w, mag_X1, 'LineWidth', 2)
title('Reconstructed signal frequency domain')
pause
