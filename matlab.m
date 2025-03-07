clc, clearvars, close all
f = 1000, T = 1/f;
t = 0 : T/10000 : 4*T;
x = sin(2*pi*f*t+pi/6)+4*cos(6*pi*f*t+pi/3);
subplot(3, 1, 1)
plot(t,x,'Linewidth',2)
title('Original signal in time domain')
xlabel('Time (s)')
ylabel('Amplitude (mV)')
grid on
t1 = 0 : T/5 : 4*T;
x1 = sin(2*pi*f*t1+pi/6)+4*cos(6*pi*f*t1+pi/3)
subplot(3, 1, 2)
stem(t1, x1, 'Linewidth', 2, '.', 'Markersize', 20)
hold on
grid on
plot(t1, x1, 'Linewidth', 2, 'r')
title('Reconstructed signal with low sampling rate')
xlabel('Time (s)')
ylabel('Amplitude (mV)')
legend('Sampling point', 'Reconstructed signal')
N = 512;
L = length(x);
X = fft(x, N);
mag_X = abs(X)/L;
w = linspace(-2*pi, 2*pi, N);
subplot(3, 1, 3)
plot(w, mag_X, 'Linewidth', 2)
xlim([min(w) max(w)])
xlabel('Radian')
ylabel('mV')
title('Frequency spectrum')
hold on
L1 = length(x1);
X1 = fft(x1, N);
mag_X1 = abs(X1)/L1;
w1 = linspace(-2*pi, 2*pi, 512);
plot(w1, mag_X1, 'Linewidth', 2, 'r')
legend('Original signal', 'Reconstructed signal')
grid on
pause
