import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os

# Known constants
m = 1.
n = 3.
k = 1.
A = 0.1 # Making this small so the external forcing doesn't overwhelm the oscillations too quickly
B = 0.1
x0 = 1.
v0 = 1.

# Simplifying constants
a = A/k
b = (B*k - 2*A*n)/(k**2)
c = (2*A*n**2 - 2*A*k*m - B*k*n)/(k**3)
print(n**2 - 4*m*k)
r1 = (-n + np.sqrt(n**2 - 4*m*k))/(2*m)
r2 = (-n - np.sqrt(n**2 - 4*m*k))/(2*m)
c1 = (v0 - b - x0*r2 + c*r2)/(r1 - r2)
c2 = x0 - c1 - c

t = np.arange(0,10,0.1)
x = c1*np.exp(r1*t) + c2*np.exp(r2*t) + a*t**2 + b*t + c

fig, ax = plt.subplots()
ax.plot(t,x)

ax.set(xlabel = '$t$', ylabel = '$x$')
ax.grid()

filename = "hw4"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")