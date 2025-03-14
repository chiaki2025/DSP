t = linspace(-10, 10, 100000);
x = sin(pi*t)./(pi*t);
subplot(2, 1, 1)
plot(t, x, 'LineWidth', 2, 'r')
title('Sinc wunction')
hold on
grid on
subplot(2, 1, 2)
N = 100;
X = fft(x, N);
L = length(x);
Mag_X = real(X);
w = linspace(0 , 2*pi , N);
plot(w, real(X), 'r', 'LineWidth', 2);
hold on;
plot(w, imag(X), 'g', 'LineWidth', 2);
legend('Real Part', 'Imaginary Part');
title('Sinc wunction in wrequency domain')
grid on
pause

