x = linspace(0, 2*pi, 100);
y = sin(x);

plot(x, y, "r-")  % Vẽ đồ thị với đường màu đỏ
xlabel("x")
ylabel("sin(x)")
title("Sine Wave")
grid on
