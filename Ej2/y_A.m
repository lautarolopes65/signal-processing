% Sistema : y[n] = ½ x[n] + ½ x[n-1]
function y = y_A(x)
  N = length(x);
  y = zeros(1, N);
  for n = 1:N
    y(n) = x(n);
    if n > 8820
      y(n) = y(n) + 0.4 * x(n-8820);
    end
    if n > 17640
      y(n) = y(n) + 0.16 * x(n-17640);
    end
  end
end
