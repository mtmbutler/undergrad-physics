import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os
from scipy.integrate import odeint

# Time boundary values and step size
t_0 = 0
t_f = 7
dt = 0.01
t = np.arange(t_0,t_f+dt,dt)

# Initial conditions
theta_0 = np.pi/4;
omega_0 = 0.5;
y0 = [theta_0, omega_0]

# Define theta, omega vector y to pass onto odeint
def derivs(y,t):
	theta_o1, omega_o1 = y
	dydt = [omega_o1, np.cos(theta_o1)/np.sin(theta_o1)**3 + np.sin(theta_o1)]
	return dydt

# Solve
sol = odeint(derivs, y0, t)

# Plot results, save to file and open in terminal
fig, ax = plt.subplots()
line_theta = ax.plot(t, sol[:,0], label=r'$\theta$')
line_omega = ax.plot(t, sol[:,1], label=r'$\omega$')

ax.set(xlabel = '$t$')
ax.grid()
ax.legend()

filename = "final"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")