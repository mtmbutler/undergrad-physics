x = 0:0.001:1;

% Define various potentials
U_flat = 2 + 0*x;
U_step = rectangularPulse(x);
U_sho = 4*(x-0.5).^2;
U_left = x;
U_right = 1-x;
%U_grav = -1./x;

clf;
hold on;

plot(x,U_flat);
plot(x,U_step);
plot(x,U_sho);
plot(x,U_left);
plot(x,U_right);
%plot(x,U_grav);

h_legend = legend({'$U_{flat}$','$U_{step}$','$U_{sho}$','$U_{left}$','$U_{right}$','$U_{grav}$'}, 'Interpreter','latex');
set(h_legend,'FontSize',16);

grid on;

xlabel({'$x$'}, 'Interpreter','latex','FontSize',20);