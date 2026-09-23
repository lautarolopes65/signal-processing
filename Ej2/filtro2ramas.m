  % Ecuación en diferencias y[n]=x[n]+ 0.0256 x[n-35280]+0.01024x[n-44100]
function y = filtro2ramas(x)
    N = length(x);
    y = zeros(1, N);
    for n = 1:N
        % Término actual: x[n]
        y(n) = x(n);
        % Segundo término: +0.0256x[n-35280]
        if n > 35280
            y(n) = y(n) + 0.0256 * x(n - 35280);
        end
        % Tercer término: +0.01024x[n-44100]
        if n > 44100
            y(n) = y(n) + 0.01024 * x(n - 44100);
        end
    end
end
