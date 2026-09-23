% Ejercicio 1

%nro de legajo: 02978/9
nro = 029789

% GRÁFICO DE senial.m
[n, x] = senial(nro);
figure;
stem(n,x);
xlabel("n")
ylabel("x[n]")
title("Señal discreta (02978/9)")

% GRÁFICO DE TFTD

X = TFTD(x,n);
graficarTFTD(X);

% GRÁFICO DE RESPUESTAS IMPULSIONALES Y DE FRECUENCIA
n = -10:10;
x = (n==0); % impulso unitario

%SISTEMA 1
h1 = S1(x);
graficarRespuestas(h1,1);

%SISTEMA 2
h2 = S2(x);
graficarRespuestas(h2,2);

%SISTEMA 3
h3 = S3(x);
graficarRespuestas(h3,3);

%SISTEMA 4
h4 = S4(x);
graficarRespuestas(h4,4);


% SALIDAS PARA senial.m

[n, x] = senial(nro);

% Sistema 1
figure;
y = S1(x);
stem(n,y);
xlabel("n")
ylabel("x[n]")
title("Salida del sistema 1");

Y = TFTD(y,n);
graficarTFTD(Y);

% Sistema 2
figure;
y = S2(x);
stem(n,y);
xlabel("n")
ylabel("x[n]")
title("Salida del sistema 2");

Y = TFTD(y,n);
graficarTFTD(Y);
% Sistema 3
figure;
y = S3(x);
stem(n,y);
xlabel("n")
ylabel("x[n]")
title("Salida del sistema 3");

Y = TFTD(y,n);
graficarTFTD(Y);
% Sistema 4
figure;
y = S4(x);
stem(n,y);
xlabel("n")
ylabel("x[n]")
title("Salida del sistema 4");

Y = TFTD(y,n);
graficarTFTD(Y);

