% Sistema 2 : y[n] = ½ x[n] - ½ x[n-1]
function y = S2(x)
  N = length(x);
  y = zeros(1, N);
  for n = 1:N
    y(n) = 0.5 * x(n);
    if n > 1
      y(n) = y(n) - 0.5 * x(n-1);
    end
  end
end

