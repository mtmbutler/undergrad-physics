t = 0:0.1:4*pi;

clf;

x = 5*(t - sin(t));
plot(t,x);
hold on;
x = 2*(t - sin(t));
plot(t,x);
hold on;
x = (t - sin(t));
plot(t,x);
hold on;
x = 0.5*(t - sin(t));
plot(t,x);
hold on;
x = 0.1*(t - sin(t));
plot(t,x);


h_legend = legend({'$\alpha = 5$','$\alpha = 2$','$\alpha = 1$','$\alpha = 0.5$','$\alpha = 0.1$',}, 'Interpreter','latex')
set(h_legend,'FontSize',16);

grid on;

xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);
ylabel({'$\frac{x}{\tau}$'}, 'Interpreter','latex','FontSize',20,'rot',0);