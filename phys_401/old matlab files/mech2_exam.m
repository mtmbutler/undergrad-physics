% Miles Moser
% Mechanics II Exam
% April 20, 2017
% This script takes the two first-order differential equations from the
% exam, as written in the file Derivatives.m, and compares the Euler
% method solutions and the ode45 Runge-Kutta solutions to each other and
% to the actual analytical solution.

% Frequency and period of oscillation
alpha = 15^0.5;
P = 2*pi/alpha;

% Time boundary values and step size
t_0 = 0;
t_f = 5*P;
dt = 0.03*P;
t = t_0:dt:t_f;

% Initial conditions
theta_0 = 0.5;
omega_0 = 0;
y_0 = [theta_0; omega_0];

%==============%
% EULER METHOD %
%==============%

[m,n] = size(t);
sz = size(t);
theta_e = zeros(sz);
omega_e = zeros(sz);
theta_e(1,1) = theta_0;
omega_e(1,1) = omega_0;

for i = 1:n-1
    theta_e(1,i+1) = theta_e(1,i) + dt*omega_e(1,i);
    omega_e(1,i+1) = omega_e(1,i) - alpha^2*dt*theta_e(1,i);
end

% Plot output for omega vs time
plot(t, omega_e,'LineWidth',2);

%==============%
% ode45 METHOD %
%==============%
[T,Y] = ode45(@401_derivatives, t, y_0);

% Plot output for omega vs time
plot(T, Y(:,2),'LineWidth',2);

%=====================%
% ANALYTICAL SOLUTION %
%=====================%

theta_a = 0.5*cos(alpha*t);
omega_a = -0.5*alpha*sin(alpha*t);

% Plot output for theta vs time


% Plot output for omega vs time
plot(t, omega_a,'LineWidth',2);

%=======%
% PLOTS %
%=======%

fntsz = 10;
figure

subplot(1,3,1)
hold on;
grid on;
plot(t, theta_e,'LineWidth',2);
plot(T, Y(:,1),'LineWidth',2);
plot(t, theta_a, 'LineWidth',2);
title('$\theta$ vs. $t$','Interpreter','latex');
xlabel('$t$','Interpreter','latex','FontSize',fntsz,'Interpreter','latex');
ylabel('$\theta$','Interpreter','latex','FontSize',fntsz,'Interpreter','latex','Rotation',0);
h_legend = legend({'Euler','ode45','Analytical'},'FontSize',fntsz,'Interpreter','latex');

subplot(1,3,2)
hold on;
grid on;
plot(t, omega_e,'LineWidth',2);
plot(T, Y(:,2),'LineWidth',2);
plot(t, omega_a, 'LineWidth',2);
title('$\omega$ vs. $t$','Interpreter','latex');
xlabel('$t$','Interpreter','latex','FontSize',fntsz,'Interpreter','latex');
ylabel('$\omega$','Interpreter','latex','FontSize',fntsz,'Interpreter','latex','Rotation',0);
h_legend = legend({'Euler','ode45','Analytical'},'FontSize',fntsz,'Interpreter','latex');

subplot(1,3,3)
hold on;
grid on;
plot(theta_e, omega_e,'LineWidth',2);
plot(Y(:,1), Y(:,2),'LineWidth',2);
plot(theta_a, omega_a, 'LineWidth',2);
title('$\omega$ vs. $\theta$','Interpreter','latex');
xlabel('$\theta$','Interpreter','latex','FontSize',fntsz,'Interpreter','latex');
ylabel('$\omega$','Interpreter','latex','FontSize',fntsz,'Interpreter','latex','Rotation',0);
h_legend = legend({'Euler','ode45','Analytical'},'FontSize',fntsz,'Interpreter','latex');