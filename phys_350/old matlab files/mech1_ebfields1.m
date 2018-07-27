t = 0:0.1:2*pi;
x = t - sin(t);
y = 1 - cos(t);

clf;
hold on;
plot(t,x);
plot(t,y);
h_legend = legend({'$x_n$','$y_n$'}, 'Interpreter','latex');
set(h_legend,'FontSize',16);

grid on;

xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);