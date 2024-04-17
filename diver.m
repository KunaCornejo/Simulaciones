% Parámetros
figure(1)
k = 8.99e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Culombios
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2); % Definir una rejilla de puntos en el espacio

% Calcular el campo eléctrico
r = sqrt(x.^2 + y.^2);
Ex = k * q * x ./ (r.^3);
Ey = k * q * y ./ (r.^3);

% Plotear el campo eléctrico
quiver(x, y, Ex, Ey);
xlabel('x');
ylabel('y');
title('Campo eléctrico generado por una carga puntual');
axis equal;

D = divergence(x,y,Ex,Ey);
hold on
contour(x,y,D,'ShowText','on')

%figure(2)
[Cx,Cy]=curl(x,y,Ex,Ey); %calculo del rotacional
%surf(x,y,ang)

% Visualizar el rotacional en un gráfico 2D
hold on;
quiver(x, y, Cx,Cy);
xlabel('x');
ylabel('y');
title('Rotacional del campo vectorial en 2D');

figure(3)
% Parámetros
k = 8.99e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Coulombs

% Definir una rejilla de puntos en el espacio
[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);

% Calcular el campo eléctrico generado por una carga puntual
r = sqrt(x.^2 + y.^2 + z.^2);
Ex = k * q * x ./ (r.^3);
Ey = k * q * y ./ (r.^3);
Ez = k * q * z ./ (r.^3);

% Calcular el rotacional del campo eléctrico
[Cx, Cy, Cz] = curl(x, y, z, Ex, Ey, Ez);

% Visualizar el rotacional en un gráfico 3D
quiver3(x, y, z, Cx, Cy, Cz);
xlabel('x');
ylabel('y');
zlabel('z');
title('Rotacional del campo eléctrico generado por una carga puntual');
