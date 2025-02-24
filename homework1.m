%% Problem 1
clc, clearvars
v = linspace(15, 162, 50)

%% Problem 2
clc, clearvars
v = linspace(100, 62, 20);
v = v'

%% Problem 3
clc, clearvars
A = randi(10, 10);
A(logical(eye(10))) = 0

B = randi(10, 10);
B(1 : 11 : end) = 0
%% Problem 4
clc, clearvars
z = 75;
reduceZ(z)
returnMax()
%% Problem 5
clc, clearvars
x = linspace(-10, 10, 100);
y = x.^2;
subplot(2,2,1)
plot(x, y, '--')
grid on
xlabel('x')
ylabel('y')
title('Figure 1')
subplot(2,2,2)
x = linspace(-2, 2, 100);
y = sin(0.2 * x * pi);
plot(x, y, '*r')
grid on
xlabel('x')
ylabel('y')
title('Figure 2')





