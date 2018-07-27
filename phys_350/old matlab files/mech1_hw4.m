% Actually hw4

% Known constants
m = 1;
n = 1;
k = 1;
A = 0.1; %making this small so the external forcing doesn't overwhelm the oscillations too quickly
B = 0.1;
x0 = 1;
v0 = 1;

% Simplifying constants
a = A/k;
b = (B*k - 2*A*n)/(k^2);
c = (2*A*n^2 - 2*A*k*m - B*k*n)/(k^3);
r1 = (-n + sqrt(n^2 - 4*m*k))/(2*m);
r2 = (-n - sqrt(n^2 - 4*m*k))/(2*m);
c1 = (v0 - b - x0*r2 + c*r2)/(r1 - r2);
c2 = x0 - c1 - c;

t = 0:0.1:10;
x = c1*exp(r1*t) + c2*exp(r2*t) + a*t.^2 + b*t + c;

clf;

plot(t,x)
grid on;

xlabel('t');
ylabel('x');