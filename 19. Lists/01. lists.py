lst = ['Ashish','Ankur','Riya','Adarsh','Parag','Avneet']

print(lst)

# Access the Elements through Indexing
print(lst[0])
print(lst[4])
print(lst[-1])
print('-'*20)

# Modify values
print(lst)
lst[2] = 'Sakshi'
print(lst)
print('-'*20)

# Slicing
print(lst)
print(lst[1:4])
print('-'*20)

# Reverse a String
print(lst)
print(lst[::-1])
print('-'*20)

# Reverse a String with steps
print(lst)
print(lst[::-2])
print('-'*20)

# Appending
print(lst)
lst.append('Ankit')
print(lst)
print('-'*20)

# Removing
print(lst)
lst.remove('Ankit')
print(lst)
print('-'*20)

# length
print(lst)
print(len(lst))
print('-'*20)

# Sorting
lst = [3,5,6,5,4,3,56,8,1]
print(lst)
print(sorted(lst))
print('-'*20)

# Find Element
lst = ['Ashish','Ankur','Riya','Adarsh','Parag','Avneet']
print(lst.index('Adarsh'))
print('-'*20)

# Count
lst = ['Ashish','Ankur','Riya','Adarsh','Parag','Avneet']
print(lst.count('Adarsh'))
print('-'*20)

# Extending
print(lst)
lst.extend(['Arpita','Shambhavi','Kritika'])
print(lst)
print('-'*20)

# Fiding Maximum and Minumum
lst = [3,5,6,5,4,3,56,8,1]
print(lst)
print(min(lst))
print(max(lst))
print('-'*20)

# Iterating  the Elements fo list | Direct
print(lst)
for i in lst:
    print(i)
print('-'*20)

# Iterating  the Elements fo list | Indexing
print(lst)
for i in range(len(lst)):
    print(i, lst[i])
print('-'*20)

# Iterating  the Elements fo list in reverse
print(lst)
for i in range(len(lst)-1, -1, -1):
    print(i, lst[i])
print('-'*20)
