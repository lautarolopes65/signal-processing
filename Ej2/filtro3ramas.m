function y = filtro3rama(x)
N = length(x);
y = zeros(1, N);

for n = 1:N
    if (n - 52920) > 0
        y(n) = x(n) - 0.004096 * x(n - 52920);
    else
        y(n) = x(n);
    end
end


