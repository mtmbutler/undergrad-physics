% Miles Moser
% Mechanics II Final
% May 8, 2017
% This script takes the two first-order differential equations from the
% exam, as written in the file mech2FinalDerivs.m, and integrates them
% with ode45, plotting the results.

% Time boundary values and step size
t_0 = 0;
t_f = 7;
dt = 0.01;
t = t_0:dt:t_f;

% Initial conditions
theta_0 = pi/4;
omega_0 = 0.5;
y_0 = [theta_0; omega_0];

%==============%
% ode45 METHOD %
%==============%
[T,Y] = ode45(@mech2FinalDerivs, t, y_0);

% Plot results (theta, then omega)
plot(T, Y(:,1),'LineWidth',2);
hold on;
plot(T, Y(:,2),'LineWidth',2);

fntsz = 24;
xlabel('$t$','Interpreter','latex','FontSize',fntsz,'Interpreter','latex');
h_legend = legend({'$\theta$','$\omega$'},'FontSize',fntsz,...
                   'Interpreter','latex');