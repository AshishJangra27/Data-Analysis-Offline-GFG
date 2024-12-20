# Find the sum of first 100 prime numbers

lst =  [[1,2,3,4],
        [4,5,6,5],
        [7,8,9,4],
        [5,3,2,3]]


# 1. Sum of diagonal element top left to bototm right

s_1 = 0
for i in range(len(lst)):
    for j in range(len(lst)):
        if i == j:
            s_1 += lst[i][j]
print(s_1)
print('-'*20)

# 2. Sum of opposite diagonal element top lef tot bototm right

s_2 = 0
for i in range(len(lst)):
    for j in range(len(lst)):
        if i+j == len(lst) - 1:
            s_2 += lst[i][j]
print(s_2)
print('-'*20)
print(s_1 + s_2)
print('-'*20)

if len(lst)%2 == 0:
    print(s_1 + s_2)
else:
    center = int((len(lst) - 1)/2)
    print(s_1 + s_2 - lst[center][center])


print('-'*20)


s = 0
for i in range(len(lst)):
    for j in range(len(lst)):
        if (i == j) or (i+j == len(lst) - 1):
            s += lst[i][j]
            
print(s)