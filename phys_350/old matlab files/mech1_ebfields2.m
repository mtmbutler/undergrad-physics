t = 0:0.1:4*pi;
x = t - sin(t);
y = 1 - cos(t);

clf;
hold on;
plot(x,y);

grid on;

xlabel({'$x_n$'}, 'Interpreter','latex','FontSize',20);
ylabel({'$y_n$'}, 'Interpreter','latex','FontSize',20,'rot',0);