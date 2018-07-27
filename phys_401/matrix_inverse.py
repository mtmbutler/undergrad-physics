import sympy as sp

a = sp.Symbol('a')
b = sp.Symbol('b')
c = sp.Symbol('c')
d = sp.Symbol('d')
e = sp.Symbol('e')

A = [[a, b, c], \
		[b, c, d], \
		[d, e, 1]]

print(sp.Matrix(A))
print(sp.Matrix(A).inv())

# The result might be right, but it's sure as hell not useful
# Maybe there's a function to take out common factors?