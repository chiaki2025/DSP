function [] = deltaSig(t0, t1)
%UNTITLED18 Summary of this function goes here
%   Detailed explanation goes here
t = linspace(t0, t1, 100);
x = sin(t);
plot(t, x, "LineWidth", 2)
grid on
end