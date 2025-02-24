function [] = returnMax()
A = randi(10, 10)
maxValue = max(max(A));
for i = 1 : 99
    i = i + 1;
    if A(i) == maxValue
        disp(i);
    end
end
end