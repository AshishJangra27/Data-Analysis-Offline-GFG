lst = [[1,2,3],[4,5,6],[7,8,9]]

print(lst)

# Accessing the Elements
print(lst)
print(lst[0][0])
print(lst[1][1])
print(lst[2][2])
print('-'*20)

# Modify the Values
print(lst)
lst[1][1] = 9
print(lst)
lst[1] = ['Ashish',25]
print(lst)
print('-'*20)


# Appending the Values
print(lst)
lst.append([9,10,11])
print(lst)
print('-'*20)

# Delete the Index
print(lst)
del lst[0]
print(lst)
print('-'*20)

# Modify the Values
lst = [1,2,3,4,5,[1,2,3],6]
print(lst)
print(len(lst))
print('-'*20)


# Reverse
lst = [[1,2,3],[4,5,6],[7,8,9]]
print(lst)
print(lst[::-1])
print('-'*20)

# Accessing all the Elements
lst = [[1,2,3],[4,6],[7,8,9]]
print(lst)
for i in lst:
    for j in i:
        print(j)
print('-'*20)
