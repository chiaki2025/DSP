clc, clearvars, close all
v = [1 2 3 4]
v1 = [1; 2; 3; 4]
A = [1 2 3; 2 3 4; 5 6 7]
namelengthmax
whos
ones(10, 4);
zeros(3, 9);
eye(10);
randn(5, 6);
rand(5, 5)
%vector = 1 : 0.2345 : 100; Start Step Stop
%vector'
transpose(ans)
n = randi(100, 1);
age = 23;
if n > age
    disp('i am younger')
elseif n < age
    disp('i am older')
else
    disp('same age')
end
