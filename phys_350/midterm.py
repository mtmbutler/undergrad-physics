import matplotlib.pyplot as plt
plt.style.use('miles')
import numpy as np
import os

# Constants (all in standard mks units)

q_elec 	= 1.602e-19
E 		= 1.3e11		# Strength of electric field
rho_air = 1.20  		# Air density for Stokes' Law
rho_oil = 870			# Oil density for calculating mass
nu 		= 1.3e-5		# Kinematic viscosity for Stokes' Law
g 		= 9.81			# Gravitational constant
pi 		= 3.14159265

# Calculating charge for various values of terminal velocity and radius

print('v_t, R, q, q/q_elec')
# Droplet 1
v_t = -0.95;
R = 1.1e-4;

(6*pi*rho_air*nu*R*v_t)/(E)
(4*rho_oil*g*pi*R**3)/(3*E)
q = (6*pi*rho_air*nu*R*v_t)/(E) + (4*rho_oil*g*pi*R**3)/(3*E)

print(v_t, R, q, q/q_elec)

# Droplet 2
v_t = -0.92;
R = 0.8e-4;

q = (6*pi*rho_air*nu*R*v_t)/(E) - (4*rho_oil*g*pi*R**3)/(3*E)

print(v_t, R, q, q/q_elec)

# Droplet 3
v_t = -1.76;
R = 1.3e-4;

q = (6*pi*rho_air*nu*R*v_t)/(E) - (4*rho_oil*g*pi*R**3)/(3*E)

print(v_t, R, q, q/q_elec)

# Droplet 4
v_t = 2.04;
R = 0.65e-4;

q = (6*pi*rho_air*nu*R*v_t)/(E) - (4*rho_oil*g*pi*R**3)/(3*E)

print(v_t, R, q, q/q_elec)

# Plotting nondimensional functions

t = np.arange(0,10,0.1)
y = -np.exp(-t) - t + 1;
v = np.exp(-t) - 1;

fig, ax = plt.subplots()
line_y = ax.plot(t, y, label='$y_n$')
line_v = ax.plot(t, v, label='$v_n$')

ax.set(xlabel = '$t_n$')
ax.grid()
ax.legend()

filename = "midterm plot"
fig.savefig(filename + ".pdf")
os.system("open '" + filename + "'.pdf")