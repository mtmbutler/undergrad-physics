t = 0:0.1:4*pi;

clf;

x = 5*(t - sin(t));
y = 5*(1 - cos(t));
plot(x,y);
hold on;
x = 2*(t - sin(t));
y = 2*(1 - cos(t));
plot(x,y);
hold on;
x = (t - sin(t));
y = (1 - cos(t));
plot(x,y);
hold on;
x = 0.5*(t - sin(t));
y = 0.5*(1 - cos(t));
plot(x,y);
hold on;
x = 0.1*(t - sin(t));
y = 0.1*(1 - cos(t));
plot(x,y);


h_legend = legend({'$\alpha = 5$','$\alpha = 2$','$\alpha = 1$','$\alpha = 0.5$','$\alpha = 0.1$',}, 'Interpreter','latex');
set(h_legend,'FontSize',16);

grid on;

xlabel({'$\frac{x}{\tau}$'}, 'Interpreter','latex','FontSize',20);
ylabel({'$\frac{y}{\tau}$'}, 'Interpreter','latex','FontSize',20,'rot',0);