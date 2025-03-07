%% Discrete time pulse (first method)
clc, clear, close all;
n = -4 : 1 : 4;
delta_n = [0, 0, 0, 0, 1, 0, 0, 0, 0];
stem(n, delta_n)
xlabel('Time sample')
ylabel('Amplitude')
pause
%% Discrete time pulse (second method)
clc, clear, close all;
n = -100 : 1 : 100;
delta_n = [zeros(1, 100), 1, zeros(1, 100)];
stem(n, delta_n)
xlabel("Sampling time")
ylabel("Amplitude")
pause
%% Discrete time pulse (third method)
clc, clear, close all;
n = -20 : 1 : 20;
delta_n = (n - 3 == 0); %Shift signal to 3 unit to the right
stem(n, delta_n)
xlabel('Sampling time')
ylabel('Magnitude')
pause
%% Unit discrete signal time
clc, clear, close all;
n = -10 : 1 : 10;
unit_n = (n >= 0);
stem(n, unit_n)
xlabel('Time')
ylabel('Magnitude')
legend('Unit signal')
title('DT Unit signal')
pause
%% Axis command
clc, clear, close all;
n = -10 : 1 : 10;
unit_n = (n >= 0);
stem(n, unit_n)
axis([-20 20 0 5])
pause
%% Sinc function
clc, clear, close all;
n = -10 : 1 : 10;
sinc_n = sin(n)./n;
sinc_n(n == 0) = 1;
stem(n, sinc_n)
pause
%% Unit ramp function
clc, clear, close all;
n = -20 : 0.5 : 20;
ramp_n = (n >= 0).*n;
stem(n, ramp_n)
pause
%%Sine function
clc, clear, close all;
n = 1 : 1 : 20;
sine_n = sin(n * 2 * pi * 0.1);
cosine_n = cos(n);
subplot(2, 1, 1)
stem(n, sine_n)
axis([5 20 -1/2 1/2])
subplot(2, 1, 2)
stem(n, cosine_n)
axis([5 20 -1/2 1/2])
pause

