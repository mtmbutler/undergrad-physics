import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os

w_x = 5
w_y = 9
t = np.arange(0,2*np.pi,0.01)

x = np.cos(w_x*t)
y = np.cos(w_y*t)

fig = plt.figure(figsize=(5,9))

ax1 = fig.add_subplot(311)
ax2 = fig.add_subplot(312)
ax3 = fig.add_subplot(313)

ax1.plot(t,x,label = '$x$ vs $t$')
ax1.set(xlabel = '$t$', ylabel = '$x$')
ax1.grid()
lgd1 = ax1.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

ax2.plot(t,y,color = (0.,0.5,0.),label = '$y$ vs $t$')
ax2.set(xlabel = '$t$', ylabel = '$y$')
ax2.grid()
lgd2 = ax2.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

ax3.plot(x,y,color = (0.5,0.,0.5),label = '$y$ vs $x$')
ax3.set(xlabel = '$x$', ylabel = '$y$')
ax3.grid()
lgd3 = ax3.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

filename = "lissajous"
fig.savefig(filename + ".pdf", bbox_extra_artists=(lgd1,lgd2,lgd3,), bbox_inches='tight')
os.system("open '" + filename + "'.pdf")