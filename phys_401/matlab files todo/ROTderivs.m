function dydt=ROTderivs(t,y)
dydt = zeros(6,1);

I0 = 1;
I1 = I0;
I2 = I0;
DELTAI = .8;
I3 = I0-DELTAI;

w1DOT= -DELTAI*y(2)*y(3);
w2DOT = DELTAI*y(3)*y(1);
w3DOT = 0;

phiDOT = (1/sin(y(5)))*(y(1)*sin(y(6)) + y(2)*cos(y(6)));
thetaDOT = y(1)*cos(y(6)) - y(2)*sin(y(6));
psiDOT = (-1/sin(y(5)))*(y(1)*cos(y(5))*sin(y(6)) + y(2)*cos(y(5))*cos(y(6))) + y(3);

dydt = [w1DOT;w2DOT;w3DOT;phiDOT;thetaDOT;psiDOT];

end