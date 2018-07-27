# Miles Moser
# Mechanics II Exam
# April 20, 2017
# This script takes the two first-order differential equations from the
# exam, as written in the file Derivatives.m, and compares the Euler
# method solutions and the ode45 Runge-Kutta solutions to each other and
# to the actual analytical solution.

import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os
from scipy.integrate import odeint

# Frequency and period of oscillation
alpha = np.sqrt(15)
P = 2*np.pi/alpha;

# Time boundary values and step size
t_0 = 0.
t_f = 5*P
dt = 0.03*P
t = np.arange(t_0,t_f+dt,dt)

# Initial conditions
theta_0 = 0.5
omega_0 = 0.

#==============#
# EULER METHOD #
#==============#

theta_e = []
omega_e = []
theta_e.append(theta_0)
omega_e.append(omega_0)

for i in range(1,len(t)):
	theta_e.append(theta_e[i-1] + dt*omega_e[i-1])
	omega_e.append(omega_e[i-1] - alpha**2*dt*theta_e[i-1])

#==================#
# ode45-ish METHOD #
#==================#

def derivs(y,t,const,unused):
	theta_o1, omega_o1 = y
	dydt = [omega_o1, -1*const**2*theta_o1]
	return dydt

y0 = [theta_0, omega_0]
sol = odeint(derivs, y0, t, args=(alpha,0))

theta_o = sol[:,0]
omega_o = sol[:,1]

#=====================#
# ANALYTICAL SOLUTION #
#=====================#

theta_a = 0.5*np.cos(alpha*t);
omega_a = -0.5*alpha*np.sin(alpha*t);

#=======#
# PLOTS #
#=======#

fig = plt.figure(figsize=(5,9))

ax1 = fig.add_subplot(311)
ax2 = fig.add_subplot(312)
ax3 = fig.add_subplot(313)

ax1.plot(t,theta_e,label = r'Euler')
ax1.plot(t,theta_o,label = r'ode45', lineWidth=3)
ax1.plot(t,theta_a,label = r'Analytical', lineWidth=1)
ax1.set(xlabel = '$t$', ylabel = r'$\theta$')
ax1.grid()
lgd1 = ax1.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

ax2.plot(t,omega_e,label = r'Euler')
ax2.plot(t,omega_o,label = r'ode45', lineWidth=3)
ax2.plot(t,omega_a,label = r'Analytical', lineWidth=1)
ax2.set(xlabel = '$t$', ylabel = r'$\omega$')
ax2.grid()
lgd2 = ax2.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

ax3.plot(theta_e,omega_e,label = r'Euler')
ax3.plot(theta_o,omega_o,label = r'ode45', lineWidth=3)
ax3.plot(theta_a,omega_a,label = r'Analytical', lineWidth=1)
ax3.set(xlabel = r'$\theta$', ylabel = r'$\omega$')
ax3.grid()
lgd3 = ax3.legend(bbox_to_anchor=(1.02, 1), loc=2, borderaxespad=0.)

filename = "midterm"
fig.savefig(filename + ".pdf", bbox_extra_artists=(lgd1,lgd2,lgd3,), bbox_inches='tight')
os.system("open '" + filename + "'.pdf")