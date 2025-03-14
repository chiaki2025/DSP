graphics_toolkit("gnuplot")
x = linspace(-10, 10, 10000);
y = sin(x);

subplot(2, 1, 1);
plot(x, y);
title("Sine Wave");

N = 512;
Y = fft(y, N);
Mag_Y = abs(Y) / length(y);
w = linspace(0, 2*pi, N);  % Proper frequency axis

subplot(2, 1, 2);
plot(w, Mag_Y);
title("Magnitude Spectrum of FFT");

