% Composite numerical integration scheme for f(x) = sinx from 0 to pi
% Miles Moser
% PHYS 361

N = 4
sum = 0;

% Simpson's 3/8ths rule as found in HW
for i = 0:N
    sum = sum + (pi/(8*(N-1)))*(sin(i*pi/N) + 3*sin((2*i*pi/N ...
          + (i+1)*pi/N)/3) + 3*sin((i*pi/N + 2*(i+1)*pi/N)/3) ...
          + sin((i+1)*pi/N));
end

% Print final result with error to Command Window
sum
error = (sum-2)/2*100