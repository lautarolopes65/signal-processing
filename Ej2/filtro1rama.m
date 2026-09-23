function y = filtro1rama(x)
N = length(x);
y = zeros(1, N);

for n = 1:N
    if (n - 17640) > 0
        y(n) = x(n) - 0.16 * x(n - 17640);
    else
        y(n) = x(n);
    end
end
