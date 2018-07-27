% Create scatterplot of data
t = [0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9,1.0];
y = [1.67203
     1.79792
     2.37791
     2.66408
     2.11245
     2.43969
     1.88843
     1.59447
     1.79340
     1.07810
     0.21066];
scatter(t,y);
hold on;

% Plot parabolic fit on top of scatterplot
t = 0:0.02:1;
y = -5.20174*t.^2 + 3.90148*t+1.654338;
plot(t,y,'lineWidth',2);
grid on;
xlabel({'$t$'}, 'Interpreter','latex','FontSize',20);
ylabel({'$y$'}, 'Interpreter','latex','FontSize',20,'rot',0);