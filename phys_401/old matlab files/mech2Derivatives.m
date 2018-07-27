function y_dot = Derivatives(t,y)

% y is a vector = [theta, omega]
% so y(1) = theta, y(2) = omega

alpha = 15^0.5;
theta_dot = y(2);
omega_dot = -1*alpha^2*y(1);

y_dot = [theta_dot; omega_dot];

end