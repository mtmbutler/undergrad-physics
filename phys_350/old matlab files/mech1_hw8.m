t = 0:0.1:3;
y = log((1 + exp(-2*t))/2) + t;

clf;

plot(t,y)
grid on;

xlabel('t/tau');
ylabel('y/yTwiddle');