from math import *
from numpy import array

list = array([14, 15, 16, 16, 16, 22, 22, 24, 24, 25, 25, 25, 25, 25], int)
squared = list**2
mean = sum(list)/len(list)

# Part (a) find <j^2> and <j>^2
mean_of_squares = sum(squared)/len(squared)
square_of_mean = mean**2
print("Mean of squares is",mean_of_squares)
print("Square of means is",square_of_mean)

# Part (b) find delta_j for each j
delta_j = list - mean
print("Mean:",mean)
print("Array of delta_j:")
print(delta_j)
std_dev2 = sqrt(sum(delta_j**2)/len(delta_j))
print("Standard deviation from definition:", std_dev2)

# Part (c) find standard deviation with theorem and verify against (b) result
std_dev1 = sqrt(mean_of_squares - square_of_mean)
print("Standard deviation from theorem:", std_dev1)