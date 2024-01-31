# Initializing the Dictionary
dct = {1 : 'Ashish', 2 : 'Avneet', 3 : 'Riya', 4 : 'Ankur', 5 : 'Sakshi'}
print(dct)
print('-'*50)

# Accessing the elements
print(dct)
print(dct[1])
print(dct.get(1))
print('-'*50)

# Adding and updating the key-value pairs
print(dct)
dct[6] = 'Sadaf'
print(dct)
dct[6] = 'Prakash'
print(dct)
del dct[6]
print(dct)
print('-'*50)

# Cleaning the Dictionary
print(dct)
dct.clear()
print(dct)
print('-'*50)

# Iterating through the Dictionary
dct = {1 : 'Ashish', 2 : 'Avneet', 3 : 'Riya', 4 : 'Ankur', 5 : 'Sakshi'}
print(dct)
print(dct.keys())
print(dct.values())

for k in dct.keys():
    print(k, dct[k])
print('-'*50)

print(dct.items())
for k,v in dct.items():
    print(k,v)
print('-'*50)

# Check if key is present
print(dct)
print(1 in dct)
print('1' in dct)
print('-'*50)

# dct Updating the Dictionaries
dct_1 = {1 : 'A', 2 : 'B' , 3 : 'C'}
dct_2 = {1 : 'a', 2 : 'b' , 3 : 'c'}
print(dct_1)
print(dct_2)
dct_1.update(dct_2)
print(dct_1)
print(dct_2)
print('-'*50)
