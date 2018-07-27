clf;
t = 0:0.01:pi
x = cosh(t);
v = sinh(t);
plot(t,x,'lineWidth',2);
hold on;
plot(t,v,'lineWidth',2);
h_legend = legend({'$x_n$','$v_n$'}, 'Interpreter','latex');
set(h_legend,'FontSize',16);
grid on;
xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);