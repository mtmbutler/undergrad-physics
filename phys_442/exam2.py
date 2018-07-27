import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os


# Problem 3, part b

fig, ax = plt.subplots()

# order is the number of terms of Fourier series to include
# In this case, when j is even, Bj is zero, so if you want 5 nonzero terms,
# order has to be 9 (1, 3, 5, 7, 9 being the j's that actually contribute)

x = np.arange(0,1.001,0.001)
for maxj in [1, 2, 3, 5, 20]:
	sum = 2/3 # B0
	for j in range(1, maxj+1):
		Aj = (2/(np.pi*j)**2)*np.cos(np.pi*j)
		Bj = (2/(np.pi*j)**3)*np.cos(np.pi*j) - (2/(np.pi*j)**3) - 1/(np.pi*j)
		sum = sum + Aj*np.cos(2*np.pi*j*x) + Bj*np.sin(2*np.pi*j*x)
	ax.plot(x, sum, label=r'j = {}'.format(maxj))

ax.set(xlabel = '$x/a$', ylabel = r'$f(x/a)$')
ax.grid()
ax.legend()

filename = "3b"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")


# big j (to test if limit is good)
maxj = 1000
plt.cla()

sum = 2/3 # B0
for j in range(1, maxj+1):
	Aj = (2/(np.pi*j)**2)*np.cos(np.pi*j)
	Bj = (2/(np.pi*j)**3)*np.cos(np.pi*j) - (2/(np.pi*j)**3) - 1/(np.pi*j)
	sum = sum + Aj*np.cos(2*np.pi*j*x) + Bj*np.sin(2*np.pi*j*x)
ax.plot(x, sum, label=r'j = {}'.format(maxj))

plt.ylim((0,1.2))
ax.set(xlabel = '$x/a$', ylabel = r'$f(x/a)$')
ax.grid()
ax.legend()

filename = "3b_bigj"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")