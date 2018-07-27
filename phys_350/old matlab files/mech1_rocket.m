clf;
t = 0:0.01:0.9;

% Variable Beta Plot
% for B = [0.01, 0.1, 0.5, 0.9]
%     v = -log(1-t) - B*t;
%     plot(t,v,'lineWidth',2);
%     hold on;
% end
% h_legend = legend({'$\beta = 0.01$','$\beta = 0.1$','$\beta = 0.5$',...
%                    '$\beta = 0.9$'}, 'Interpreter','latex');
% set(h_legend,'FontSize',16);
% 
% Big Beta Plot
% B = 2;
% v = -log(1-t) - B*t;
% plot(t,v,'lineWidth',2);
% hold on;

grid on;
xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);
ylabel({'$v_n$'}, 'Interpreter','latex','FontSize',20,'rot',0);