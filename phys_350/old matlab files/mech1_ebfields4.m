t = 0:0.1:4*pi;

clf;

y = 5*(1 - cos(t));
plot(t,y);
hold on;
y = 2*(1 - cos(t));
plot(t,y);
hold on;
y = (1 - cos(t));
plot(t,y);
hold on;
y = 0.5*(1 - cos(t));
plot(t,y);
hold on;
y = 0.1*(1 - cos(t));
plot(t,y);


h_legend = legend({'$\alpha = 5$','$\alpha = 2$','$\alpha = 1$','$\alpha = 0.5$','$\alpha = 0.1$',}, 'Interpreter','latex')
set(h_legend,'FontSize',16);

grid on;

xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);
ylabel({'$\frac{y}{\tau}$'}, 'Interpreter','latex','FontSize',20,'rot',0);