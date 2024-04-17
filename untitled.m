% Definir la función que representa el campo eléctrico
% Parámetros
k = 8.99e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Culombios
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2); % Definir una rejilla de puntos en el espacio

% Calcular el campo eléctrico
Ex = k * q * x ./ (x.^2 + y.^2).^1.5;
Ey = k * q * y ./ (x.^2 + y.^2).^1.5;



% Graficar el campo eléctrico
quiver(x, y, Ex, Ey);
xlabel('X');
ylabel('Y');
title('Campo eléctrico vectorial estático');

% Calcular la divergencia del campo eléctrico
div_E = divergence(x, y, Ex, Ey);

% Calcular el rotacional del campo eléctrico
[Cx,Cy]=curl(x,y,Ex,Ey); %calculo del rotacional

% Graficar la divergencia
figure;
surf(x, y, div_E);
xlabel('X');
ylabel('Y');
title('Divergencia del campo eléctrico');
figure;
contour(x, y, div_E);

% Graficar el rotacional
figure;
surf(x, y, Cx, Cy);
xlabel('X');
ylabel('Y');
title('Rotacional del campo eléctrico');


figure;
quiver(x, y, Cx, Cy);
