import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os

order = 10

# Height
fig, ax = plt.subplots()
t = np.arange(0, 1, 0.01)
for alpha in range(order):
	y = (1-(10-alpha))*(np.exp(-t)-1)+t
	ax.plot(t, y, label=r'$\alpha = {}$'.format(10-alpha))

ax.set(xlabel = '$t_n$', ylabel = '$y_n$')
ax.grid()
ax.legend()

filename = "Stokes Law y plot"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")


# Velocity
plt.cla()
t = np.arange(0, 4, 0.01)
for alpha in range(order):
	v = (9-alpha)*np.exp(-t) + 1
	ax.plot(t, v, label=r'$\alpha = {}$'.format(9-alpha))

ax.set(xlabel = '$t_n$', ylabel = '$v_n$')
ax.grid()
ax.legend()

filename = "Stokes Law v plot"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")