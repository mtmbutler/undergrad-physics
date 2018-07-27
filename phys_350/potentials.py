import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os


x = np.arange(0, 1, 0.002)
U = [] # List of potential functions
names = [] # List of names for potential functions

U.append(-2 + 0*x)				# flat
names.append('flat')
U.append(3*np.ceil(x-0.5)-1)	# step
names.append('step')
U.append(16*(x-0.5)**2 - 3)		# sho
names.append('sho')
U.append(-4 + 6*x)				# left
names.append('left')
U.append(2 - 6*x)				# right
names.append('right')
U.append(-1/(10*(x+0.002)))		# inverse square force
names.append('inverse square')

fig, ax = plt.subplots()
for i in range(len(U)):
	ax.plot(x, U[i], label=r'{}'.format(names[i]))

plt.ylim((-5,3))

ax.set(xlabel = '$x$', ylabel = '$U$')
ax.grid()
lgd = ax.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

filename = "potentials"
fig.savefig(filename + ".pdf", bbox_extra_artists=(lgd,), bbox_inches='tight')
os.system("open '" + filename + "'.pdf")