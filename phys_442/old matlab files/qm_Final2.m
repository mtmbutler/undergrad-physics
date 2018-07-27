% Miles Moser
% QM Final Exam Problem 1 part C

order = 999; % number of terms of Fourier series to include
% In this case, when j is even, Bj is zero, so if you want 5 nonzero terms,
% order has to be 9 (1, 3, 5, 7, 9 being the j's that actually contribute)
x = 0:.001:1;

sum = 1/sqrt(2); % A0

for j = 1:order
    Bj = (sqrt(2)/(pi*j))*(1-cos(pi*j));
    sum = sum + Bj*sin(2*pi*j*x);
    plot(x, sum);
    hold on;
end

%clf; % clear the graph

grid on;

xlabel('x/a');
ylabel('sqrt(a)*g(x)');