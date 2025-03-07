%% Problem 1: (Functions defined at the end of this file)
clc, clearvars, close all
subplot(2,2,1)
Unit(0, -5, 5)
subplot(2,2,2)
Unit(-2, -5, 5)

subplot(2,2,3)
Rectangular(0, 0, 2, 4)

subplot(2,2,4)
Rectangular(2, 4, -5, 5)

%% Problem 2:
t = -10 : 0.1 : 10;
% sinc(t) function
subplot(2, 2, 1)
x = sin(t)./t;
x(t == 0) = 1;
plot(t, x, "LineWidth", 2)
grid on
subplot(2, 2, 2)
% exp(-t) function
x = exp(-t);
plot(t, x, "LineWidth", 2)
grid on
% periodic square wave
subplot(2, 2, 3)
T = 2;
A = 1;
x = A * square((2 * pi / T) * t);
x = (x + 1) / 2;
plot(t, x, "LineWidth", 2)
% sum of sine and cosine function
subplot(2, 2, 4)
x = sin(pi * t/3 + pi/4) + 2 * cos(pi * t/4);
plot(t, x, "LineWidth",2)

%% Problem 3:

%% Problem 4:

%% Problem 5:
% sinc(t) function
t = -50:0.01:50;
x = sin(pi*t)./(pi*t);
x(t==0) = 1;
L = length(x);
N = 2048;
X = fft(x, N);
mag_X = abs(X)/L;
phase_X = angle(X)*180/pi;
w=[0:2*pi/N:2*pi];
subplot(2,2,1);
plot(w(1:end-1), mag_X, "LineWidth",2);
grid;
title("Magnitude of X(w)");
subplot(2,2,2);
plot(w(1:end-1), phase_X,"LineWidth",2);
title("Phase of X(w)");
grid;

% sum of sine and cosine function
t = -50:0.01:50;
x = cos(pi*t/3) + 2*sin(pi*t/4);
L = length(x);
N = 2048;
X = fft(x, N);
mag_X = abs(X)/L;
phase_X = angle(X)*180/pi;
w=[0:2*pi/N:2*pi];
subplot(2,2,3);
plot(w(1:end-1), mag_X, "LineWidth",2);
grid;
title("Magnitude of X(w)");
subplot(2,2,4);
plot(w(1:end-1), phase_X,"LineWidth",2);
title("Phase of X(w)");
grid;

%% Defined functions used in the first problem
% Unit signal
function [x n] = Unit(n0, n1, n2)
n = n1 : n2;
x = double(n >= n0);
stem(n ,x, "LineWidth", 2);
end
% Rectangular signal
function [x n] = Rectangular(na, nb, n1, n2)
n = n1 : n2
x = double(((n > na) | (n == na)) & ((n < nb) | (n == nb)));
stem(n, x, 'LineWidth', 2);
end
