w_x = 5;
w_y = 9;
t = 0:0.01:2*pi;

x = cos(w_x*t);
y = cos(w_y*t);

figure
subplot(3,1,1)
plot(t,x,'lineWidth',2);
title({'$x$ vs. $t$'},'Interpreter','latex','FontSize',16);

subplot(3,1,2)
plot(t,y,'lineWidth',2,'Color',[0 0.5 0]);
title({'$y$ vs. $t$'},'Interpreter','latex','FontSize',16);

subplot(3,1,3)
plot(x,y,'lineWidth',2,'Color',[0.5 0 0.5]);
title({'$y$ vs. $x$'},'Interpreter','latex','FontSize',16);

grid on;