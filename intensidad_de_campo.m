% Parámetros
k = 8.99e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Culombios
[x, y] = meshgrid(-2:0.1:2, -2:0.1:2); % Definir una rejilla de puntos en el espacio

% Calcular el campo eléctrico
Ex = k * q * x ./ (x.^2 + y.^2).^1.5;
Ey = k * q * y ./ (x.^2 + y.^2).^1.5;

% Plotear el campo eléctrico
quiver(x, y, Ex, Ey);
xlabel('x');
ylabel('y');
title('Campo eléctrico generado por una carga puntual');
axis equal;


% Parámetros 3D
k = 8.99e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Culombios
[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2); % Definir una rejilla de puntos en el espacio

% Calcular el campo eléctrico
r = sqrt(x.^2 + y.^2 + z.^2);
Ex = k * q * x ./ (r.^3);
Ey = k * q * y ./ (r.^3);
Ez = k * q * z ./ (r.^3);

% Plotear el campo eléctrico en 3D
figure;
quiver3(x, y, z, Ex, Ey, Ez);
xlabel('x');
ylabel('y');
zlabel('z');
title('Campo eléctrico en 3D generado por una carga puntual');

% Parámetros
k = 8.99e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Culombios
r = 2;      % Radio de la rejilla esférica en metros

% Definir la rejilla esférica
theta = linspace(0, pi, 20); % Ángulo polar
phi = linspace(0, 2*pi, 40); % Ángulo azimutal
[theta, phi] = meshgrid(theta, phi);

% Convertir coordenadas esféricas a cartesianas
x = r .* sin(theta) .* cos(phi);
y = r .* sin(theta) .* sin(phi);
z = r .* cos(theta);

% Calcular el campo eléctrico en coordenadas esféricas
r = sqrt(x.^2 + y.^2 + z.^2);
Er = k * q * r.^-2; % Componente radial del campo eléctrico
Etheta = zeros(size(x)); % Componente theta (no hay dependencia de theta)
Ephi = zeros(size(x));   % Componente phi (no hay dependencia de phi)

% Convertir los componentes del campo eléctrico a coordenadas cartesianas
Ex = Er .* sin(theta) .* cos(phi) - Ephi .* sin(phi);
Ey = Er .* sin(theta) .* sin(phi) + Ephi .* cos(phi);
Ez = Er .* cos(theta);

% Plotear el campo eléctrico
figure;
quiver3(x, y, z, Ex, Ey, Ez);
xlabel('x');
ylabel('y');
zlabel('z');
title('Campo eléctrico en coordenadas esféricas generado por una carga puntual');


% Parámetros
k = 8.99e9; % Constante de Coulomb
q = 1e-9;   % Carga puntual en Coulombs
R = 2;      % Radio del cilindro en metros

% Definir la rejilla cilíndrica
rho = linspace(0, R, 20);    % Radio en el plano xy
phi = linspace(0, 2*pi, 40); % Ángulo azimutal
z = linspace(-2, 2, 20);      % Altura en el eje z
[rho, phi, z] = meshgrid(rho, phi, z);

% Convertir coordenadas cilíndricas a cartesianas
x = rho .* cos(phi);
y = rho .* sin(phi);

% Calcular el campo eléctrico en coordenadas cilíndricas
r = sqrt(x.^2 + y.^2 + z.^2);
Erho = k * q * rho ./ r.^3;  % Componente radial del campo eléctrico
Ephi = zeros(size(x));       % Componente azimutal (no hay dependencia de phi)
Ez = zeros(size(x));         % Componente axial (no hay dependencia de z)

% Convertir los componentes del campo eléctrico a coordenadas cartesianas
Ex = Erho .* cos(phi);
Ey = Erho .* sin(phi);

% Plotear el campo eléctrico
figure;
quiver3(x, y, z, Ex, Ey, Ez);
xlabel('x');
ylabel('y');
zlabel('z');
title('Campo eléctrico en coordenadas cilíndricas generado por una carga puntual');
