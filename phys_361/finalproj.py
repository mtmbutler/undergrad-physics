import numpy as np

a = (5/9)*np.exp(-1*(1.5-np.sqrt(3/5)/2)**2)
b = (8/9)*np.exp(-2.25)
c = (5/9)*np.exp(-1*(1.5+np.sqrt(3/5)/2)**2)

x = 0.5*(a+b+c)

print('a =', a)
print('b =', b)
print('c =', c)
print('x =', x)