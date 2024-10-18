% Simulación Intensidad de Campo Electrico
% Universidad de Cuenca
% Teoria Electromagnetica I, 2024
% Profesor: Andres Cornejo


% Parámetros
k = 9e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Coulombs
[x, y] = meshgrid(-2:.1:2, -2:.1:2); % Definir una rejilla de puntos en el espacio
r = sqrt(x.^2 + y.^2);
% Calcular el campo eléctrico
Ex = k * q * x ./ (r.^3);
Ey = k * q * y ./ (r.^3);

% Plotear el campo eléctrico
figure;
quiver(x, y, Ex, Ey, LineWidth = 2.5, Color="blue");
xlabel('x');
ylabel('y');
title('Campo eléctrico generado por una carga puntual q1');
axis equal;
hold on;

% Graficar el punto en el origen
%scatter(0, 0, 'filled');  % 'filled' para rellenar el punto
plot(0, 0, 'ro', 'MarkerSize', 10); % Marcar la posición de la carga puntual 1
hold on;  % Mantener la gráfica actual

% Etiquetar el punto en el origen
text(0, 0, 'Carga: q1', 'HorizontalAlignment', 'right', 'VerticalAlignment', 'bottom');

% Ajustar los límites del eje para que el punto sea visible
xlim([-2, 2]);
ylim([-2, 2]);

% Mostrar la cuadrícula
grid on;
