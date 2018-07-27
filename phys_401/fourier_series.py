import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os

fig, ax = plt.subplots()

order = 5
t = np.arange(-0.5, 0.5, 0.001)
sum = 0
for i in range(1, order):
	sum = sum + (1/(1-4*(i**2)))*np.cos(4*np.pi*i*t)
	F = 1/np.pi + 0.5*np.sin(2*np.pi*t) + (2/np.pi)*sum
	ax.plot(t, F, label='$i = {}$'.format(i))

ax.set(xlabel = '$t$', ylabel = '$F$')
ax.grid()
ax.legend()
# lgd = ax.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

filename = "fourier_series"
fig.savefig(filename + ".pdf") #, bbox_extra_artists=(lgd,), bbox_inches='tight')
os.system("open '" + filename + "'.pdf")