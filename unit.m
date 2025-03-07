function unit_n = unit_n (n0)
  n = -20 : 1 : 20;
  unit_n = (n >= n0);
  stem(n, unit_n)
  xlabel('Result')
  ylabel('Result')
  title('Function practice question')
  legend('Unit step')
  pause
end
