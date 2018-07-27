function y_dot = mech2FinalDerivs(t,y)

% y is a vector = [theta, omega]
% so y(1) = theta, y(2) = omega

theta_dot = y(2);
omega_dot = cos(y(1))/(sin(y(1))).^3 + sin(y(1));

y_dot = [theta_dot; omega_dot];

end