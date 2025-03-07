%% Practical problem
clc, clear, close all
n = -200 : 1 : 200;
x_n = 5 * [cos(0.49 * pi * n) + cos(0.51 * pi * n)];
stem(n, x_n)
pause
%% Real exponential signal
clc, clear, close all
n = -20 : 1 : 20;
x_n = 3. * (2.^ n);
stem(n, x_n)
%% Complex exponential signal
clc, clear, close all
n = -20 : 1 : 20;
x_n = exp((-0.1 + j * 0.3) * n);
subplot(2, 2, 1)
stem(n, real(x_n))
xlabel('Time sampling')
title('REAL PART')
subplot(2, 2, 2)
stem(n, imag(x_n))
xlabel('Time sampling')
title('IMAGINARY PART')
subplot(2, 2, 3)
stem(n, abs(x_n))
xlabel('Time sampling')
title('MAGNITUDE PART')
subplot(2, 2, 4)
stem(n, angle(x_n))
xlabel('Time sampling')
title('ANGLE PART')
pause
%% Signum function
clc, clear, close all
n = -20 : 1 : 20;
unit_n = (n >= 0);
unit_in = (n <= 0);
sign = unit_n - unit_in;
stem(n, sign)
pause
%%Sorting array
clc, clear, close all
A = [-2 -4 -5 -1 10 3 5 2]
sort(A)
fliplr(sort(A))
%%Time reversal of an array
x = [1, 2, 3, 4, 5, 6];
n = [-3, -2, -1, 0, 1, 2];
subplot(2, 1, 1)
stem(n, x)
title('Original Signal')
subplot(2, 1, 2)
x_r = fliplr(x);
n_r = -fliplr(n);
stem(n_r, x_r)
title('Reversed Signal')

%%Time delayed signal
x = [-3 -2 -1 0 1 2 3]
n = -4 : 1: 2
subplot(2, 1, 1)
stem(n, x, 'LineWidth', 2)
title('Original signal')
subplot(2, 1, 2)
m = n + 3 % Time shifting 3 unit step
stem(m, x, 'LineWidth', 2)
title('Shifted signal')
pause
%%Signal in frequency domain
n = 0 : 100;
x = sin(2*pi.*n/3);
L = length(x);
N = 512;
X = fft(x, N);
mag_X = abs(X)/L;
phase_X = angle(X)*180/pi;
subplot(3, 1, 1)
plot(n, x, "r", "LineWidth", 2)
title('Signal in time domain')
w = [0:2*pi/N:2*pi];
subplot(3,1,2)
title('Signal in frequency domain')
plot(w(1:end-1),mag_X,"LineWidth",2)



