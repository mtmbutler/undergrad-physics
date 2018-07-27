import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os


# Problem 1, part c

fig, ax = plt.subplots()

# order is the number of terms of Fourier series to include
# In this case, when j is even, Bj is zero, so if you want 5 nonzero terms,
# order has to be 9 (1, 3, 5, 7, 9 being the j's that actually contribute)

x = np.arange(0,1.001,0.001)
for order in [2, 4, 10, 20, 40]:
	sum = 1/np.sqrt(2) # B0
	for j in range(order):
		Bj = (np.sqrt(2)/(np.pi*(j+1)))*(1-np.cos(np.pi*(j+1)))
		sum = sum + Bj*np.sin(2*np.pi*(j+1)*x)
	ax.plot(x, sum, label=r'order = {}'.format(order-1))

ax.set(xlabel = '$x/a$', ylabel = r'$\psi$')
ax.grid()
ax.legend()

filename = "1c"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")


# Problem 1, part k
plt.cla()
x = np.arange(0.,1.001,0.001)
time = [0.0, 0.1, 0.5, 1.0, 2.0]
for t in time:
	psiSq = 4*((2/np.pi)**2)*((1/8)*(np.pi/2)**2 \
	    	+ (1/2)*(np.pi/2)*np.sin(2*np.pi*x)*np.cos(t) \
		    + (1/6)*(np.pi/2)*np.sin(6*np.pi*x)*np.cos(9*t) \
		    + (1/10)*(np.pi/2)*np.sin(10*np.pi*x)*np.cos(25*t) \
		    + (1/3)*np.sin(2*np.pi*x)*np.sin(6*np.pi*x)*np.cos(8*t) \
		    + (1/5)*np.sin(2*np.pi*x)*np.sin(10*np.pi*x)*np.cos(24*t) \
		    + (1/15)*np.sin(6*np.pi*x)*np.sin(10*np.pi*x)*np.cos(16*t) \
		    + (1/2)*(np.sin(2*np.pi*x))**2 \
		    + (1/18)*(np.sin(6*np.pi*x))**2 \
		    + (1/50)*(np.sin(10*np.pi*x))**2)
	ax.plot(x, psiSq, label=r'$t = {}$'.format(t))

ax.set(xlabel = '$x/a$', ylabel = r'$a\psi *\psi$')
ax.grid()
ax.legend()

filename = "1k"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")