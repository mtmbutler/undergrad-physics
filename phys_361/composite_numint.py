# Composite numerical integration scheme for f(x) = sinx from 0 to pi
# Miles Moser
# PHYS 361

import numpy as np

N = 10000
sum = 0

# Simpson's 3/8ths rule as found in HW
for i in range(N + 1):
    sum = sum + (np.pi/(8*(N-1)))*(np.sin(i*np.pi/N) + 3*np.sin((2*i*np.pi/N \
          + (i+1)*np.pi/N)/3) + 3*np.sin((i*np.pi/N + 2*(i+1)*np.pi/N)/3) \
          + np.sin((i+1)*np.pi/N))

error = (sum-2)/2*100

# Print final result with error to Command Window
print('sum =',sum)
print('error =',error,'percent')