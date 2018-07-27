import sympy as sp

a = sp.Symbol('a')
b = sp.Symbol('b')

# Either sympy can't do this one, or the solution is just very ugly
# I can't honestly remember whether matlab can do it either
# A = [	[1, 1, 1, 1, b-a], \
# 	 	[a, (2*a+b)/3, (a+2*b)/3, b, (b**2-a**2)/2], \
# 	 	[a**2, ((2*a+b)/3)**2, ((a+2*b)/3)**2, b**2, (b**3-a**3)/3], \
# 	 	[a**3, ((2*a+b)/3)**3, ((a+2*b)/3)**3, b**3, (b**4-a**4)/4]]

A = [[1, 1, b-a], \
	[a, b, (b**2-a**2)/2]]

print(sp.Matrix(A))
print(sp.Matrix(A).rref())