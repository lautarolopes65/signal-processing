function graficarRespuestas(h,i)
%n = -5:15;
n = -(length(h)-1)/2 : (length(h)-1)/2;
ds = 0.001;
s = -0.5:ds:0.5;

figure;
stem(n,h);
title(sprintf("Respuesta impulsional S%d", i));
xlabel("n")
ylabel("h[n]")
axis tight;

figure; %%
H = TFTD(h,n);
subplot(2,1,1);
plot(s, abs(H));
title(sprintf('Modulo de Respuesta en frecuencia S%d',i));
xlabel('s');
ylabel('|H(e^{j2πs})|');
axis tight;

% fase
subplot(2,1,2);
plot(s, unwrap(angle(H)));
title(sprintf('Fase de Respuesta en frecuencia S%d',i));
xlabel('s');
ylabel('∠H(e^{j2πs})');
axis tight;

end;
