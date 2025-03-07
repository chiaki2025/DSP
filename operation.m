%% addition and multiplication of 2 signals
n1 = -5 : 1 : 5;
x1 = -10 : 1 : 0;
n2 = -5 : 1 : 5;
x2 = -10 : 1 : 0;
x3 = x1 + x2;
x4 = x1.*x2;
subplot(4, 1, 1)
stem(n1, x1, 'LineWidth', 2, '.', 'Markersize', 20)
title('Sequence 1')
xlim([min(n1) - 1 max(n1) + 1]); ylim([min(x1) - 1 max(x1) + 1])
subplot(4, 1, 2)
stem(n2, x2, 'LineWidth', 2, '.', 'Markersize', 20)
title('Sequence 2')
xlim([min(n2) - 1 max(n2) + 1]); ylim([min(x2) - 1 max(x2) + 1])
subplot(4, 1, 3)
stem(n2, x3, 'LineWidth', 2, '.', 'Markersize', 20)
title('Sum of sequence 1 and 2')
axis([min(n2) - 1 max(n2) + 1 min(x3) - 1 max(x3) + 1])
subplot(4, 1, 4)
stem(n2, x4, 'LineWidth', 2, '.', 'Markersize', 20)
title('Multiplication of sequence 1 and 2')
axis([min(n2) - 1 max(n2) + 1 min(x4) - 1 max(x4) + 1])
pause
%% Convolution
clc, clearvars, close all;
n = -10 : 1 : 10;
x1 = deltaSig(3) + deltaSig(2) + deltaSig(-4) + deltaSig(0);
subplot(3, 1, 1)
stem(n, x1, 'LineWidth', 2, '.', 'Markersize', 20)
x2 = deltaSig(-4) + deltaSig(5) + deltaSig(1) + deltaSig(0);
subplot(3, 1, 2)
stem(n, x2, 'LineWidth', 2, '.', 'Markersize', 20)
x3 = conv(x1, x2);
n3 = -20 : 1 : 20;
subplot(3, 1, 3)
stem(n3, x3, 'LineWidth', 2, '.', 'Markersize', 20)
pause




