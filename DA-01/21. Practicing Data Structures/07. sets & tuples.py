# Creating a set
my_set = {1,2,3,4,5}
print(my_set)
print(type(my_set))
print('-'*20)

# Adding
print(my_set)
my_set.add(6)
print(my_set)
print('-'*20)

# Pop
print(my_set)
popped_element = my_set.pop()
print(popped_element)
print('-'*20)

# Removing
print(my_set)
my_set.discard(3)
print(my_set)
print('-'*20)

# Iterating
print(my_set)
for i in my_set:
    print(i)
print('-'*20)

# Checking the Value
print(my_set)
print(2 in my_set)
print(3 in my_set)
print(4 in my_set)
print('-'*20)

# Set Operations
set_1 = {1,2,3,4,5}
set_2 = {4,5,6,7,8}
print('Union : ', set_1 | set_2 )
print('Intersection : ', set_1 & set_2 )
print('Difference : ', set_1 - set_2 )
print('Difference : ', set_2 - set_1 )
print('Symetric Diff : ', set_1 ^ set_2)
print('-'*20)

# Clearing
print(my_set)
my_set.clear()
print(my_set)
print('-'*20)

# Touple Initialization
tpl = (1,2,3,4,5)
print(tpl)
print('-'*20)

# Accessing
tpl = (1,2,3,4,5)
print(tpl[0])
print('-'*20)

# Slicing
tpl = (1,2,3,4,5)
print(tpl[1:3])
print('-'*20)

# Concatenate
tpl1 = (1,2,3,4)
tpl2 = (4,5,6,7)
tpl = tpl1 + tpl2
print(tpl)
print('-'*20)

# Iterating
print(tpl)
for i in tpl:
    print(i)
print('-'*20)

# Checking the Element
print(tpl)
print(2 in tpl)
print(3 in tpl)
print(4 in tpl)
print('-'*20)

# Checking the Count
print(tpl)
print(tpl.count(4))
print('-'*20)

# Finding the Index
print(tpl)
print(tpl.index(3))
print('-'*20)

# Multiplying the Touple
print(tpl)
print(tpl*3)
print('-'*20)
