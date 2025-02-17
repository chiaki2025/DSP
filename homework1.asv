% 1. 
v1 = 15 : 3 : 15 + (50 - 1) * 3;
disp(v1)
%2.
v2 = (100: -2 : 100 - 2 * (20 - 1))';
disp(v2)
%3
A = randi(100, 10, 10);
A(1 : 11 : end) = 0;
disp(A)
%4
A = randn(3,3)
[min_pos, max_pos,  min_val, max_val] = find_min_max_pos(A);
disp(min_pos);
disp(max_pos);
disp(min_val);
disp(max_val);

function [min_pos, max_pos, min_val, max_val] = find_min_max_pos(A)
    min_val = min(A(:));
    max_val = max(A(:));
    [min_row, min_col] = find(A == min_val);
    [max_row, max_col] = find(A == max_val);
    min_pos = [min_row, min_col];  
    max_pos = [max_row, max_col];  
end

