order = 5; % number of terms of Fourier series to include
t = -0.5:.001:0.5;

i = 1; % begin index
sum = 0; % instantiate sum

while i < order % loop that increments the Fourier sum term
    sum = sum + (1/(1-4*(i^2)))*cos(4*pi*i*t);
    F = 1/pi + 0.5*sin(2*pi*t) + (2/pi)*sum; % Define forcing function
    plot(t,F);
    hold on;
    i = i + 1;
end

grid on;
xlabel({'$t_n$'}, 'Interpreter','latex','FontSize',20);
ylabel({'$F_n$'}, 'Interpreter','latex','FontSize',20,'rot',0);