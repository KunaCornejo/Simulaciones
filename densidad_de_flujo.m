% Parámetros
mu_0 = 4*pi*1e-7; % Permeabilidad del vacío
I = 1; % Corriente en Amperios
a = 1; % Longitud del cable en metros

% Definir el espacio tridimensional
[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);

% Calcular la densidad de flujo magnético (campo magnético)
r = sqrt(x.^2 + y.^2 + z.^2);
Bx = (mu_0 * I * a^2) ./ (2 * pi * r.^3) .* (y.*z ./ r);
By = (mu_0 * I * a^2) ./ (2 * pi * r.^3) .* (-x.*z ./ r);
Bz = (mu_0 * I * a^2) ./ (2 * pi * r.^3) .* (x.*y ./ r);

% Plotear la densidad de flujo magnético en 3D
figure;
quiver3(x, y, z, Bx, By, Bz);
xlabel('x');
ylabel('y');
zlabel('z');
title('Densidad de Flujo Magnético en 3D generado por una corriente');

% Parámetros
mu_0 = 4*pi*1e-7; % Permeabilidad del vacío
I = 1; % Corriente en Amperios
a = 1; % Longitud del cable en metros

% Definir el espacio bidimensional
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2);

% Calcular la densidad de flujo magnético (campo magnético)
r = sqrt(x.^2 + y.^2);
Bx = (mu_0 * I * a^2) ./ (2 * pi * r.^3) .* (y ./ r);
By = (mu_0 * I * a^2) ./ (2 * pi * r.^3) .* (-x ./ r);

% Calcular la intensidad de flujo magnético
Phi = sum(Bx(:)) * (0.1^2); % Suma de Bx en toda la superficie (suponiendo un cuadrado de lado 0.1)

% Mostrar el resultado
disp(['La intensidad de flujo magnético es: ', num2str(Phi), ' Weber']);

% Plotear la densidad de flujo magnético en 2D
figure;
quiver(x, y, Bx, By);
xlabel('x');
ylabel('y');
title('Densidad de Flujo Magnético en 2D generado por una corriente');