% Constants (all in standard mks units)

E = 1.3e11; % Strength of electric field
rho_air = 1.2; % Air density for Stokes' Law
rho_oil = 870; % Oil density for calculating mass
nu = 1.3e-5; % Kinematic viscosity for Stokes' Law
g = 9.81; % Gravitational constant
pi = 3.141592654;

% Calculating charge for various values of terminal velocity and radius
% Droplet 1
v_t = -0.95;
R = 1.1e-4;

(6*pi*rho_air*nu*R*v_t)/(E)
(4*rho_oil*g*pi*R^3)/(3*E)
q = (6*pi*rho_air*nu*R*v_t)/(E) + (4*rho_oil*g*pi*R^3)/(3*E)

% Droplet 2
v_t = -0.92;
R = 0.8e-4;

q = (6*pi*rho_air*nu*R*v_t)/(E) - (4*rho_oil*g*pi*R^3)/(3*E)

% Droplet 3
v_t = -1.76;
R = 1.3e-4;

q = (6*pi*rho_air*nu*R*v_t)/(E) - (4*rho_oil*g*pi*R^3)/(3*E)

% Droplet 4
v_t = 2.04;
R = 0.65e-4;

q = (6*pi*rho_air*nu*R*v_t)/(E) - (4*rho_oil*g*pi*R^3)/(3*E)

% Plotting nondimensional functions

t = 0:0.1:10;
y = -exp(-t) - t + 1;
v = exp(-t) - 1;

clf;
hold on;
plot(t,y);
plot(t,v);
h_legend = legend({'$y_n$','$v_n$'}, 'Interpreter','latex');
set(h_legend,'FontSize',16);

grid on;

xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);