% Ejercicio 2

%nro de legajo: 02978/9
nro = 029789

%GRÁFICO DE LA RESPUESTA IMPULSIONAL DEL CANAL
[n,h_A] = hcanald(nro);

figure;
stem(n,h_A);
i = find(h_A ~= 0);
xticks(n(i));   % solo muestra los n de los impulsos
xlabel("n")
ylabel("h_A[n]")
title("Respuesta impulsional h_A[n]")


delta = (n == 0);
y = y_A(delta);
figure;
stem(n,y,'k');
xlabel("n")
ylabel("h_A[n]")
title("Respuesta impulsional de y_A[n]")

%GRÁFICO DE LA SEÑAL audio.wav

fs = 0.5
[x, fs] = audioread('audio.wav');

plot(x);
xlabel("n")
ylabel("x[n]")
title("Señal del audio")

sound(x,fs);

%GRÁFICO DEL CANAL AL PROCESAR EL AUDIO


y = y_A(x);
figure;
plot(y);
xlabel("n")
ylabel("x[n]")
title("Señal de salida al procesarlo en el canal")

sound(y,fs);

%%GRÁFICO DE LAS RESPUESTAS IMPULSIONALES

%Respuesta con una rama de retardo
figure;
n = 0:55000;
delta = (n == 0);
h1 = filtro1rama(delta);
stem(n,h1);
xlabel("n")
ylabel("h_A_1[n]")
title("Respuesta impulsional del sistema con 1 rama de retardo")
%Respuesta con dos rama de retardo
figure;
h2 = filtro2ramas(delta);
stem(n,h2);
xlabel("n")
ylabel("h_A_2[n]")
title("Respuesta impulsional del sistema con 2 ramas de retardo")
%Respuesta con tres rama de retardo
figure;
h3 = filtro3ramas(delta);
stem(n,h3);
xlabel("n")
ylabel("h_A_3[n]")
title("Respuesta impulsional del sistema con 3 ramas de retardo")
