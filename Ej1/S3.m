% Sistema 3 : y[n] = ¼ x[n] + ¼ x[n-1] + ½ y[n-1]
function y = S3(x)
  N = length(x);
  y = zeros(1, N);
  for n = 1:N
    y(n) = 0.25 * x(n);
    if n > 1
      y(n) = y(n) + 0.25 * x(n-1) + 0.5 * y(n-1);
    end
  end
end
