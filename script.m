n = -10 : 0.00001 : 10;
x = sin(n)./n;
x(n==0) = 1;
subplot(2, 1, 1)
plot(n, x, 'LineWidth', 2, '.', 'Markersize', 20)
title('Signal in time domain')
xlabel('Sampling time')
ylabel('Value')

subplot(2, 1, 2)
N = 4096;
L = length(x);
X = fft(x, N);
Mag_X = abs(X)/L;
w = linspace(-2*pi, 2*pi, N);
plot(w, Mag_X, 'LineWidth', 2, 'r')
title('Signal in Frequency domain')
xlabel('Frequency axis')
ylabel('Magnitude axis')
pause
