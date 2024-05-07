# 1. Ways to assign values to a variable
# Basic variable assignment
my_variable = 42

# Multiple assignment
x = y = z = 0
a, b, c = 1, 2, 3

# Assignment with unpacking
data = [1, 2, 3]
x, y, z = data

# User Input
a = int(input('enter 1st number: '))
a = int(input('enter 2nd number: '))
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a // b)
print('-' * 20)

# 2. Variable naming conventions
# snake_case
my_variable_name = 42
# camelCase
myVariableName = "Hello, world!"
# PascalCase
MyClassName = "ThisIsPascalCase"


# 3. Arithmetic operations with assignment

print('-'*20)
n = 7
n += 1
print(n)
n -= 1
print(n)
n  *= 2
print(n)
n /= 2
print(n)
n //= 2
print(n)
print('-'*20)
