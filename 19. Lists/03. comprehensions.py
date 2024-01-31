
# Square all the elements of a list
lst = [1,2,3,4,5,6]
print(lst)
lst = [i**2 for i in lst]
print(lst)
lst = [i**2 for i in lst]
print(lst)
print('-'*20)

# Finding first 10 even numbers
print([i for i in range(21) if i%2 == 0])
print('-'*20)

# Finding first 10 even numbers and square it
print([i**2 for i in range(21) if i%2 == 0])
print('-'*20)

# Multi-dimensional lists
lst = [[j for j in range(1,4)] for i in range(3)]
print([[j for j in range(1,4)] for i in range(3)])
print('-'*20)

# Accessing all the elements of a list
print(lst)
print([num for row in lst for num in row])
