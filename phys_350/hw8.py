import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os

t = np.arange(0, 3, 0.1)
y = np.log((1+np.exp(-2*t))/2) + t

fig, ax = plt.subplots()
ax.plot(t,y)

ax.set(xlabel = '$t_n$', ylabel = '$y_n$')
ax.grid()

filename = "hw8"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")