% Grafico del modulo y fase de la TFTD
function graficarTFTD(X)
ds = 0.001;
s = -0.5:ds:0.5;

% módulo
figure;
subplot(2,1,1);
plot(s, abs(X));
title('Módulo de la TFTD');
xlabel('s');
ylabel('|X(e^{j2πs})|');
axis tight;
% fase
subplot(2,1,2);
plot(s, angle(X));
title('Fase de la TFTD');
xlabel('s');
ylabel('∠X(e^{j2πs})');
axis tight;

  end
