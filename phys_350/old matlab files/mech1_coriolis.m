% This program graphs the solutions to the Coriolis force problem

clf;
t = 0:0.1:5;
interval = pi/3.5;

% Uncomment below for parametric plots
% for B = 0:interval:(2*pi - interval)
%     x = cos(B) - cos(t+B);
%     y = -sin(B) + sin(t+B);
%     quiver(x,y,gradient(x),gradient(y),'lineWidth',2); % Arrow parametric plot; reduce t
%                                          % resolution to use this
%     %plot(x,y,'lineWidth',2); % Curve parametric plot
%     hold on;
% end
% grid on;
% xlabel({'$x_n$'}, 'Interpreter','latex','FontSize',20);
% ylabel({'$y_n$'}, 'Interpreter','latex','FontSize',20,'rot',0);

% Uncomment below for x and y vs. t plots
B = pi/2;
x = cos(B) - cos(t+B);
y = -sin(B) + sin(t+B);
plot(t,x,'lineWidth',2);
hold on;
plot(t,y,'lineWidth',2);
h_legend = legend({'$x_n$','$y_n$'}, 'Interpreter','latex');
set(h_legend,'FontSize',16);
grid on;
xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);